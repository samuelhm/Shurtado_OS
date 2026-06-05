::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 18. Text Web Browsers

-   [Prev](textweb.md "Text Web Browsers"){accesskey="p"}

    Text Web Browsers

-   [Next](lynx.md "Lynx-2.9.3"){accesskey="n"}

    Lynx-2.9.3

-   [Up](textweb.md "Chapter 18. Text Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#Links}Links-2.30 {#links-2.30 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Links {#introduction-to-links .sect2}

[Links]{.application} is a text and graphics mode WWW browser. It includes support for rendering tables and frames, features background downloads, can display colors and has many other features.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://links.twibright.com/download/links-2.30.tar.bz2](http://links.twibright.com/download/links-2.30.tar.bz2){.ulink}

-   Download MD5 sum: dc56041551980c74dd354cd7c2882539

-   Download size: 6.3 MB

-   Estimated disk space required: 36 MB

-   Estimated build time: 0.2 SBU
:::

### Links Dependencies

#### Recommended

[libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}

#### Optional

Graphics mode requires at least one of [GPM-1.20.7](../general/gpm.md "GPM-1.20.7"){.xref} (mouse support to be used with a framebuffer-based console), [SVGAlib](https://www.svgalib.org/){.ulink}, [DirectFB](https://pkgs.fedoraproject.org/repo/pkgs/directfb/){.ulink}, and [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}

For decoding various image formats [Links]{.application} can utilize [libavif-1.4.2](../general/libavif.md "libavif-1.4.2"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, and [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}

For decompressing web pages that are compressed with Brotli, [Links]{.application} can utilize [Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Links {#installation-of-links .sect2}

First, fix an issue introduced by glibc-2.43 and higher:

``` userinput
sed '/*strchr/s/cast_const_char //g' -i ftp.c
```

Install [Links]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -d -m755 /usr/share/doc/links-2.30 &&
install -v -m644 doc/links_cal/* KEYS BRAILLE_HOWTO \
    /usr/share/doc/links-2.30
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-graphics`{.option}: This switch enables support for graphics mode.
:::

::::: {.configuration lang="en"}
## Configuring Links {#configuring-links .sect2}

::: {.sect3 lang="en"}
### []{#links-config}Config Files {#config-files .sect3}

`~/.links/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[Links]{.application} stores its configuration in per-user files in the `~/.links`{.filename} directory. These files are created automatically when [**links**]{.command} is run for the first time.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [links]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/links-2.30]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -----------------------------------------
  []{#links}[[**links**]{.command}]{.term}   is a text and graphics mode WWW browser
  ------------------------------------------ -----------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](textweb.md "Text Web Browsers"){accesskey="p"}

    Text Web Browsers

-   [Next](lynx.md "Lynx-2.9.3"){accesskey="n"}

    Lynx-2.9.3

-   [Up](textweb.md "Chapter 18. Text Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
