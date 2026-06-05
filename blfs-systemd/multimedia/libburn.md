::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](dvd-rw-tools.md "dvd+rw-tools-7.1"){accesskey="p"}

    dvd+rw-tools-7.1

-   [Next](libisoburn.md "libisoburn-1.5.8.pl02"){accesskey="n"}

    libisoburn-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libburn}libburn-1.5.8 {#libburn-1.5.8 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libburn {#introduction-to-libburn .sect2}

[libburn]{.application} is a library for writing preformatted data onto optical media: CD, DVD and BD (Blu-Ray).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://files.libburnia-project.org/releases/libburn-1.5.8.tar.gz](https://files.libburnia-project.org/releases/libburn-1.5.8.tar.gz){.ulink}

-   Download MD5 sum: 4c8c786e88eb3e9f7c1d0ddc4d4a39e7

-   Download size: 984 KB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.1 SBU
:::

### libburn Dependencies

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to generate HTML documentation)
:::::

::: {.installation lang="en"}
## Installation of libburn {#installation-of-libburn .sect2}

Install [libburn]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you have installed [Doxygen]{.application} and wish to generate the HTML documentation, issue the following command:

``` userinput
doxygen doc/doxygen.conf
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have built the HTML documentation, install it by running the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755 /usr/share/doc/libburn-1.5.8 &&
install -v -m644 doc/html/* /usr/share/doc/libburn-1.5.8
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [cdrskin]{.segbody}
:::

::: seg
**Installed Library:** [libburn.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libburn]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  []{#cdrskin}[[**cdrskin**]{.command}]{.term}       burns preformatted data to CD, DVD, and BD via [libburn]{.application}
  []{#libburn-lib}[`libburn.so`{.filename}]{.term}   contains the [libburn]{.application} API functions
  -------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](dvd-rw-tools.md "dvd+rw-tools-7.1"){accesskey="p"}

    dvd+rw-tools-7.1

-   [Next](libisoburn.md "libisoburn-1.5.8.pl02"){accesskey="n"}

    libisoburn-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
