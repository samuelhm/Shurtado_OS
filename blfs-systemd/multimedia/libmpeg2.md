::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmad.md "libmad-0.15.1b"){accesskey="p"}

    libmad-0.15.1b

-   [Next](libmusicbrainz5.md "libmusicbrainz-5.1.0"){accesskey="n"}

    libmusicbrainz-5.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmpeg2}libmpeg2-0.5.1 {#libmpeg2-0.5.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libmpeg2 {#introduction-to-libmpeg2 .sect2}

The [libmpeg2]{.application} package contains a library for decoding MPEG-2 and MPEG-1 video streams. The library is able to decode all MPEG streams that conform to certain restrictions: [“[constrained parameters]{.quote}”]{.quote} for MPEG-1, and [“[main profile]{.quote}”]{.quote} for MPEG-2. This is useful for programs and applications needing to decode MPEG-2 and MPEG-1 video streams.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.videolan.org/contrib/libmpeg2/libmpeg2-0.5.1.tar.gz](https://download.videolan.org/contrib/libmpeg2/libmpeg2-0.5.1.tar.gz){.ulink}

-   Download MD5 sum: 0f92c7454e58379b4a5a378485bbd8ef

-   Download size: 513 KB

-   Estimated disk space required: 6 MB

-   Estimated build time: 0.1 SBU
:::

### libmpeg2 Dependencies

#### Optional

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} and [SDL1](https://github.com/libsdl-org/sdl12-compat){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libmpeg2 {#installation-of-libmpeg2 .sect2}

Install [libmpeg2]{.application} by running the following commands:

``` userinput
sed -i 's/static const/static/' libmpeg2/idct_mmx.c &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}. To perform a more comprehensive regression test, see the file `test/README`{.filename} in the source tree.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755 -d /usr/share/doc/libmpeg2-0.5.1 &&
install -v -m644 README doc/libmpeg2.txt \
                    /usr/share/doc/libmpeg2-0.5.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i ...**]{.command}: This [**sed**]{.command} fixes problems with recent GCC compilers.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [corrupt_mpeg2, extract_mpeg2 and mpeg2dec]{.segbody}
:::

::: seg
**Installed Libraries:** [libmpeg2.so and libmpeg2convert.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/mpeg2dec and /usr/share/doc/libmpeg2-0.5.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------
  []{#extract_mpeg2}[[**extract_mpeg2**]{.command}]{.term}       extracts MPEG video streams from a multiplexed stream
  []{#mpeg2dec}[[**mpeg2dec**]{.command}]{.term}                 decodes MPEG1 and MPEG2 video streams
  []{#libmpeg2-lib}[`libmpeg2.so`{.filename}]{.term}             contains API functions used to decode MPEG video streams
  []{#libmpeg2convert}[`libmpeg2convert.so`{.filename}]{.term}   contains API functions used for color conversions of MPEG video streams
  -------------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libmad.md "libmad-0.15.1b"){accesskey="p"}

    libmad-0.15.1b

-   [Next](libmusicbrainz5.md "libmusicbrainz-5.1.0"){accesskey="n"}

    libmusicbrainz-5.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
