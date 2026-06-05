::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](umockdev.md "Umockdev-0.19.7"){accesskey="p"}

    Umockdev-0.19.7

-   [Next](wayland.md "Wayland-1.25.0"){accesskey="n"}

    Wayland-1.25.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#utfcpp}utfcpp-4.1.1 {#utfcpp-4.1.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to utfcpp {#introduction-to-utfcpp .sect2}

The [utfcpp]{.application} package contains a set of include files to provide UTF-8 with C++ in a Portable Way.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/nemtrif/utfcpp/archive/v4.1.1/utfcpp-4.1.1.tar.gz](https://github.com/nemtrif/utfcpp/archive/v4.1.1/utfcpp-4.1.1.tar.gz){.ulink}

-   Download MD5 sum: 2b439bf8f222cd85bac0d2603265a246

-   Download size: 36 KB

-   Estimated disk space required: 716 KB

-   Estimated build time: less than 0.1 SBU
:::

### utfcpp Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of utfcpp {#installation-of-utfcpp .sect2}

Install [utfcpp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr ..
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
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/utf8cpp and /usr/share/utf8cpp]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](umockdev.md "Umockdev-0.19.7"){accesskey="p"}

    Umockdev-0.19.7

-   [Next](wayland.md "Wayland-1.25.0"){accesskey="n"}

    Wayland-1.25.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
