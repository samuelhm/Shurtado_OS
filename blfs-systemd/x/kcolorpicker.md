::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](imlib2.md "imlib2-1.12.6"){accesskey="p"}

    imlib2-1.12.6

-   [Next](kimageannotator.md "kImageAnnotator-0.7.2"){accesskey="n"}

    kImageAnnotator-0.7.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kcolorpicker}kColorPicker-0.3.1 {#kcolorpicker-0.3.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kColorPicker {#introduction-to-kcolorpicker .sect2}

kColorPicker is a QToolButton library with a color popup menu, which lets you select colors. The popup menu features a color dialog button which can be used to add custom colors to the popup menu.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ksnip/kColorPicker/archive/v0.3.1/kColorPicker-0.3.1.tar.gz](https://github.com/ksnip/kColorPicker/archive/v0.3.1/kColorPicker-0.3.1.tar.gz){.ulink}

-   Download MD5 sum: 1efc91252446af0d7e5c467ea7d517e7

-   Download size: 16 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### kColorPicker Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} and [Qt-6.11.1](qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kColorPicker {#installation-of-kcolorpicker .sect2}

Install [kColorPicker]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON      \
      -D BUILD_WITH_QT6=ON         \
      .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libkColorPicker.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/kColorPicker]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](imlib2.md "imlib2-1.12.6"){accesskey="p"}

    imlib2-1.12.6

-   [Next](kimageannotator.md "kImageAnnotator-0.7.2"){accesskey="n"}

    kImageAnnotator-0.7.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
