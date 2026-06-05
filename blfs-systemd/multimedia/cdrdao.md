::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdwriteutils.md "CD/DVD-Writing Utilities"){accesskey="p"}

    CD/DVD-Writing Utilities

-   [Next](cdrtools.md "Cdrtools-3.02a09"){accesskey="n"}

    Cdrtools-3.02a09

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cdrdao}Cdrdao-1.2.6 {#cdrdao-1.2.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Cdrdao {#introduction-to-cdrdao .sect2}

The [Cdrdao]{.application} package contains CD recording utilities. These are useful for burning a CD in disk-at-once mode.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/cdrdao/cdrdao-1.2.6.tar.bz2](https://downloads.sourceforge.net/cdrdao/cdrdao-1.2.6.tar.bz2){.ulink}

-   Download MD5 sum: f59689d847d56647187d4de487e3487d

-   Download size: 832 KB

-   Estimated disk space required: 88 MB

-   Estimated build time: 0.3 SBU (Using parallelism-4)
:::

### [Cdrdao]{.application} Dependencies

#### Recommended

[Gtkmm-3.24.10](../x/gtkmm3.md "Gtkmm-3.24.10"){.xref}, [libao-1.2.0](libao.md "Libao-1.2.0"){.xref}, [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [libmad-0.15.1b](libmad.md "libmad-0.15.1b"){.xref}, and [LAME-3.100](lame.md "LAME-3.100"){.xref} (required to build [**toc2mp3**]{.command})

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/cdrdao](https://wiki.linuxfromscratch.org/blfs/wiki/cdrdao){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Cdrdao {#installation-of-cdrdao .sect2}

Install [Cdrdao]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --mandir=/usr/share/man &&
make CC="gcc -std=gnu17"
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755 -d /usr/share/doc/cdrdao-1.2.6 &&
install -v -m644 README /usr/share/doc/cdrdao-1.2.6
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**--mandir=/usr/share/man**]{.command}: Install manual pages in /usr/share/man instead of /usr/man.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cdrdao, cue2toc, gcdmaster, toc2cddb, toc2cue, and optionally toc2mp3]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/cdrdao, /usr/share/doc/cdrdao-1.2.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  []{#cdrdao-prog}[[**cdrdao**]{.command}]{.term}    records audio or data CD-Rs in disk-at-once (DAO) mode based on a textual description of the CD contents
  []{#cue2toc}[[**cue2toc**]{.command}]{.term}       converts CUE to TOC format for audio CDs
  []{#gcdmaster}[[**gcdmaster**]{.command}]{.term}   is a graphical front end to cdrdao that compresses and burns audio CDs
  []{#toc2cddb}[[**toc2cddb**]{.command}]{.term}     converts a [Cdrdao]{.application} TOC file into a cddb file and prints it to stdout
  []{#toc2cue}[[**toc2cue**]{.command}]{.term}       converts TOC to CUE format for audio CDs
  []{#toc2mp3}[[**toc2mp3**]{.command}]{.term}       converts an audio CD disk image (`.toc`{.filename} file) to MP3 files
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](cdwriteutils.md "CD/DVD-Writing Utilities"){accesskey="p"}

    CD/DVD-Writing Utilities

-   [Next](cdrtools.md "Cdrtools-3.02a09"){accesskey="n"}

    Cdrtools-3.02a09

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
