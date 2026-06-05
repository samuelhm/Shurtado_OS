<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](ruby.md "Ruby-4.0.5")

    Ruby-4.0.5

-   [Next](rust-bindgen.md "rust-bindgen-0.72.1")

    rust-bindgen-0.72.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Rustc-1.96.0 {#rustc-1.96.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Rust {#introduction-to-rust}

The <span class="application">Rust</span> programming language is designed to be a safe, concurrent, practical language.

As with many other programming languages, rustc (the rust compiler) needs a binary from which to bootstrap. It will download a stage0 binary at the start of the build, so you must have an internet connection to build this package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although BLFS usually installs in <code class="filename">/usr</code>, when you later upgrade to a newer version of <span class="application">rust</span> the old libraries in <code class="filename">/usr/lib/rustlib</code> will remain, with various hashes in their names, but they will not be usable and will waste space. The editors recommend placing the files in the <code class="filename">/opt</code> directory. In particular, if you have to rebuild this package with a modified configuration (e.g. using the shipped LLVM after building with shared LLVM, perhaps to compile crates for architectures which the BLFS LLVM build does not support), it is possible for the installation to leave a broken <span class="command"><strong>cargo</strong></span> program. If this occurs, you should either remove the existing installation first, or use a different prefix such as /opt/rustc-1.96.0-build2.

If you prefer, you can of course change the prefix to <code class="filename">/usr</code>.
</div>

The current <span class="application">rustbuild</span> build system will use all processors, although it does not scale well and often falls back to just using one core while waiting for a library to compile. However it can be mostly limited to a specified number of processors by a combination of adding the switch <code class="literal">--jobs <N></code> (e.g. '--jobs 4' to limit to 4 processors) on each invocation of <span class="command"><strong>./x.py</strong></span> <span class="emphasis"><em>and</em></span> using the <code class="envar">CARGO_BUILD_JOBS=<N></code> environment variable. At the moment, this is not effective when some of the rustc tests are run.

The current version of rust's num_cpus crate now recognizes that cgroups can be used to restrict which processors it is allowed to use. If your machine lacks DRAM (typically, less than 2 GB DRAM per core), that might be an alternative to taking CPUs offline. Read <a class="xref" href="../introduction/notes-on-building.md#build-in-cgroup" title="Use Linux Control Group to Limit the Resource Usage">the section called “Use Linux Control Group to Limit the Resource Usage”</a> for information on how to use a cgroup.

At the moment, <span class="application">Rust</span> does not provide any guarantees of a stable ABI.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Rustc defaults to building for ALL supported architectures, using a shipped copy of LLVM. In BLFS, the build is only for the X86 architecture. If you are going to develop rust crates, this build may not be sufficient for your purposes.

The build times of this version when repeated on the same machine are often reasonably consistent, but as with all compilations using <span class="command"><strong>rustc</strong></span>, there can be some very slow outliers.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://static.rust-lang.org/dist/rustc-1.96.0-src.tar.xz">https://static.rust-lang.org/dist/rustc-1.96.0-src.tar.xz</a>

-   Download MD5 sum: 75632c07ce29c765b905f26719c3cb3c

-   Download size: 231 MB

-   Estimated disk space required: 10 GB (324 MB installed); add 11 GB if running the tests

-   Estimated build time: 10 SBU (including download time; add 15 SBU for tests, both using parallelism=8)
</div>

### Additional Downloads

<div class="itemizedlist">
-   OpenSSL Rust binding updated to support OpenSSL 4: <a class="ulink" href="https://github.com/lfs-book/rust-openssl/archive/v0.10.78/rust-openssl-0.10.78.tar.gz">https://github.com/lfs-book/rust-openssl/archive/v0.10.78/rust-openssl-0.10.78.tar.gz</a>

-   Download MD5 sum: 8bfcc36cba65c98380f7ac1ec07efdb4
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own <code class="literal">lfs-book</code> namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like <span class="command"><strong>wget</strong></span>). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
</div>

### Rust Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>

#### Recommended

<a class="xref" href="libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a> and <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (built with -D LLVM_LINK_LLVM_DYLIB=ON so that rust can link to the system installed version of LLVM instead of building its shipped version)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If a recommended dependency is not installed, you will need to modify the instructions to build and use a shipped copy in the Rustc source tarball instead. See the Command Explanations section for more details.
</div>

