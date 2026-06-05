::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](balsa.md "Balsa-2.6.5"){accesskey="p"}

    Balsa-2.6.5

-   [Next](fontforge.md "FontForge-20251009"){accesskey="n"}

    FontForge-20251009

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#feh}feh-3.12.2 {#feh-3.12.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to feh {#introduction-to-feh .sect2}

[feh]{.application} is a fast, lightweight image viewer which uses Imlib2. It is commandline-driven and supports multiple images through slideshows, thumbnail browsing or multiple windows, and montages or index prints (using TrueType fonts to display file info). Advanced features include fast dynamic zooming, progressive loading, loading via HTTP (with reload support for watching webcams), recursive file opening (slideshow of a directory hierarchy), and mouse wheel/keyboard control.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://feh.finalrewind.org/feh-3.12.2.tar.bz2](https://feh.finalrewind.org/feh-3.12.2.tar.bz2){.ulink}

-   Download MD5 sum: 6cc0868b091ea3a73617be64c0a85e27

-   Download size: 2.0 MB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### feh Dependencies

#### Required

[libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref} and [imlib2-1.12.6](../x/imlib2.md "imlib2-1.12.6"){.xref} (built with [giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref} support, for the tests)

#### Recommended

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}

#### Optional

[libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref}

#### Optional (runtime)

[libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} (for lossless image rotation) and [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} (to load unsupported formats)

#### Optional (test suite)

[Test-Command-0.11](../general/perl-modules.md#perl-test-command "Test::Command-0.11"){.xref} (required) and [mandoc](https://mandoc.bsd.lv/){.ulink} (optional)
:::::

::: {.installation lang="en"}
## Installation of feh {#installation-of-feh .sect2}

Install [feh]{.application} by running the following commands:

``` userinput
sed -i "s:doc/feh:&-3.12.2:" config.mk &&
make PREFIX=/usr
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i "s:doc/feh:&-3.12.2:" config.mk**]{.command}: This sed fixes the doc directory to a versioned one, as used in BLFS.

`curl=0`{.option}: Use this make flag if you don't have the cURL package installed.

`exif=1`{.option}: This make flag enables builtin Exif tag display support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [feh]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/feh-3.12.2 and /usr/share/feh]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- -----------------------------------
  []{#feh-prog}[[**feh**]{.command}]{.term}   is an image viewer and cataloguer
  ------------------------------------------- -----------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](balsa.md "Balsa-2.6.5"){accesskey="p"}

    Balsa-2.6.5

-   [Next](fontforge.md "FontForge-20251009"){accesskey="n"}

    FontForge-20251009

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
