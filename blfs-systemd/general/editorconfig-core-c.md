::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](dos2unix.md "dos2unix-7.5.6"){accesskey="p"}

    dos2unix-7.5.6

-   [Next](glslc.md "glslc from shaderc-2026.2"){accesskey="n"}

    glslc from shaderc-2026.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#editorconfig-core-c}editorconfig-core-c-0.12.11 {#editorconfig-core-c-0.12.11 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to editorconfig-core-c {#introduction-to-editorconfig-core-c .sect2}

The EditorConfig project maintains a file format and plugins for various text editors which allow this file format to be read and used by those editors.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/editorconfig/editorconfig-core-c/archive/v0.12.11/editorconfig-core-c-0.12.11.tar.gz](https://github.com/editorconfig/editorconfig-core-c/archive/v0.12.11/editorconfig-core-c-0.12.11.tar.gz){.ulink}

-   Download MD5 sum: a0a6b43efe67635dad20e2d66a569a7b

-   Download size: 76 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of editorconfig-core-c {#installation-of-editorconfig-core-c .sect2}

Install [editorconfig-core-c]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_DOCUMENTATION=OFF   \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
rm -fv /usr/lib/libeditorconfig_static.a
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [editorconfig]{.segbody}
:::

::: seg
**Installed Library:** [libeditorconfig.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/editorconfig and /usr/lib/cmake/EditorConfig]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](dos2unix.md "dos2unix-7.5.6"){accesskey="p"}

    dos2unix-7.5.6

-   [Next](glslc.md "glslc from shaderc-2026.2"){accesskey="n"}

    glslc from shaderc-2026.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
