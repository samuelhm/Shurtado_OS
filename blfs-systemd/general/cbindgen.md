::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cargo-c.md "cargo-c-0.10.23"){accesskey="p"}

    cargo-c-0.10.23

-   [Next](clisp.md "Clisp-2.49.95"){accesskey="n"}

    Clisp-2.49.95

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cbindgen}Cbindgen-0.29.3 {#cbindgen-0.29.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Cbindgen {#introduction-to-cbindgen .sect2}

[Cbindgen]{.application} can be used to generate C bindings for [Rust]{.application} code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mozilla/cbindgen/archive/v0.29.3/cbindgen-0.29.3.tar.gz](https://github.com/mozilla/cbindgen/archive/v0.29.3/cbindgen-0.29.3.tar.gz){.ulink}

-   Download MD5 sum: 28cd49d81e2cfb20e47efd31040fbc2f

-   Download size: 246 KB

-   Estimated disk space required: 123 MB (add 553 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.2 SBU for tests), both on a 4-core machine
:::

### cbindgen Dependencies

#### Required

[rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

::: {.installation lang="en"}
## Installation of cbindgen {#installation-of-cbindgen .sect2}

Install [cbindgen]{.application} by running the following commands:

``` userinput
cargo build --release
```

To test the results, issue: [**cargo test --release**]{.command}. Three tests in `profile.rs`{.filename} are known to fail because they expect some Rust unstable features disabled in the BLFS [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref} configuration.

Now, as the `root`{.systemitem} user:

``` root
install -Dm755 target/release/cbindgen /usr/bin/
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [cbindgen]{.segbody}
:::

::: seg
**Installed Library:** [none]{.segbody}
:::

::: seg
**Installed Directory:** [none]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------
  []{#cbindgen-prog}[[**cbindgen**]{.command}]{.term}   generates C bindings for [Rust]{.application} code
  ----------------------------------------------------- ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](cargo-c.md "cargo-c-0.10.23"){accesskey="p"}

    cargo-c-0.10.23

-   [Next](clisp.md "Clisp-2.49.95"){accesskey="n"}

    Clisp-2.49.95

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
