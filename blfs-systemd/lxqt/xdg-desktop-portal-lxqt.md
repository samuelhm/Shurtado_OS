::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1"){accesskey="p"}

    lxqt-wayland-session-0.4.1

-   [Next](obconf-qt.md "obconf-qt-0.16.5"){accesskey="n"}

    obconf-qt-0.16.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-desktop-portal-lxqt}xdg-desktop-portal-lxqt-1.4.0 {#xdg-desktop-portal-lxqt-1.4.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdg-desktop-portal-lxqt {#introduction-to-xdg-desktop-portal-lxqt .sect2}

[xdg-desktop-portal-lxqt]{.application} is a backend for [xdg-desktop-portal]{.application}, that is using the Qt library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/xdg-desktop-portal-lxqt/releases/download/1.4.0/xdg-desktop-portal-lxqt-1.4.0.tar.xz](https://github.com/lxqt/xdg-desktop-portal-lxqt/releases/download/1.4.0/xdg-desktop-portal-lxqt-1.4.0.tar.xz){.ulink}

-   Download MD5 sum: e624e0c130c2210a7e3a08ab6d9b6e04

-   Download size: 20 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: 0.1 SBU
:::

### xdg-desktop-portal-lxqt Dependencies

#### Required

[libfm-qt-2.4.0](libfm-qt.md "libfm-qt-2.4.0"){.xref}, [kwindowsystem-6.26.0 for lxqt](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){.xref}, and [xdg-desktop-portal-1.20.4](../x/xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref} (at runtime)
:::::

::: {.installation lang="en"}
## Installation of xdg-desktop-portal-lxqt {#installation-of-xdg-desktop-portal-lxqt .sect2}

Install [xdg-desktop-portal-lxqt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

This package does not come with a test suite.

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
**Installed Program:** [xdg-desktop-portal-lxqt (in /usr/libexec)]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xdg-desktop-portal (if no other [xdg-desktop-portal]{.application} backend is installed)]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1"){accesskey="p"}

    lxqt-wayland-session-0.4.1

-   [Next](obconf-qt.md "obconf-qt-0.16.5"){accesskey="n"}

    obconf-qt-0.16.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
