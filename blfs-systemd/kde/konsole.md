::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](khelpcenter.md "khelpcenter-26.04.1"){accesskey="p"}

    khelpcenter-26.04.1

-   [Next](konversation.md "konversation-26.04.1"){accesskey="n"}

    konversation-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#konsole}Konsole-26.04.1 {#konsole-26.04.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Konsole {#introduction-to-konsole .sect2}

The [Konsole]{.application} package is a KDE Frameworks-based terminal emulator.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/konsole-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/konsole-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 2ab7ad9fc4f19a39367ca3a7110ef4ba

-   Download size: 1.8 MB

-   Estimated disk space required: 78 MB

-   Estimated build time: 0.7 SBU (using parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Optional patch: [https://www.linuxfromscratch.org/patches/blfs/svn/konsole-adjust_scrollbar-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/konsole-adjust_scrollbar-1.patch){.ulink}
:::

### Konsole Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of Konsole {#installation-of-konsole .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In non-Plasma environments, the konsole scrollbar and its handle do not display well. This can be fixed by applying the following patch if desired:

``` userinput
patch -Np1 -i ../konsole-adjust_scrollbar-1.patch
```

The patch makes the scrollbar light gray with a small white border. The handle is dark gray. If desired, the colors may be changed by editing the patch.
:::

Install [Konsole]{.application} by running the following commands:

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
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [konsole and konsoleprofile]{.segbody}
:::

::: seg
**Installed Libraries:** [libkdeinit6_konsole.so and libkonsoleprivate.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/doc/HTML/\*/konsole, \$KF6_PREFIX/share/konsole, and \$KF6_PREFIX/share/kxmlgui6/konsole]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------
  []{#konsole-prog}[[**konsole**]{.command}]{.term}            is a KDE Frameworks-based terminal emulator
  []{#konsoleprofile}[[**konsoleprofile**]{.command}]{.term}   is a command-line tool to change the current tab's profile options
  ------------------------------------------------------------ --------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](khelpcenter.md "khelpcenter-26.04.1"){accesskey="p"}

    khelpcenter-26.04.1

-   [Next](konversation.md "konversation-26.04.1"){accesskey="n"}

    konversation-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
