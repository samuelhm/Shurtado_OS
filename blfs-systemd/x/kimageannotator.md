::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](kcolorpicker.md "kColorPicker-0.3.1"){accesskey="p"}

    kColorPicker-0.3.1

-   [Next](keybinder-3.md "keybinder-3.0-0.3.2"){accesskey="n"}

    keybinder-3.0-0.3.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kimageannotator}kImageAnnotator-0.7.2 {#kimageannotator-0.7.2 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kImageAnnotator {#introduction-to-kimageannotator .sect2}

kImageAnnotator is a tool for annotating images.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ksnip/kImageAnnotator/archive/v0.7.2/kImageAnnotator-0.7.2.tar.gz](https://github.com/ksnip/kImageAnnotator/archive/v0.7.2/kImageAnnotator-0.7.2.tar.gz){.ulink}

-   Download MD5 sum: 12811a2611613152b8dccc266a8f4804

-   Download size: 268 KB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
:::

### kImageAnnotator Dependencies

#### Required

[kcolorpicker-0.3.1](kcolorpicker.md "kColorPicker-0.3.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kImageAnnotator {#installation-of-kimageannotator .sect2}

Install [kImageAnnotator]{.application} by running the following commands:

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
**Installed Libraries:** [libkImageAnnotator.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/kImageAnnotator-Qt6, /usr/lib/cmake/kImageAnnotator-Qt6, and /usr/share/kImageAnnotator]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](kcolorpicker.md "kColorPicker-0.3.1"){accesskey="p"}

    kColorPicker-0.3.1

-   [Next](keybinder-3.md "keybinder-3.0-0.3.2"){accesskey="n"}

    keybinder-3.0-0.3.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
