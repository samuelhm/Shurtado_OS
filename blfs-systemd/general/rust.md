::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](ruby.md "Ruby-4.0.5"){accesskey="p"}

    Ruby-4.0.5

-   [Next](rust-bindgen.md "rust-bindgen-0.72.1"){accesskey="n"}

    rust-bindgen-0.72.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rust}Rustc-1.96.0 {#rustc-1.96.0 .sect1}

:::::::::::::::::::::::::: {.sect1 lang="en"}
::::::::::: {.package lang="en"}
## Introduction to Rust {#introduction-to-rust .sect2}

The [Rust]{.application} programming language is designed to be a safe, concurrent, practical language.

As with many other programming languages, rustc (the rust compiler) needs a binary from which to bootstrap. It will download a stage0 binary at the start of the build, so you must have an internet connection to build this package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although BLFS usually installs in `/usr`{.filename}, when you later upgrade to a newer version of [rust]{.application} the old libraries in `/usr/lib/rustlib`{.filename} will remain, with various hashes in their names, but they will not be usable and will waste space. The editors recommend placing the files in the `/opt`{.filename} directory. In particular, if you have to rebuild this package with a modified configuration (e.g. using the shipped LLVM after building with shared LLVM, perhaps to compile crates for architectures which the BLFS LLVM build does not support), it is possible for the installation to leave a broken [**cargo**]{.command} program. If this occurs, you should either remove the existing installation first, or use a different prefix such as /opt/rustc-1.96.0-build2.

If you prefer, you can of course change the prefix to `/usr`{.filename}.
:::

The current [rustbuild]{.application} build system will use all processors, although it does not scale well and often falls back to just using one core while waiting for a library to compile. However it can be mostly limited to a specified number of processors by a combination of adding the switch `--jobs <N>`{.literal} (e.g. '--jobs 4' to limit to 4 processors) on each invocation of [**./x.py**]{.command} [*and*]{.emphasis} using the `CARGO_BUILD_JOBS=<N>`{.envar} environment variable. At the moment, this is not effective when some of the rustc tests are run.

The current version of rust's num_cpus crate now recognizes that cgroups can be used to restrict which processors it is allowed to use. If your machine lacks DRAM (typically, less than 2 GB DRAM per core), that might be an alternative to taking CPUs offline. Read [the section called “Use Linux Control Group to Limit the Resource Usage”](../introduction/notes-on-building.md#build-in-cgroup "Use Linux Control Group to Limit the Resource Usage"){.xref} for information on how to use a cgroup.

At the moment, [Rust]{.application} does not provide any guarantees of a stable ABI.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Rustc defaults to building for ALL supported architectures, using a shipped copy of LLVM. In BLFS, the build is only for the X86 architecture. If you are going to develop rust crates, this build may not be sufficient for your purposes.

The build times of this version when repeated on the same machine are often reasonably consistent, but as with all compilations using [**rustc**]{.command}, there can be some very slow outliers.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://static.rust-lang.org/dist/rustc-1.96.0-src.tar.xz](https://static.rust-lang.org/dist/rustc-1.96.0-src.tar.xz){.ulink}

-   Download MD5 sum: 75632c07ce29c765b905f26719c3cb3c

-   Download size: 231 MB

-   Estimated disk space required: 10 GB (324 MB installed); add 11 GB if running the tests

-   Estimated build time: 10 SBU (including download time; add 15 SBU for tests, both using parallelism=8)
:::

### Additional Downloads

::: itemizedlist
-   OpenSSL Rust binding updated to support OpenSSL 4: [https://github.com/lfs-book/rust-openssl/archive/v0.10.78/rust-openssl-0.10.78.tar.gz](https://github.com/lfs-book/rust-openssl/archive/v0.10.78/rust-openssl-0.10.78.tar.gz){.ulink}

-   Download MD5 sum: 8bfcc36cba65c98380f7ac1ec07efdb4
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own `lfs-book`{.literal} namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like [**wget**]{.command}). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
:::

### Rust Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} and [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::

#### Recommended

[libssh2-1.11.1](libssh2.md "libssh2-1.11.1"){.xref} and [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref} (built with -D LLVM_LINK_LLVM_DYLIB=ON so that rust can link to the system installed version of LLVM instead of building its shipped version)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If a recommended dependency is not installed, you will need to modify the instructions to build and use a shipped copy in the Rustc source tarball instead. See the Command Explanations section for more details.
:::

#### Optional

[GDB-17.2](gdb.md "GDB-17.2"){.xref} (used by the test suite if it is present), [git-2.54.0](git.md "Git-2.54.0"){.xref} (required by the test suite), [cranelift](https://github.com/bytecodealliance/wasmtime/tree/main/cranelift){.ulink}, [jemalloc](https://jemalloc.net/){.ulink}, libgccjit (read the Command Explanations in [GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref}), and [libgit2](https://libgit2.org/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/rust](https://wiki.linuxfromscratch.org/blfs/wiki/rust){.ulink}
:::::::::::

:::::: {.installation lang="en"}
## Installation of Rust {#installation-of-rust .sect2}

To install into the `/opt`{.filename} directory, remove any existing `/opt/rustc`{.filename} symlink and create a new directory (i.e. with a different name if trying a modified build of the same version). As the `root`{.systemitem} user:

``` root
mkdir -pv /opt/rustc-1.96.0      &&
ln -svfn rustc-1.96.0 /opt/rustc
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If multiple versions of [Rust]{.application} are installed in `/opt`{.filename}, changing to another version only requires changing the `/opt/rustc`{.filename} symbolic link and then running [**ldconfig**]{.command}.
:::

Create a suitable `bootstrap.toml`{.filename} file which will configure the build.

``` userinput
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

``` userinput
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

Compile [Rust]{.application} by running the following commands:

``` userinput
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export LIBSQLITE3_SYS_USE_PKG_CONFIG=1
./x.py build
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The test suite will generate some messages in the [systemd journal]{.phrase} for traps on invalid opcodes, and for segmentation faults. In themselves these are nothing to worry about, and they are just a way for a test to be terminated.
:::

To run the tests, issue:

``` userinput
./x.py test --verbose --no-fail-fast | tee rustc-testlog
```

In the `rustdoc-ui`{.filename} tests, the test named `ice-bug-report-url.rs`{.filename} is known to fail for unknown reason. In the `run-make`{.filename} tests, the test named `remap-path-prefix-std`{.filename} is known to fail because it does not work with LTO enabled, the test named `rustdoc-target-modifiers`{.filename} is known to fail because we've not enabled the AArch64 target in [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref}, and the test named `short-ice`{.filename} is known to fail for unknown reason.

As with all large test suites, some tests might fail on some machines - if the number of additional failures is low, check the log for 'failures:' and review lines above that, particularly the 'stderr:' lines. Any mention of a SIGSEGV or signal 11 in a failing test is a cause for concern.

If you get any [*other*]{.emphasis} failing test which reports an issue number then you should search for that issue. For example, when rustc \>= 1.41.1 was built with a version of sysllvm before 10.0 the test for issue 69225 failed [https://github.com/rust-lang/rust/issues/69225](https://github.com/rust-lang/rust/issues/69225){.ulink} and that should be regarded as a critical failure (they released 1.41.1 because of it). Most other failures will not be critical.

Therefore, you should determine the number of failures. The number of tests which passed and failed can be found by running:

``` userinput
grep '^test result:' rustc-testlog |
 awk '{sum1 += $4; sum2 += $6} END { print sum1 " passed; " sum2 " failed" }'
```

The other available fields are \$8 for those which were ignored (i.e. skipped), \$10 for 'measured' and \$12 for 'filtered out' but both those last two are probably zero.

Now, as the `root`{.systemitem} user, install the package:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If [**sudo**]{.command} or [**su**]{.command} is invoked for switching to the `root`{.systemitem} user, ensure `LIBSSH2_SYS_USE_PKG_CONFIG`{.envar} and `LIBSQLITE3_SYS_USE_PKG_CONFIG`{.envar} are correctly passed or the following command may rebuild [**cargo**]{.command} with shipped copies of libssh2 and sqlite. For [**sudo**]{.command}, use the `--preserve-env=LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG`{.option} option. For [**su**]{.command}, do [*not*]{.emphasis} use the `-`{.option} or `--login`{.option} options.
:::

``` root
./x.py install
```

Still as the `root`{.systemitem} user, fix the installation of the documentation, symlink a [Zsh]{.application} completion file into the correct location, and move a [Bash]{.application} completion file into the location recommended by the [Bash]{.application} completion maintainers:

``` root
rm -fv /opt/rustc-1.96.0/share/doc/rustc-1.96.0/*.old   &&
install -vm644 README.md                                \
               /opt/rustc-1.96.0/share/doc/rustc-1.96.0 &&

install -vdm755 /usr/share/zsh/site-functions      &&
ln -sfv /opt/rustc/share/zsh/site-functions/_cargo \
        /usr/share/zsh/site-functions

mv -v /etc/bash_completion.d/cargo /usr/share/bash-completion/completions
```

Finally, unset the exported environment variables:

``` userinput
unset LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG
```
::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**ln -svfn rustc-1.96.0 /opt/rustc**]{.command}: if this is not the first use of the `/opt/rustc`{.filename} symlink, overwrite it by force, and use the '-n' flag to avoid getting confusing results from e.g. [**ls -l**]{.command}.

`tools = ["cargo", "clippy", "rustdoc", "rustfmt"]`{.literal}: only build the tools from the 'default' profile from the binary command [**rustup**]{.command} which are recommended for most users. The other tools are unlikely to be useful unless using (old) code analyzers or editing the standard library.

`channel = "stable"`{.literal}: this ensures that only stable features are used. The default in `bootstrap.toml`{.filename} is to use development features, which are not appropriate for a released version of rust.

`[target.x86_64-unknown-linux-gnu]`{.literal}: the syntax of `bootstrap.toml`{.filename} requires an `llvm-config`{.literal} entry for each target for which system-llvm is to be used. Change the target to `[target.i686-unknown-linux-gnu]`{.literal} if you are building on 32-bit x86. This whole section should be omitted if you wish to build against the shipped llvm, but the resulting build will be larger and take longer.

[**export LIBSSH2_SYS_USE_PKG_CONFIG=1**]{.command}: Allow [**cargo**]{.command} to link to the system installed copy of libssh2. Omit this command if you've not installed [libssh2-1.11.1](libssh2.md "libssh2-1.11.1"){.xref}.

[**export LIBSQLITE3_SYS_USE_PKG_CONFIG=1**]{.command}: Allow [**cargo**]{.command} to link to the system installed copy of sqlite.

*`--verbose`*: this switch can sometimes provide more information about a test which fails.

*`--no-fail-fast`*: this switch ensures that the test suite will not stop at the first error.
:::

:::: {.configuration lang="en"}
## Configuring Rust {#configuring-rust .sect2}

::: {.sect3 lang="en"}
### []{#rustc-config}Configuration Information {#configuration-information .sect3}

If you installed [rustc]{.application} in `/opt`{.filename}, you need to update the following configuration files so that [rustc]{.application} is correctly found by other packages and system processes.

As the `root`{.systemitem} user, create the `/etc/profile.d/rustc.sh`{.filename} file:

``` root
cat > /etc/profile.d/rustc.sh << "EOF"
# Begin /etc/profile.d/rustc.sh

pathprepend /opt/rustc/bin           PATH

# End /etc/profile.d/rustc.sh
EOF
```

Immediately after installation, update the current PATH for your current shell as a normal user:

``` userinput
source /etc/profile.d/rustc.sh
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cargo-clippy, cargo-fmt, cargo, clippy-driver, rust-gdb, rust-gdbgui, rust-lldb, rustc, rustdoc, and rustfmt]{.segbody}
:::

::: seg
**Installed Libraries:** [librustc_driver-\<16-byte-hash\>.so and libstd-\<16-byte-hash\>.so]{.segbody}
:::

::: seg
**Installed Directories:** [\~/.cargo, /opt/rustc, symbolic link to /opt/rustc-1.96.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  []{#cargo-clippy}[[**cargo-clippy**]{.command}]{.term}      performs lint checks on a cargo package
  []{#cargo-fmt}[[**cargo-fmt**]{.command}]{.term}            formats all bin and lib files of the current crate using rustfmt
  []{#cargo}[[**cargo**]{.command}]{.term}                    is the Package Manager for Rust
  []{#clippy-driver}[[**clippy-driver**]{.command}]{.term}    performs lint checks on Rust code
  []{#rust-gdb}[[**rust-gdb**]{.command}]{.term}              is a wrapper script for gdb which pulls in the Python pretty-printing modules installed in `/opt/rustc-1.96.0/lib/rustlib/etc`{.filename}
  []{#rust-gdbgui}[[**rust-gdbgui**]{.command}]{.term}        is a wrapper script for a graphical front end to gdb that runs in a browser
  []{#rust-lldb}[[**rust-lldb**]{.command}]{.term}            is a wrapper script for LLDB (the LLVM debugger) which pulls in the Python pretty-printing modules
  []{#rustc}[[**rustc**]{.command}]{.term}                    is the rust compiler
  []{#rustdoc}[[**rustdoc**]{.command}]{.term}                generates documentation from rust source code
  []{#rustfmt}[[**rustfmt**]{.command}]{.term}                formats rust code
  []{#libstd}[`libstd-<16-byte-hash>.so`{.filename}]{.term}   is the Rust Standard Library, the foundation of portable Rust software
  ----------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::::

::: navfooter
-   [Prev](ruby.md "Ruby-4.0.5"){accesskey="p"}

    Ruby-4.0.5

-   [Next](rust-bindgen.md "rust-bindgen-0.72.1"){accesskey="n"}

    rust-bindgen-0.72.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
