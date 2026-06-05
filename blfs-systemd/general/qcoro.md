::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](qca.md "Qca-2.3.10"){accesskey="p"}

    Qca-2.3.10

-   [Next](simdutf.md "simdutf-9.0.0"){accesskey="n"}

    simdutf-9.0.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qcoro}qcoro-0.13.0 {#qcoro-0.13.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qcoro {#introduction-to-qcoro .sect2}

This package provides a set of tools to make use of C++20 coroutines with Qt.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/danvratil/qcoro/archive/v0.13.0/qcoro-0.13.0.tar.gz](https://github.com/danvratil/qcoro/archive/v0.13.0/qcoro-0.13.0.tar.gz){.ulink}

-   Download MD5 sum: 1cc2b522b90d8d0842523f751e75c99b

-   Download size: 160 KB

-   Estimated disk space required: 31 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 0.6 SBU for tests)
:::

### qcoro Dependencies

#### Required

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qcoro {#installation-of-qcoro .sect2}

Install [qcoro]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR \
      -D CMAKE_BUILD_TYPE=Release     \
      -D BUILD_TESTING=OFF            \
      -D QCORO_BUILD_EXAMPLES=OFF     \
      -D BUILD_SHARED_LIBS=ON         \
       ..                             &&
make
```

To test this package, remove the 'BUILD_TESTING=OFF' parameter above and run:

``` userinput
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libQCoro6Core.so, libQCoro6DBus.so, libQCoro6Network.so, libQCoro6Qml.so, libQCoro6Quick.so, and libQCoro6WebSockets.so]{.segbody}
:::

::: seg
**Installed Directories:** [Nine directories in \$QT6DIR/lib/cmake/ and \$QT6DIR/include/qcoro6]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](qca.md "Qca-2.3.10"){accesskey="p"}

    Qca-2.3.10

-   [Next](simdutf.md "simdutf-9.0.0"){accesskey="n"}

    simdutf-9.0.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
