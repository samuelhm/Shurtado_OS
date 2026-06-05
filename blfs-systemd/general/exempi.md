::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](enchant.md "enchant-2.8.16"){accesskey="p"}

    enchant-2.8.16

-   [Next](fast_float.md "fast_float-8.2.6"){accesskey="n"}

    fast_float-8.2.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#exempi}Exempi-2.6.6 {#exempi-2.6.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Exempi {#introduction-to-exempi .sect2}

[Exempi]{.application} is an implementation of XMP (Adobe's Extensible Metadata Platform).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://libopenraw.freedesktop.org/download/exempi-2.6.6.tar.xz](https://libopenraw.freedesktop.org/download/exempi-2.6.6.tar.xz){.ulink}

-   Download MD5 sum: f955e63dbd7b91c016f802c678e0e773

-   Download size: 2.7 MB

-   Estimated disk space required: 319 MB (add 245 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests; both using parallelism=4)
:::

### Exempi Dependencies

#### Required

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref}

#### Optional

[Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Exempi {#installation-of-exempi .sect2}

If you intend to run the regression tests, first remove a test that depends on a proprietary Adobe SDK:

``` userinput
sed -i -r '/^\s?testadobesdk/d' exempi/Makefile.am &&
autoreconf -fiv
```

Install [Exempi]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [exempi]{.segbody}
:::

::: seg
**Installed Library:** [libexempi.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/exempi-2.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  []{#exempi-prog}[[**exempi**]{.command}]{.term}    is a command line tool to manipulate XMP metadata
  []{#libexempi}[`libexempi.so`{.filename}]{.term}   is a library used to parse XMP metadata
  -------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](enchant.md "enchant-2.8.16"){accesskey="p"}

    enchant-2.8.16

-   [Next](fast_float.md "fast_float-8.2.6"){accesskey="n"}

    fast_float-8.2.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
