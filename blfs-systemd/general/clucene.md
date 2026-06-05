::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](brotli.md "brotli-1.2.0"){accesskey="p"}

    brotli-1.2.0

-   [Next](dbus-glib.md "dbus-glib-0.114"){accesskey="n"}

    dbus-glib-0.114

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#clucene}CLucene-2.3.3.4 {#clucene-2.3.3.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to CLucene {#introduction-to-clucene .sect2}

[CLucene]{.application} is a C++ version of Lucene, a high performance text search engine.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/clucene/clucene-core-2.3.3.4.tar.gz](https://downloads.sourceforge.net/clucene/clucene-core-2.3.3.4.tar.gz){.ulink}

-   Download MD5 sum: 48d647fbd8ef8889e5a7f422c1bfda94

-   Download size: 2.2 MB

-   Estimated disk space required: 78 MB

-   Estimated build time: 0.8 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/clucene-2.3.3.4-contribs_lib-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/clucene-2.3.3.4-contribs_lib-1.patch){.ulink}
:::

### CLucene Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of CLucene {#installation-of-clucene .sect2}

Install [CLucene]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../clucene-2.3.3.4-contribs_lib-1.patch &&

sed -i '/Misc.h/a #include <ctime>' src/core/CLucene/document/DateTools.cpp &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D BUILD_CONTRIBS_LIB=ON            \
      -W no-dev ..                        &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D BUILD_CONTRIBS_LIB=ON`*: This cmake variable enables building the CLucene contribs library necessary for running applications that use language specific text analyzers like LibreOffice for example.

*`-W no-dev`*: This parameter silences several warnings only intended for project developers.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libclucene-contribs-lib.so, libclucene-core.so, and libclucene-shared.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/CLucene and /usr/lib/CLuceneConfig.cmake]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](brotli.md "brotli-1.2.0"){accesskey="p"}

    brotli-1.2.0

-   [Next](dbus-glib.md "dbus-glib-0.114"){accesskey="n"}

    dbus-glib-0.114

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
