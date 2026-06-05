::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](ark.md "ark-26.04.1"){accesskey="p"}

    ark-26.04.1

-   [Next](dolphin-plugins.md "dolphin-plugins-26.04.1"){accesskey="n"}

    dolphin-plugins-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dolphin}dolphin-26.04.1 {#dolphin-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dolphin {#introduction-to-dolphin .sect2}

The [dolphin]{.application} package is a KDE Frameworks-based file manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/dolphin-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/dolphin-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 2e90e8c8008977b5fb59a795587ee012

-   Download size: 5.6 MB

-   Estimated disk space required: 99 MB

-   Estimated build time: 0.9 SBU (using parallelism=4)
:::

### dolphin Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [phonon-4.12.0](phonon.md "Phonon-4.12.0"){.xref}

#### Optional

[baloo-widgets](https://download.kde.org/stable/release-service){.ulink} (for the metadata features of Dolphin) and [packagekit-qt](https://www.freedesktop.org/software/PackageKit/releases/){.ulink}

#### Optional (Runtime)

[kio-extras-26.04.1](kio-extras.md "kio-extras-26.04.1"){.xref} (for mounting SMB shares)
:::::

::: {.installation lang="en"}
## Installation of dolphin {#installation-of-dolphin .sect2}

Install [dolphin]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
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
**Installed Programs:** [dolphin]{.segbody}
:::

::: seg
**Installed Libraries:** [libdolphinvcs.so and libdolphinprivate.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/Dolphin, \$KF6_PREFIX/lib/cmake/DolphinVcs, \$KF6_PREFIX/lib/plugins/dolphin, and \$KF6_PREFIX/share/doc/HTML/\*/dolphin]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ----------------------------------------
  []{#dolphin-prog}[[**dolphin**]{.command}]{.term}   is a KDE Frameworks-based file manager
  --------------------------------------------------- ----------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](ark.md "ark-26.04.1"){accesskey="p"}

    ark-26.04.1

-   [Next](dolphin-plugins.md "dolphin-plugins-26.04.1"){accesskey="n"}

    dolphin-plugins-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
