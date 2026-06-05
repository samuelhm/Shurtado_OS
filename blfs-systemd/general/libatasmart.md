::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libassuan.md "libassuan-3.0.2"){accesskey="p"}

    libassuan-3.0.2

-   [Next](libatomic_ops.md "libatomic_ops-7.10.0"){accesskey="n"}

    libatomic_ops-7.10.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libatasmart}libatasmart-0.19 {#libatasmart-0.19 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libatasmart {#introduction-to-libatasmart .sect2}

The [libatasmart]{.application} package is a disk reporting library. It only supports a subset of the ATA S.M.A.R.T. functionality.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://0pointer.de/public/libatasmart-0.19.tar.xz](https://0pointer.de/public/libatasmart-0.19.tar.xz){.ulink}

-   Download MD5 sum: 53afe2b155c36f658e121fe6def33e77

-   Download size: 248 KB

-   Estimated disk space required: 3 MB

-   Estimated build time: less than 0.1 SBU
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/libatasmart](https://wiki.linuxfromscratch.org/blfs/wiki/libatasmart){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libatasmart {#installation-of-libatasmart .sect2}

Install [libatasmart]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc/libatasmart-0.19 install
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
**Installed Programs:** [skdump and sktest]{.segbody}
:::

::: seg
**Installed Library:** [libatasmart.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libatasmart-0.19]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------
  []{#skdump}[[**skdump**]{.command}]{.term}                 is a utility that reports on the status of the disk
  []{#sktest}[[**sktest**]{.command}]{.term}                 is a utility to issue disk tests
  []{#libatasmart-lib}[`libatasmart.so`{.filename}]{.term}   contains the ATA S.M.A.R.T API functions
  ---------------------------------------------------------- -----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libassuan.md "libassuan-3.0.2"){accesskey="p"}

    libassuan-3.0.2

-   [Next](libatomic_ops.md "libatomic_ops-7.10.0"){accesskey="n"}

    libatomic_ops-7.10.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
