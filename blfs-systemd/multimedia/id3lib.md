::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-libav.md "gst-libav-1.28.3"){accesskey="p"}

    gst-libav-1.28.3

-   [Next](intel-media-driver.md "intel-media-driver-26.1.5"){accesskey="n"}

    intel-media-driver-26.1.5

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#id3lib}id3lib-3.8.3 {#id3lib-3.8.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to id3lib {#introduction-to-id3lib .sect2}

[id3lib]{.application} is a library for reading, writing and manipulating id3v1 and id3v2 multimedia data containers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/id3lib/id3lib-3.8.3.tar.gz](https://downloads.sourceforge.net/id3lib/id3lib-3.8.3.tar.gz){.ulink}

-   Download MD5 sum: 19f27ddd2dda4b2d26a559a4f0f402a7

-   Download size: 932 KB

-   Estimated disk space required: 16 MB

-   Estimated build time: 0.2 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patches: [https://www.linuxfromscratch.org/patches/blfs/svn/id3lib-3.8.3-consolidated_patches-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/id3lib-3.8.3-consolidated_patches-1.patch){.ulink}
:::
::::::

::: {.installation lang="en"}
## Installation of Id3lib {#installation-of-id3lib .sect2}

Install [id3lib]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../id3lib-3.8.3-consolidated_patches-1.patch &&

libtoolize -fc                &&
aclocal                       &&
autoconf                      &&
automake --add-missing --copy &&

./configure --prefix=/usr --disable-static &&
make
```

This packages does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install  &&
cp doc/man/* /usr/share/man/man1 &&

install -v -m755 -d /usr/share/doc/id3lib-3.8.3 &&
install -v -m644 doc/*.{gif,jpg,png,ico,css,txt,php,html} \
                    /usr/share/doc/id3lib-3.8.3
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
**Installed Programs:** [id3convert, id3cp, id3info, and id3tag]{.segbody}
:::

::: seg
**Installed Library:** [libid3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/id3 and /usr/share/doc/id3lib-3.8.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------
  []{#id3convert}[[**id3convert**]{.command}]{.term}   converts between id3v1/v2 tagging formats
  []{#id3cp}[[**id3cp**]{.command}]{.term}             extracts id3v1/v2 tags from digital audio files
  []{#id3info}[[**id3info**]{.command}]{.term}         prints id3v1/v2 tag contents
  []{#id3tag}[[**id3tag**]{.command}]{.term}           is a utility for editing id3v1/v2 tags
  []{#libid3}[`libid3.so`{.filename}]{.term}           provides functions for the id3v1/v2 tag editing programs as well as other external programs and libraries
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gst10-libav.md "gst-libav-1.28.3"){accesskey="p"}

    gst-libav-1.28.3

-   [Next](intel-media-driver.md "intel-media-driver-26.1.5"){accesskey="n"}

    intel-media-driver-26.1.5

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
