::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libidn2.md "libidn2-2.3.8"){accesskey="p"}

    libidn2-2.3.8

-   [Next](liblinear.md "liblinear-250"){accesskey="n"}

    liblinear-250

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libksba}libksba-1.8.0 {#libksba-1.8.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libksba {#introduction-to-libksba .sect2}

The [Libksba]{.application} package contains a library used to make X.509 certificates as well as making the CMS (Cryptographic Message Syntax) easily accessible by other applications. Both specifications are building blocks of S/MIME and TLS. The library does not rely on another cryptographic library but provides hooks for easy integration with [Libgcrypt]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.8.0.tar.bz2](https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.8.0.tar.bz2){.ulink}

-   Download MD5 sum: 182951961170c12f6569454717a1383a

-   Download size: 708 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Libksba Dependencies

#### Required

[libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}

#### Optional

[Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Libksba {#installation-of-libksba .sect2}

Install [Libksba]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libksba.so]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------
  []{#libksba-lib}[`libksba.so`{.filename}]{.term}   contains the cryptographic API functions
  -------------------------------------------------- ------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libidn2.md "libidn2-2.3.8"){accesskey="p"}

    libidn2-2.3.8

-   [Next](liblinear.md "liblinear-250"){accesskey="n"}

    liblinear-250

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
