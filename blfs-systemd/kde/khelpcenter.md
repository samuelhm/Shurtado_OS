::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kmix.md "KMix-26.04.1"){accesskey="p"}

    KMix-26.04.1

-   [Next](konsole.md "Konsole-26.04.1"){accesskey="n"}

    Konsole-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#khelpcenter}khelpcenter-26.04.1 {#khelpcenter-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Khelpcenter {#introduction-to-khelpcenter .sect2}

[Khelpcenter]{.application} is an application that shows documentation for KDE Applications as well as displays manual and info pages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/khelpcenter-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/khelpcenter-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 63b4932a0a02bf34a6b49a75bf1732bc

-   Download size: 4.1 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
:::

### Khelpcenter Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [xapian-2.0.0](../general/xapian.md "Xapian-2.0.0"){.xref}

#### Recommended

[qtwebengine-6.11.1](../x/qtwebengine.md "QtWebEngine-6.11.1"){.xref}

#### Optional (Runtime)

[kio-extras-26.04.1](kio-extras.md "kio-extras-26.04.1"){.xref} (for displaying man pages and info pages)
:::::

::: {.installation lang="en"}
## Installation of Khelpcenter {#installation-of-khelpcenter .sect2}

Install [khelpcenter]{.application} by running the following commands:

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
**Installed Program:** [khelpcenter]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/khelpcenter, \$KF6_PREFIX/share/doc/HTML/\*/{khelpcenter,fundamentals,onlinehelp}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -----------------------------------------
  []{#khelpcenter-prog}[[**khelpcenter**]{.command}]{.term}   is the help viewer for KDE applications
  ----------------------------------------------------------- -----------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](kmix.md "KMix-26.04.1"){accesskey="p"}

    KMix-26.04.1

-   [Next](konsole.md "Konsole-26.04.1"){accesskey="n"}

    Konsole-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
