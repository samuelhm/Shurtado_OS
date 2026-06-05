---
name: blfs-package-install
description: Use when installing any package from source in the BLFS/LFS VM. Triggers on requests like "install X", "compile X", "build X", or "add package X". Ensures BLFS docs are consulted, configure flags are proper, shared-only libs, cleanup, and dependency-first approach.
---

# BLFS Package Installation from Source

This skill governs how every package from source is installed in the LFS/BLFS
VM at `ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost`.
All work happens live on the VM via SSH — we never mount the disk.

---

## Installation Workflow (MANDATORY ORDER)

### 1. Read BLFS/LFS Documentation First

If the package exists in `docs/blfs/` or `docs/lfs/`, read its `.md` file.
Search with:

```
glob docs/blfs/**/<package-name>.md
glob docs/lfs/**/<package-name>.md
```

The BLFS/LFS book is the single source of truth for configure flags,
dependencies, patches, and post-install steps. **Never guess a flag, URL, or
version.**

If the package has dependencies not yet installed, read those pages too to
understand the full chain.

#### When the package IS documented in BLFS/LFS

The book's instructions are canonical — use them directly. No need to
download and inspect the build system interactively before generating a
script. The book has already verified the flags.

#### When the package is NOT documented in BLFS/LFS

The build system MUST be inspected interactively **before** writing any
script. Download the tarball in the VM via SSH, extract it, and run the
appropriate build system check:

| Build System | Command |
|---|---|
| **Autotools** | `./configure --help` |
| **CMake** | `cmake -LH ..` or read `CMakeLists.txt` |
| **Meson** | `meson setup --help` and check `meson_options.txt` |
| **Python (setup.py)** | `python3 setup.py --help` |
| **Python (pip/build)** | `pip3 install --help` |
| **Cargo (Rust)** | `cargo build --help` |
| **Make-only** | Read `Makefile` or `GNUmakefile` |

Only after checking the available flags and dependencies should the
installation script be written. This ensures we know all available options and
don't miss important features.

### 2. Check the Build System (Non-BLFS packages only)

Same as above — this step is **only required** for packages not covered by
the BLFS/LFS book.

### 3. Determine Dependencies

#### If a dependency adds critical functionality
Prefer installing the dependency rather than disabling the feature. Examples:
- **Linux-PAM** for sshd: install PAM first, don't skip `--with-pam`
- **cURL** for git: install curl first, don't skip HTTPS support
- **OpenSSL** for everything TLS: always prefer `--with-openssl`

#### If a dependency is truly optional or cosmetic
Skip it to keep the system lean. Examples: GUI frontends for CLI tools,
documentation generators, test-only deps (unless we need tests).

#### If a dependency creates a circular dependency
Find a bootstrapping path. Use `--without-<dep>` only during bootstrap, then
rebuild with full support after the dependency is installed.

### 4. Standard Configure Flags

Always include these unless the BLFS book explicitly says otherwise:

```
--prefix=/usr
--disable-static
```

- `--prefix=/usr` — consistent with LFS convention
- `--disable-static` — only `.so` shared libraries (no `.la`, no `.a`)

For CMake:
```
-DCMAKE_INSTALL_PREFIX=/usr
-DBUILD_SHARED_LIBS=ON
-DBUILD_STATIC_LIBS=OFF
-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON  (if applicable)
```

For Meson:
```
--prefix=/usr
--buildtype=release
-Ddefault_library=shared
```

### 5. Build

Use all available cores:
```bash
make -j$(nproc)
```
or:
```bash
ninja -j$(nproc)
```

### 6. Install

Run `make install` (or `ninja install`). Verify the binaries exist:

```bash
command -v <binary> && <binary> --version | head -1
```

### 7. Cleanup

**After a successful install**, delete the source tree to reclaim disk space:

```bash
cd /sources && rm -rf <extracted-dir>
```

Keep the tarball in `/sources/` for reference. Only delete the extracted directory.

---

## Version Selection

- **Prefer the BLFS book's version** unless there's a compelling reason
- **If BLFS version is unavailable** (404, mirror gone), try the next newer
  stable release — patch releases (x.y.Z) are usually safe
- **Avoid deprecated/obsolete packages** — check the BLFS book for "this
  package is no longer maintained" notes
- **If BLFS doesn't cover the package**, prefer the latest stable release
  from the upstream official site

---

## Error Recovery

If `./configure` fails:
1. Read the error carefully — it usually tells you exactly what's missing
2. Check if a `--without-<dep>` flag exists and whether that dep is worth installing
3. If the dep is important, install it first, then retry

If `make` fails:
1. Try `make -j1` to rule out parallel build races
2. Check the BLFS book for known patches or workarounds
3. Search for the error in the BLFS book's package page

If `make install` fails:
1. Check permissions (must be `root`)
2. Check for stale files from a previous installation

---

## Examples of Correct Installations

### Good: curl with OpenSSL (full TLS support)
```bash
./configure --prefix=/usr --disable-static --with-openssl --with-ca-path=/etc/ssl/certs
make -j$(nproc) && make install
cd /sources && rm -rf curl-*
```
- Read BLFS book first ✓
- Important dep (OpenSSL) included ✓
- Static libs disabled ✓
- Cleanup after install ✓

### Bad: curl without SSL (broken HTTPS)
```bash
./configure --prefix=/usr --disable-static --without-ssl
```
- Missing critical TLS support — curl becomes useless for HTTPS
- Should install OpenSSL/GnuTLS first

### Good: git with curl (HTTPS support)
- Install curl first (dependency)
- Then: `./configure --prefix=/usr --with-gitconfig=/etc/gitconfig --with-python=python3 --with-libpcre2`
- Git automatically detects curl

### Bad: skipping dependency check entirely
```bash
./configure --prefix=/usr && make
```
- Didn't check BLFS book
- Didn't check `./configure --help`
- Might miss critical features or fail silently

---

## SSH Command Template

All commands execute on the VM via SSH. For a single quick command:

```bash
ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost '<command>'
```

For multi-step builds, chain commands with `&&`:

```bash
ssh ... root@localhost 'cd /sources && tar xf pkg.tar.xz && cd pkg && ./configure ... && make -j$(nproc) && make install && rm -rf /sources/pkg'
```

---

## Quick Checklist

### If package IS in BLFS/LFS

Before running ANY build command, verify:
- [ ] Read the BLFS/LFS `.md` file for this package
- [ ] Read dependency `.md` files (if any missing)
- [ ] Using `--prefix=/usr` and `--disable-static`
- [ ] Not disabling important functionality to skip deps
- [ ] Version matches the book (or newer stable if unavailable)
- [ ] Will cleanup source tree after successful install

### If package is NOT in BLFS/LFS

Before writing a script, you MUST first:
- [ ] Download the tarball in the VM via SSH
- [ ] Extract and run `./configure --help` (or equivalent)
- [ ] Identify all available flags, dependencies, and features
- [ ] Then write the script using the discovered flags
- [ ] Cleanup the extracted test directory
