::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](clisp.md "Clisp-2.49.95"){accesskey="p"}

    Clisp-2.49.95

-   [Next](doxygen.md "Doxygen-1.17.0"){accesskey="n"}

    Doxygen-1.17.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cmake}CMake-4.3.3 {#cmake-4.3.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to CMake {#introduction-to-cmake .sect2}

The [CMake]{.application} package contains a modern toolset used for generating Makefiles. It is a successor of the auto-generated [**configure**]{.command} script and aims to be platform- and compiler-independent. A significant user of [CMake]{.application} is [KDE]{.application} since version 4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://cmake.org/files/v4.3/cmake-4.3.3.tar.gz](https://cmake.org/files/v4.3/cmake-4.3.3.tar.gz){.ulink}

-   Download MD5 sum: 6e1fe7693d103dac31aaaf0732926e20

-   Download size: 13 MB

-   Estimated disk space required: 2.2 GB (with tests)

-   Estimated build time: 2.2 SBU (add 4.3 SBU for tests, both using parallelism=4)
:::

### CMake Dependencies

#### Recommended

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, [libuv-1.52.1](libuv.md "libuv-1.52.1"){.xref}, and [nghttp2-1.69.0](../basicnet/nghttp2.md "nghttp2-1.69.0"){.xref}

#### Optional

[GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref} (for gfortran), [git-2.54.0](git.md "Git-2.54.0"){.xref} (for use during tests), [mercurial-7.2.2](mercurial.md "Mercurial-7.2.2"){.xref} (for use during tests), [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref} (for use during tests), [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (for the Qt-based GUI), [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (for building documents), [Subversion-1.14.5](subversion.md "Subversion-1.14.5"){.xref} (for testing), [cppdap](https://github.com/google/cppdap/){.ulink}, [jsoncpp](https://github.com/open-source-parsers/jsoncpp/){.ulink}, and [rhash](https://rhash.sourceforge.net/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of CMake {#installation-of-cmake .sect2}

Install [CMake]{.application} by running the following commands:

``` userinput
sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake &&

./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-cppdap   \
            --no-system-librhash \
            --docdir=/share/doc/cmake-4.3.3 &&
make
```

To test the results, issue: [**bin/ctest -j*`$(nproc)`***]{.command}. Replace *`$(nproc)`* with an integer between 1 and the number of system logical cores if you don't want to use all.

If you want to investigate a problem with a given "problem1-test", use [**bin/ctest -R "problem1-test"**]{.command} and, to omit it, use [**bin/ctest -E "problem1-test"**]{.command}. These options can be used together: [**bin/ctest -R "problem1-test" -E "problem2-test"**]{.command}. Option `-N`{.option} can be used to display all available tests, and you can run [**bin/ctest**]{.command} for a sub-set of tests by using separated by spaces names or numbers as options. Option `--help`{.option} can be used to show all options.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... Modules/GNUInstallDirs.cmake**]{.command}: This command disables applications using cmake from attempting to install files in /usr/lib64/.

*`--system-libs`*: This switch forces the build system to link against the system installed version for all needed libraries but those explicitly specified via a `--no-system-*`{.option} option.

*`--no-system-jsoncpp`* and *`--no-system-cppdap`*: These switches remove the [JSON-C++]{.application} library from the list of system libraries. A bundled version of that library is used instead.

*`--no-system-librhash`*: This switch removes the [librhash]{.application} library from the list of system libraries used. A bundled version of that library is used instead.

`--no-system-{curl,libarchive,libuv,nghttp2}`{.option}: Use the corresponding option in the list for the [**bootstrap**]{.command} if one of the recommended dependencies is not installed. A bundled version of the dependency will be used instead.

`--qt-gui`{.option}: This switch enables building the [Qt]{.application}-based GUI for [CMake]{.application}.

`--parallel=`{.option}: This switch enables performing the [CMake]{.application} bootstrap with multiple jobs at one time. It's not needed if the `MAKEFLAGS`{.envar} variable has been already set for using multiple processors following [Using Multiple Processors](../introduction/notes-on-building.md#parallel-builds "Using Multiple Processors"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ccmake, cmake, cmake-gui (optional), cpack, and ctest]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/cmake-4.3 and /usr/share/doc/cmake-4.3.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------
  []{#ccmake}[[**ccmake**]{.command}]{.term}         is a curses based interactive frontend to [**cmake**]{.command}
  []{#cmake-prog}[[**cmake**]{.command}]{.term}      is the makefile generator
  []{#cmake-gui}[[**cmake-gui**]{.command}]{.term}   (optional) is the [Qt]{.application}-based frontend to [**cmake**]{.command}
  []{#cpack}[[**cpack**]{.command}]{.term}           is the [CMake]{.application} packaging program
  []{#ctest}[[**ctest**]{.command}]{.term}           is a testing utility for cmake-generated build trees
  -------------------------------------------------- ------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](clisp.md "Clisp-2.49.95"){accesskey="p"}

    Clisp-2.49.95

-   [Next](doxygen.md "Doxygen-1.17.0"){accesskey="n"}

    Doxygen-1.17.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