#### Optional

<a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> (used by the test suite if it is present), <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> (required by the test suite), <a class="ulink" href="https://github.com/bytecodealliance/wasmtime/tree/main/cranelift">cranelift</a>, <a class="ulink" href="https://jemalloc.net/">jemalloc</a>, libgccjit (read the Command Explanations in <a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a>), and <a class="ulink" href="https://libgit2.org/">libgit2</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/rust">https://wiki.linuxfromscratch.org/blfs/wiki/rust</a>
</div>

<div class="installation" lang="en">
## Installation of Rust {#installation-of-rust}

To install into the <code class="filename">/opt</code> directory, remove any existing <code class="filename">/opt/rustc</code> symlink and create a new directory (i.e. with a different name if trying a modified build of the same version). As the <code class="systemitem">root</code> user:

```bash
mkdir -pv /opt/rustc-1.96.0      &&
ln -svfn rustc-1.96.0 /opt/rustc
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If multiple versions of <span class="application">Rust</span> are installed in <code class="filename">/opt</code>, changing to another version only requires changing the <code class="filename">/opt/rustc</code> symbolic link and then running <span class="command"><strong>ldconfig</strong></span>.
</div>

Create a suitable <code class="filename">bootstrap.toml</code> file which will configure the build.

```bash
cat << EOF > bootstrap.toml
# See bootstrap.toml.example for more possible options,
# and see src/bootstrap/defaults/bootstrap.dist.toml for a few options
# automatically set when building from a release tarball
# (unfortunately, we have to override many of them).

# Tell x.py that the editors have reviewed the content of this file
# and updated it to follow the major changes of the building system,
# so x.py will not warn users to review that information.
change-id = 154508

[llvm]
# When using the system installed copy of LLVM, prefer the shared libraries
link-shared = true

# If building the shipped LLVM source, only enable the x86 target
# instead of all the targets supported by LLVM.
targets = "X86"

[build]
description = "for BLFS r13.0-790"

# Omit the documentation to save time and space (the default is to build them).
docs = false

# Only install these extended tools. Cargo, clippy, rustdoc, and rustfmt
# are installed by a default rustup installation, and rust-src is needed
# to build the Rust code in Linux kernel (in case you need such a kernel
# feature).
tools = ["cargo", "clippy", "rustdoc", "rustfmt", "src"]

[install]
prefix = "/opt/rustc-1.96.0"
docdir = "share/doc/rustc-1.96.0"

[rust]
channel = "stable"

# Enable the same optimizations as the official upstream build.
lto = "thin"
codegen-units = 1

# Don't build llvm-bitcode-linker which is only useful for the NVPTX
# backend that we don't enable.
llvm-bitcode-linker = false

[target.x86_64-unknown-linux-gnu]
llvm-config = "/usr/bin/llvm-config"

[target.i686-unknown-linux-gnu]
llvm-config = "/usr/bin/llvm-config"
EOF
```

Use a newer version of the OpenSSL Rust binding to allow building this package with OpenSSL 4:

```bash
tar xf ../rust-openssl-0.10.78.tar.gz &&

cat >> src/tools/cargo/Cargo.toml << EOF &&
[patch.crates-io]
openssl = { path = "../../../rust-openssl-0.10.78/openssl" }
openssl-sys = { path = "../../../rust-openssl-0.10.78/openssl-sys" }
EOF

sed -ri src/tools/cargo/Cargo.lock \
    -e '/name = "openssl-sys"/,/^$/{/source|checksum/d;s/0.9.112/0.9.114/}' \
    -e '/name = "openssl"/,/^$/{/source|checksum/d;s/0.10.76/0.10.78/}'     \
    -e '/name = "openssl-macros"/,/^$/{/source|checksum/d}'
```

Compile <span class="application">Rust</span> by running the following commands:

```bash
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export LIBSQLITE3_SYS_USE_PKG_CONFIG=1
./x.py build
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The test suite will generate some messages in the <span class="phrase">systemd journal</span> for traps on invalid opcodes, and for segmentation faults. In themselves these are nothing to worry about, and they are just a way for a test to be terminated.
</div>

