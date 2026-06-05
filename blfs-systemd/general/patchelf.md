::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](nasm.md "NASM-3.01"){accesskey="p"}

    NASM-3.01

-   [Next](perl-modules.md "Perl Modules"){accesskey="n"}

    Perl Modules

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#patchelf}Patchelf-0.18.0 {#patchelf-0.18.0 .sect1}

:::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Patchelf {#introduction-to-patchelf .sect2}

The [patchelf]{.application} package contains a small utility to modify the dynamic linker and RPATH of ELF executables.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/NixOS/patchelf/releases/download/0.18.0/patchelf-0.18.0.tar.gz](https://github.com/NixOS/patchelf/releases/download/0.18.0/patchelf-0.18.0.tar.gz){.ulink}

-   Download MD5 sum: b02099b0d63f06b3fe370f4edfc0c085

-   Download size: 448 KB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of Patchelf {#installation-of-patchelf .sect2}

Install [patchelf]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr \
            --docdir=/usr/share/doc/patchelf-0.18.0 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Program:** [patchelf]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#patchelf-prog}[[**patchelf**]{.command}]{.term}   is a simple utility for modifying existing ELF executables and libraries; it can change the dynamic loader ("ELF interpreter") of executables and change the RPATH of executables and libraries.
  ----------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::: navfooter
-   [Prev](nasm.md "NASM-3.01"){accesskey="p"}

    NASM-3.01

-   [Next](perl-modules.md "Perl Modules"){accesskey="n"}

    Perl Modules

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
