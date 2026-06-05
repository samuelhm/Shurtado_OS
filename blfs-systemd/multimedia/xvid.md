::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](xine-lib.md "xine-lib-1.2.13"){accesskey="p"}

    xine-lib-1.2.13

-   [Next](audioutils.md "Audio Utilities"){accesskey="n"}

    Audio Utilities

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xvid}XviD-1.3.7 {#xvid-1.3.7 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to XviD {#introduction-to-xvid .sect2}

[XviD]{.application} is an MPEG-4 compliant video CODEC.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz](https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz){.ulink}

-   Download MD5 sum: 5c6c19324608ac491485dbb27d4da517

-   Download size: 804 KB

-   Estimated disk space required: 7.1 MB

-   Estimated build time: 0.1 SBU
:::

### XviD Dependencies

#### Optional

[yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref} or [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of XviD {#installation-of-xvid .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package tarball expands to `xvidcore`{.filename}, not the expected `xvidcore-1.3.7`{.filename}.
:::

First, fix a problem when building with gcc-15:

``` userinput
sed -i '/typedef int bool;/d' src/encoder.h
```

Install [XviD]{.application} by running the following commands:

``` userinput
cd build/generic &&
sed -i 's/^LN_S=@LN_S@/& -f -v/' platform.inc.in &&

./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
sed -i '/libdir.*STATIC_LIB/ s/^/#/' Makefile &&
make install &&

chmod -v 755 /usr/lib/libxvidcore.so.4.3 &&
install -v -m755 -d /usr/share/doc/xvidcore-1.3.7/examples &&
install -v -m644 ../../doc/* /usr/share/doc/xvidcore-1.3.7 &&
install -v -m644 ../../examples/* \
    /usr/share/doc/xvidcore-1.3.7/examples
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i 's/\^LN_S=@LN_S@/& -f -v/' platform.inc.in**]{.command}: Fix error during [**make install**]{.command} if reinstalling or upgrading.

[**sed -i '/libdir.\*STATIC_LIB/ s/\^/#/' Makefile**]{.command}: This command disables installing the static library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libxvidcore.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/xvidcore-1.3.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------
  []{#libxvidcore}[`libxvidcore.so`{.filename}]{.term}   provides functions to encode and decode most MPEG-4 video data
  ------------------------------------------------------ ----------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](xine-lib.md "xine-lib-1.2.13"){accesskey="p"}

    xine-lib-1.2.13

-   [Next](audioutils.md "Audio Utilities"){accesskey="n"}

    Audio Utilities

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