To run the tests, issue:

```bash
./x.py test --verbose --no-fail-fast | tee rustc-testlog
```

In the <code class="filename">rustdoc-ui</code> tests, the test named <code class="filename">ice-bug-report-url.rs</code> is known to fail for unknown reason. In the <code class="filename">run-make</code> tests, the test named <code class="filename">remap-path-prefix-std</code> is known to fail because it does not work with LTO enabled, the test named <code class="filename">rustdoc-target-modifiers</code> is known to fail because we've not enabled the AArch64 target in <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a>, and the test named <code class="filename">short-ice</code> is known to fail for unknown reason.

As with all large test suites, some tests might fail on some machines - if the number of additional failures is low, check the log for 'failures:' and review lines above that, particularly the 'stderr:' lines. Any mention of a SIGSEGV or signal 11 in a failing test is a cause for concern.

If you get any <span class="emphasis"><em>other</em></span> failing test which reports an issue number then you should search for that issue. For example, when rustc \>= 1.41.1 was built with a version of sysllvm before 10.0 the test for issue 69225 failed <a class="ulink" href="https://github.com/rust-lang/rust/issues/69225">https://github.com/rust-lang/rust/issues/69225</a> and that should be regarded as a critical failure (they released 1.41.1 because of it). Most other failures will not be critical.

Therefore, you should determine the number of failures. The number of tests which passed and failed can be found by running:

```bash
grep '^test result:' rustc-testlog |
 awk '{sum1 += $4; sum2 += $6} END { print sum1 " passed; " sum2 " failed" }'
```

The other available fields are \$8 for those which were ignored (i.e. skipped), \$10 for 'measured' and \$12 for 'filtered out' but both those last two are probably zero.

Now, as the <code class="systemitem">root</code> user, install the package:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If <span class="command"><strong>sudo</strong></span> or <span class="command"><strong>su</strong></span> is invoked for switching to the <code class="systemitem">root</code> user, ensure <code class="envar">LIBSSH2_SYS_USE_PKG_CONFIG</code> and <code class="envar">LIBSQLITE3_SYS_USE_PKG_CONFIG</code> are correctly passed or the following command may rebuild <span class="command"><strong>cargo</strong></span> with shipped copies of libssh2 and sqlite. For <span class="command"><strong>sudo</strong></span>, use the <code class="option">--preserve-env=LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG</code> option. For <span class="command"><strong>su</strong></span>, do <span class="emphasis"><em>not</em></span> use the <code class="option">-</code> or <code class="option">--login</code> options.
</div>

```bash
./x.py install
```

Still as the <code class="systemitem">root</code> user, fix the installation of the documentation, symlink a <span class="application">Zsh</span> completion file into the correct location, and move a <span class="application">Bash</span> completion file into the location recommended by the <span class="application">Bash</span> completion maintainers:

```bash
rm -fv /opt/rustc-1.96.0/share/doc/rustc-1.96.0/*.old   &&
install -vm644 README.md                                \
               /opt/rustc-1.96.0/share/doc/rustc-1.96.0 &&

install -vdm755 /usr/share/zsh/site-functions      &&
ln -sfv /opt/rustc/share/zsh/site-functions/_cargo \
        /usr/share/zsh/site-functions

mv -v /etc/bash_completion.d/cargo /usr/share/bash-completion/completions
```

Finally, unset the exported environment variables:

