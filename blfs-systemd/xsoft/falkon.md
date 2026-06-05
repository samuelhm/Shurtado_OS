::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](epiphany.md "Epiphany-50.4"){accesskey="p"}

    Epiphany-50.4

-   [Next](firefox.md "Firefox-140.11.0esr"){accesskey="n"}

    Firefox-140.11.0esr

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#falkon}falkon-26.04.1 {#falkon-26.04.1 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to falkon {#introduction-to-falkon .sect2}

[Falkon]{.application} is a KDE web browser using the QtWebEngine rendering engine. It was previously known as [QupZilla]{.application}. It aims to be a lightweight web browser available through all major platforms.

Although [falkon]{.application} is now part of KDE, it can be installed without KDE (with the loss of [kwallet]{.application} functionality).

Falkon relies on QtWebEngine. Please read the warning on that page.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/falkon-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/falkon-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: d3afd86041279e0560463beefe0b65d5

-   Download size: 2.6 MB

-   Estimated disk space required: 165 MB

-   Estimated build time: 1.6 SBU (Using parallelism=4; add 0.1 SBU for tests)
:::

### falkon Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} (for karchive), and [qtwebengine-6.11.1](../x/qtwebengine.md "QtWebEngine-6.11.1"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Strictly speaking, only karchive and ki18n are required to build falkon, but several other packages in [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} can be used if they are present. To build only karchive and ki18n, download those packages from the directory specified in [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and use the build instructions on that page, changing the \$KF6_PREFIX variable to /usr.
:::

#### Optional

[PySide2](https://pypi.org/project/PySide2/){.ulink} and [Shiboken2](https://pypi.org/project/shiboken2/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/falkon](https://wiki.linuxfromscratch.org/blfs/wiki/falkon){.ulink}
::::::

::::: {.installation lang="en"}
## Installation of falkon {#installation-of-falkon .sect2}

Install [falkon]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&

make
```

The tests need the package to be installed first because they depend on functionality that is only present after the package is installed.

Now, as the `root`{.systemitem} user:

``` root
make install &&
ldconfig
```

To test the results, issue: [**make test**]{.command}. All tests should pass. If any fail, the full results will be in `Testing/Temporary/LastTest.log`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When upgrading this package, it is possible that the contents of the application will remain empty even though everything else appears to be working properly. If this happens, try removing `~/.cache/falkon`{.filename} and restarting the program.
:::

If you have installed [Pyside2]{.application}, you will want to examine [**hellopython.py**]{.command} which is in the `scripts/`{.filename} directory, and perhaps copy it to your home directory.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are on a non-x86_64 architecture and run into problems with missing text, you may wish to export `QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"`{.envar} prior to running Falkon. Note that doing this amplifies the severity of any security vulnerabilities in QtWebEngine.
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D BUILD_TESTING=OFF`{.option}: This will save a little time and space by not building the test programs. Use this switch if you are not planning on running the tests.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [falkon]{.segbody}
:::

::: seg
**Installed Library:** [libFalkonPrivate.so.3]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/falkon]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------- -----------------------------------------
  []{#falkon-prog}[[**falkon**]{.command}]{.term}                         is a web browser which uses qtwebengine
  []{#libFalkonPrivate.so.3}[`libFalkonPrivate.so.3`{.filename}]{.term}   contains functions used by falkon
  ----------------------------------------------------------------------- -----------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](epiphany.md "Epiphany-50.4"){accesskey="p"}

    Epiphany-50.4

-   [Next](firefox.md "Firefox-140.11.0esr"){accesskey="n"}

    Firefox-140.11.0esr

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
