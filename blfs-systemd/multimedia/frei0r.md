::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](flac.md "FLAC-1.5.0"){accesskey="p"}

    FLAC-1.5.0

-   [Next](gavl.md "gavl-1.4.0"){accesskey="n"}

    gavl-1.4.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#frei0r}frei0r-3.1.3 {#frei0r-3.1.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Frei0r {#introduction-to-frei0r .sect2}

[Frei0r]{.application} is a minimalistic plugin API for video effects. Note that the 0 in the name is a zero, not a capital letter o.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/dyne/frei0r/archive/v3.1.3/frei0r-3.1.3.tar.gz](https://github.com/dyne/frei0r/archive/v3.1.3/frei0r-3.1.3.tar.gz){.ulink}

-   Download MD5 sum: 286941063d19126504ca8ebfd11a7985

-   Download size: 936 KB

-   Estimated disk space required: 54 MB

-   Estimated build time: 0.4 SBU
:::

### Frei0r Dependencies

#### Recommended

[gavl-1.4.0](gavl.md "gavl-1.4.0"){.xref} and [opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of frei0r {#installation-of-frei0r .sect2}

Install [Frei0r]{.application} by running the following commands:

``` userinput
mkdir -vp build &&
cd        build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev .. &&

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

`-D WITHOUT_OPENCV=TRUE`{.option}: This option instructs the make procedure to disable building plugins dependent upon opencv.

`-D WITHOUT_GAVL=TRUE`{.option}: This option instructs the make procedure to disable building plugins dependent upon gavl.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [Over 150 video effects plugins]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/frei0r-1]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](flac.md "FLAC-1.5.0"){accesskey="p"}

    FLAC-1.5.0

-   [Next](gavl.md "gavl-1.4.0"){accesskey="n"}

    gavl-1.4.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
