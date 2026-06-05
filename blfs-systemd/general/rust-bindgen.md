::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](rust.md "Rustc-1.96.0"){accesskey="p"}

    Rustc-1.96.0

-   [Next](scons.md "SCons-4.10.1"){accesskey="n"}

    SCons-4.10.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rust-bindgen}rust-bindgen-0.72.1 {#rust-bindgen-0.72.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to rust-bindgen {#introduction-to-rust-bindgen .sect2}

The [rust-bindgen]{.application} package contains a utility that generates Rust bindings from C/C++ headers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rust-lang/rust-bindgen/archive/refs/tags/v0.72.1/rust-bindgen-0.72.1.tar.gz](https://github.com/rust-lang/rust-bindgen/archive/refs/tags/v0.72.1/rust-bindgen-0.72.1.tar.gz){.ulink}

-   Download MD5 sum: 49be3303557d072ce4c6987b2989be3c

-   Download size: 2.2 MB

-   Estimated disk space required: 219 MB

-   Estimated build time: 0.4 SBU (with parallelism=8)
:::

### rust-bindgen Dependencies

#### Required

[rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref} and [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref} (with Clang, runtime)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

::: {.installation lang="en"}
## Installation of rust-bindgen {#installation-of-rust-bindgen .sect2}

Install [rust-bindgen]{.application} by running the following commands:

``` userinput
cargo build --release
```

To test the results, issue: [**cargo test --release**]{.command}. Four tests, `header_issue_544_stylo_creduce_2_hpp`{.filename}, `header_constified_enum_module_overflow_hpp`{.filename}, `header_typedef_pointer_overlap_h`{.filename}, and `header_nsbasehashtable_hpp`{.filename}, are known to fail.

Now, as the `root`{.systemitem} user:

``` root
install -v -m755 target/release/bindgen /usr/bin
```

Still as the `root`{.systemitem} user, install the Bash and Zsh completion support files:

``` root
bindgen --generate-shell-completions bash \
    > /usr/share/bash-completion/completions/bindgen
bindgen --generate-shell-completions zsh  \
    > /usr/share/zsh/site-functions/_bindgen
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bindgen]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  []{#bindgen}[[**bindgen**]{.command}]{.term}   generates bindings for Rust from C/C++ headers
  ---------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](rust.md "Rustc-1.96.0"){accesskey="p"}

    Rustc-1.96.0

-   [Next](scons.md "SCons-4.10.1"){accesskey="n"}

    SCons-4.10.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
