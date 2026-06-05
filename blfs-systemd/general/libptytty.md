::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libproxy.md "libproxy-0.5.12"){accesskey="p"}

    libproxy-0.5.12

-   [Next](libqalculate.md "libqalculate-5.11.0"){accesskey="n"}

    libqalculate-5.11.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libptytty}libptytty-2.0 {#libptytty-2.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libptytty {#introduction-to-libptytty .sect2}

The [libptytty]{.application} package provides a library that allows for OS independent and secure pty/tty and utmp/wtmp/lastlog handling.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://dist.schmorp.de/libptytty/libptytty-2.0.tar.gz](http://dist.schmorp.de/libptytty/libptytty-2.0.tar.gz){.ulink}

-   Download MD5 sum: 2a7f3f3c0d3ef71902da745dc7959529

-   Download size: 48 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### libptytty Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libptytty {#installation-of-libptytty .sect2}

Install [libptytty]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D PT_UTMP_FILE=/run/utmp        \
      .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libptytty.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------
  []{#libptytty-lib}[`libptytty.so`{.filename}]{.term}   provides for OS independent and secure pty/tty and utmp/wtmp/lastlog handling
  ------------------------------------------------------ -------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libproxy.md "libproxy-0.5.12"){accesskey="p"}

    libproxy-0.5.12

-   [Next](libqalculate.md "libqalculate-5.11.0"){accesskey="n"}

    libqalculate-5.11.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