```bash
unset LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>ln -svfn rustc-1.96.0 /opt/rustc</strong></span>: if this is not the first use of the <code class="filename">/opt/rustc</code> symlink, overwrite it by force, and use the '-n' flag to avoid getting confusing results from e.g. <span class="command"><strong>ls -l</strong></span>.

<code class="literal">tools = ["cargo", "clippy", "rustdoc", "rustfmt"]</code>: only build the tools from the 'default' profile from the binary command <span class="command"><strong>rustup</strong></span> which are recommended for most users. The other tools are unlikely to be useful unless using (old) code analyzers or editing the standard library.

<code class="literal">channel = "stable"</code>: this ensures that only stable features are used. The default in <code class="filename">bootstrap.toml</code> is to use development features, which are not appropriate for a released version of rust.

<code class="literal">[target.x86_64-unknown-linux-gnu]</code>: the syntax of <code class="filename">bootstrap.toml</code> requires an <code class="literal">llvm-config</code> entry for each target for which system-llvm is to be used. Change the target to <code class="literal">[target.i686-unknown-linux-gnu]</code> if you are building on 32-bit x86. This whole section should be omitted if you wish to build against the shipped llvm, but the resulting build will be larger and take longer.

<span class="command"><strong>export LIBSSH2_SYS_USE_PKG_CONFIG=1</strong></span>: Allow <span class="command"><strong>cargo</strong></span> to link to the system installed copy of libssh2. Omit this command if you've not installed <a class="xref" href="libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>.

<span class="command"><strong>export LIBSQLITE3_SYS_USE_PKG_CONFIG=1</strong></span>: Allow <span class="command"><strong>cargo</strong></span> to link to the system installed copy of sqlite.

*`--verbose`*: this switch can sometimes provide more information about a test which fails.

*`--no-fail-fast`*: this switch ensures that the test suite will not stop at the first error.
</div>

<div class="configuration" lang="en">
## Configuring Rust {#configuring-rust}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If you installed <span class="application">rustc</span> in <code class="filename">/opt</code>, you need to update the following configuration files so that <span class="application">rustc</span> is correctly found by other packages and system processes.

As the <code class="systemitem">root</code> user, create the <code class="filename">/etc/profile.d/rustc.sh</code> file:

```bash
cat > /etc/profile.d/rustc.sh << "EOF"
# Begin /etc/profile.d/rustc.sh

pathprepend /opt/rustc/bin           PATH

# End /etc/profile.d/rustc.sh
EOF
```

Immediately after installation, update the current PATH for your current shell as a normal user:

```bash
source /etc/profile.d/rustc.sh
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cargo-clippy, cargo-fmt, cargo, clippy-driver, rust-gdb, rust-gdbgui, rust-lldb, rustc, rustdoc, and rustfmt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">librustc_driver-\<16-byte-hash\>.so and libstd-\<16-byte-hash\>.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\~/.cargo, /opt/rustc, symbolic link to /opt/rustc-1.96.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cargo-clippy"></a><span class="command"><span class="term"><strong>cargo-clippy</strong></span></span>      performs lint checks on a cargo package
  <a id="cargo-fmt"></a><span class="command"><span class="term"><strong>cargo-fmt</strong></span></span>            formats all bin and lib files of the current crate using rustfmt
  <a id="cargo"></a><span class="command"><span class="term"><strong>cargo</strong></span></span>                    is the Package Manager for Rust
  <a id="clippy-driver"></a><span class="command"><span class="term"><strong>clippy-driver</strong></span></span>    performs lint checks on Rust code
  <a id="rust-gdb"></a><span class="command"><span class="term"><strong>rust-gdb</strong></span></span>              is a wrapper script for gdb which pulls in the Python pretty-printing modules installed in <code class="filename">/opt/rustc-1.96.0/lib/rustlib/etc</code>
  <a id="rust-gdbgui"></a><span class="command"><span class="term"><strong>rust-gdbgui</strong></span></span>        is a wrapper script for a graphical front end to gdb that runs in a browser
  <a id="rust-lldb"></a><span class="command"><span class="term"><strong>rust-lldb</strong></span></span>            is a wrapper script for LLDB (the LLVM debugger) which pulls in the Python pretty-printing modules
  <a id="rustc"></a><span class="command"><span class="term"><strong>rustc</strong></span></span>                    is the rust compiler
  <a id="rustdoc"></a><span class="command"><span class="term"><strong>rustdoc</strong></span></span>                generates documentation from rust source code
  <a id="rustfmt"></a><span class="command"><span class="term"><strong>rustfmt</strong></span></span>                formats rust code
  <a id="libstd"></a><span class="term"><code class="filename">libstd-<16-byte-hash>.so</code></span>   is the Rust Standard Library, the foundation of portable Rust software
  ----------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ruby.md "Ruby-4.0.5")

    Ruby-4.0.5

-   [Next](rust-bindgen.md "rust-bindgen-0.72.1")

    rust-bindgen-0.72.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
