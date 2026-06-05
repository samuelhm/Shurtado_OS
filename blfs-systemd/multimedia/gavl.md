::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](frei0r.md "frei0r-3.1.3"){accesskey="p"}

    frei0r-3.1.3

-   [Next](gstreamer10.md "gstreamer-1.28.3"){accesskey="n"}

    gstreamer-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gavl}gavl-1.4.0 {#gavl-1.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gavl {#introduction-to-gavl .sect2}

[Gavl]{.application} is short for Gmerlin Audio Video Library. It is a low level library that handles the details of audio and video formats like colorspaces, samplerates, multichannel configurations etc. It provides standardized definitions for those formats as well as container structures for carrying audio samples or video images inside an application.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz](https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz){.ulink}

-   Download MD5 sum: 2752013a817fbc43ddf13552215ec2c0

-   Download size: 4.4 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: 0.8 SBU
:::

### Gavl Dependencies

#### Required

[libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Gavl {#installation-of-gavl .sect2}

First, fix an issue with gcc-14 and later:

``` userinput
sed -i "/stdio/a #include <string.h>" src/fill_test.c
```

Now, install [Gavl]{.application} by running the following commands:

``` userinput
LIBS=-lm                         \
./configure --prefix=/usr        \
            --without-doxygen    \
            --with-cpuflags=none \
            --docdir=/usr/share/doc/gavl-1.4.0 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`LIBS=-lm`{.envar}: This variable ensures the math library is searched when linking.

*`--without-doxygen`*: This switch disables use of Doxygen. Omit if Doxygen is installed and you wish to build the API documentation.

*`--with-cpuflags=none`*: This switch fixes a problem identifying capabilities of the system architecture.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgavl.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gavl and /usr/share/doc/gavl-1.4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ------------------------------------
  []{#libgavl.so}[`libgavl.so`{.filename}]{.term}   is the Gmerlin Audio Video Library
  ------------------------------------------------- ------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](frei0r.md "frei0r-3.1.3"){accesskey="p"}

    frei0r-3.1.3

-   [Next](gstreamer10.md "gstreamer-1.28.3"){accesskey="n"}

    gstreamer-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
