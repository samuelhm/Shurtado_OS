::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](prog.md "Programming"){accesskey="p"}

    Programming

-   [Next](cbindgen.md "Cbindgen-0.29.3"){accesskey="n"}

    Cbindgen-0.29.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cargo-c}cargo-c-0.10.23 {#cargo-c-0.10.23 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to cargo-c {#introduction-to-cargo-c .sect2}

The [cargo-c]{.application} package creates a cargo subcommand to build and install C-ABI compatible dynamic and static libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lu-zero/cargo-c/archive/v0.10.23/cargo-c-0.10.23.tar.gz](https://github.com/lu-zero/cargo-c/archive/v0.10.23/cargo-c-0.10.23.tar.gz){.ulink}

-   Download MD5 sum: e9af606a4a2d0c60c9f825250e1bc013

-   Download size: 40 KB

-   Estimated disk space required: 1.4 GB (with tests)

-   Estimated build time: 0.7 SBU (add 5.2 SBU for tests)
:::

### cargo-c Dependencies

#### Required

[rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}

#### Recommended

[libssh2-1.11.1](libssh2.md "libssh2-1.11.1"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

:::: {.installation lang="en"}
## Installation of cargo-c {#installation-of-cargo-c .sect2}

First, download a file to ensure that [**cargo**]{.command} uses the dependency versions specified by the upstream developers when this cargo-c version (0.10.23) was released. Without this, the latest versions of the dependencies would be used and they might cause breakages:

``` userinput
curl -fLO https://github.com/lu-zero/cargo-c/releases/download/v0.10.23/Cargo.lock
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Normally we would put such a download into an [“[Additional Downloads]{.quote}”]{.quote} section. But in this case we cannot tell the package name and version from the file name `Cargo.lock`{.filename}, so it's better not to put the ambiguously-named file outside the `cargo-c-0.10.23`{.filename} directory. We use [**curl**]{.command} here because the [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} package should have been installed as a required dependency of [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}.

The md5sum of the file should be `9c2c93fe7da6d1d10bc50bbd95a49d1d`{.literal}.
:::

Install [cargo-c]{.application} by running the following commands:

``` userinput
export LIBSSH2_SYS_USE_PKG_CONFIG=1    &&
export LIBSQLITE3_SYS_USE_PKG_CONFIG=1 &&

cargo build --release
```

To test the results, issue: [**cargo test --release**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
install -vm755 target/release/cargo-{capi,cbuild,cinstall,ctest} /usr/bin/
```

Finally, unset the exported environment variables:

``` userinput
unset LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export LIBSSH2_SYS_USE_PKG_CONFIG=1**]{.command}: Allow [**cargo**]{.command} to link to system libssh2. Omit this command if you've not installed [libssh2-1.11.1](libssh2.md "libssh2-1.11.1"){.xref}.

[**export LIBSQLITE3_SYS_USE_PKG_CONFIG=1**]{.command}: Allow [**cargo**]{.command} to link to system sqlite.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cargo-capi, cargo-cbuild, cargo-cinstall, and cargo-ctest]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](prog.md "Programming"){accesskey="p"}

    Programming

-   [Next](cbindgen.md "Cbindgen-0.29.3"){accesskey="n"}

    Cbindgen-0.29.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
