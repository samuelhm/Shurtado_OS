::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](nspr.md "NSPR-4.39"){accesskey="p"}

    NSPR-4.39

-   [Next](popt.md "Popt-1.19"){accesskey="n"}

    Popt-1.19

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#opentimelineio}OpenTimelineIO-0.18.1 {#opentimelineio-0.18.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to OpenTimelineIO {#introduction-to-opentimelineio .sect2}

The [OpenTimelineIO]{.application} package contains an interchange format and API for editorial cut information.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/AcademySoftwareFoundation/OpenTimelineIO/archive/v0.18.1/OpenTimelineIO-0.18.1.tar.gz](https://github.com/AcademySoftwareFoundation/OpenTimelineIO/archive/v0.18.1/OpenTimelineIO-0.18.1.tar.gz){.ulink}

-   Download MD5 sum: 7b13298f151ad5bd2d4a74c0c66bfa41

-   Download size: 1.6 MB

-   Estimated disk space required: 62 MB

-   Estimated build time: 0.1 SBU (using parallelism=4
:::

### Additional Downloads

::: itemizedlist
-   Required download: [https://anduin.linuxfromscratch.org/BLFS/OpenTimelineIO/OpenTimelineIO-rapidjson-20260513.tar.xz](https://anduin.linuxfromscratch.org/BLFS/OpenTimelineIO/OpenTimelineIO-rapidjson-20260513.tar.xz){.ulink}

-   Download MD5 sum: 620458ffa66419cdff9bf656a344ed57
:::

### OpenTimelineIO Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} and [Imath-3.2.2](imath.md "Imath-3.2.2"){.xref}
::::::

::: {.installation lang="en"}
## Installation of OpenTimelineIO {#installation-of-opentimelineio .sect2}

First, install a substitute for RapidJSON. This updates the upstream version that has not been updated since 2016 and avoids downloading untagged releases of external submodules.

``` userinput
tar -xvf ../OpenTimelineIO-rapidjson-20260513.tar.xz \
    --strip-components=1 -C src/deps
```

Install [OpenTimelineIO]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D OTIO_FIND_IMATH=ON            \
      -D OTIO_AUTOMATIC_SUBMODULES=OFF \
      -D OTIO_DEPENDENCIES_INSTALL=OFF \
      .. &&
make
```

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
**Installed Libraries:** [libopentime.so and libopentimelineio.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/opentime, /usr/include/opentimelineio /usr/share/opentime, and /usr/share/opentimelineio]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](nspr.md "NSPR-4.39"){accesskey="p"}

    NSPR-4.39

-   [Next](popt.md "Popt-1.19"){accesskey="n"}

    Popt-1.19

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
