::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdrtools.md "Cdrtools-3.02a09"){accesskey="p"}

    Cdrtools-3.02a09

-   [Next](libburn.md "libburn-1.5.8"){accesskey="n"}

    libburn-1.5.8

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dvd-rw-tools}dvd+rw-tools-7.1 {#dvdrw-tools-7.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to dvd+rw-tools {#introduction-to-dvdrw-tools .sect2}

The [dvd+rw-tools]{.application} package contains several utilities to master the DVD media, both +RW/+R and -R\[W\]. The principle tool is [**growisofs**]{.command} which provides a way to both lay down [**and**]{.strong} grow an ISO9660 file system on (as well as to burn an arbitrary pre-mastered image to) all supported DVD media. This is useful for creating a new DVD or adding to an existing image on a partially burned DVD.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/dvd+rw-tools/dvd+rw-tools-7.1.tar.gz](https://anduin.linuxfromscratch.org/BLFS/dvd+rw-tools/dvd+rw-tools-7.1.tar.gz){.ulink}

-   Download MD5 sum: 8acb3c885c87f6838704a0025e435871

-   Download size: 138 KB

-   Estimated disk space required: 1.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/dvd+rw-tools-7.1-consolidated_fixes-2.patch](https://www.linuxfromscratch.org/patches/blfs/svn/dvd+rw-tools-7.1-consolidated_fixes-2.patch){.ulink}
:::

### dvd+rw-tools Dependencies

#### Required

[Cdrtools-3.02a09](cdrtools.md "Cdrtools-3.02a09"){.xref} (runtime)
::::::

::: {.installation lang="en"}
## Installation of dvd+rw-tools {#installation-of-dvdrw-tools .sect2}

First, apply a patch that fixes several bugs and fixes compiling with newer versions of glibc and the kernel headers:

``` userinput
patch -Np1 -i ../dvd+rw-tools-7.1-consolidated_fixes-2.patch
```

Install [dvd+rw-tools]{.application} by running the following commands:

``` userinput
make all rpl8 btcflash
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr install &&
install -v -m644 -D index.md \
    /usr/share/doc/dvd+rw-tools-7.1/index.md
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make all rpl8 btcflash**]{.command}: This command uses additional targets so that all the utilities are built.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [btcflash, dvd+rw-booktype, dvd+rw-format, dvd+rw-mediainfo, dvd-ram-control, growisofs, and rpl8]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/dvd+rw-tools-7.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  []{#growisofs}[[**growisofs**]{.command}]{.term}   is a combined [**mkisofs**]{.command} frontend/DVD recording program
  -------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cdrtools.md "Cdrtools-3.02a09"){accesskey="p"}

    Cdrtools-3.02a09

-   [Next](libburn.md "libburn-1.5.8"){accesskey="n"}

    libburn-1.5.8

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
