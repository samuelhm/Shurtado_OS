::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](kdeintro.md "KDE Preliminaries"){accesskey="p"}

    KDE Preliminaries

-   [Next](phonon.md "Phonon-4.12.0"){accesskey="n"}

    Phonon-4.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#extra-cmake-modules}Extra-CMake-Modules-6.26.0 {#extra-cmake-modules-6.26.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Extra CMake Modules {#introduction-to-extra-cmake-modules .sect2}

The [Extra CMake Modules]{.application} package contains extra [CMake]{.application} modules used by [KDE Frameworks]{.application} and other packages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/extra-cmake-modules-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/extra-cmake-modules-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: 05432f3fcbc3ee0de5765413f5c8b436

-   Download size: 332 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### Extra CMake Modules Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Optional

[sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (for building documentation) and [ReuseTool](https://github.com/fsfe/reuse-tool/){.ulink} (for running internal tests)
:::::

:::: {.installation lang="en"}
## Installation of Extra CMake Modules {#installation-of-extra-cmake-modules .sect2}

Install [Extra CMake Modules]{.application} by running the following commands:

``` userinput
sed -i '/"lib64"/s/64//' kde-modules/KDEInstallDirsCommon.cmake &&

sed -e '/PACKAGE_INIT/i set(SAVE_PACKAGE_PREFIX_DIR "${PACKAGE_PREFIX_DIR}")' \
    -e '/^include/a set(PACKAGE_PREFIX_DIR "${SAVE_PACKAGE_PREFIX_DIR}")' \
    -i ECMConfig.cmake.in &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_WITH_QT6=ON         \
      -D DOC_INSTALL_DIR=/usr/share/doc/extra-cmake-modules-6.26.0 \
      .. &&
make
```

This package does not come with a test suite.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Unlike other KF6 packages, this module is installed in /usr because it can be used by some non-KF6 packages.
:::

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... Modules/KDEInstallDirs.cmake**]{.command}: This command disables applications using CMake from attempting to install files in a `lib64`{.filename} sub-directory.

[**sed ... ECMConfig.cmake.in**]{.command}: This command protects the global [CMake]{.application} variable `PACKAGE_PREFIX_DIR`{.envar} from being changed when checking for the presence of ECM. Since we install ECM into `/usr`{.filename}, the check would set that variable to `/usr`{.filename}, but most KDE packages expect it to be set to `/opt/kf6`{.filename} and they will fail to build if it is set to something else.

*`-D DOC_INSTALL-DIR=/usr/share/doc/extra...`*: This switch allows installing the documentation (which is built if [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} is installed) into a versioned directory.
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
**Installed Directories:** [/usr/share/ECM and /usr/share/doc/extra-cmake-modules-6.26.0 (if documentation was built)]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](kdeintro.md "KDE Preliminaries"){accesskey="p"}

    KDE Preliminaries

-   [Next](phonon.md "Phonon-4.12.0"){accesskey="n"}

    Phonon-4.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
