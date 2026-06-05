::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-panel.md "lxqt-panel-2.4.1"){accesskey="p"}

    lxqt-panel-2.4.1

-   [Next](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0"){accesskey="n"}

    lxqt-powermanagement-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pcmanfm-qt}pcmanfm-qt-2.4.0 {#pcmanfm-qt-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to pcmanfm-qt {#introduction-to-pcmanfm-qt .sect2}

The [pcmanfm-qt]{.application} is a file manager and desktop icon manager (a [Qt]{.application} port of [pcmanfm]{.application} and [libfm]{.application}).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/pcmanfm-qt/releases/download/2.4.0/pcmanfm-qt-2.4.0.tar.xz](https://github.com/lxqt/pcmanfm-qt/releases/download/2.4.0/pcmanfm-qt-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 68051ade13df176dcc267a7350059baa

-   Download size: 432 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.5 SBU
:::

### pcmanfm-qt Dependencies

#### Required

[layer-shell-qt-6.6.5 for lxqt](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){.xref}, [liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, [libfm-qt-2.4.0](libfm-qt.md "libfm-qt-2.4.0"){.xref}, and [lxqt-menu-data-2.4.0](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){.xref}

#### Recommended

[Gvfs-1.60.0](../gnome/gvfs.md "Gvfs-1.60.0"){.xref} (runtime) and [oxygen-icons-6.1.0](../x/oxygen-icons.md "oxygen-icons-6.1.0"){.xref} or another icon theme (depending on your choice, some icons will be missing in several places)
:::::

::: {.installation lang="en"}
## Installation of pcmanfm-qt {#installation-of-pcmanfm-qt .sect2}

If libLayerShellQtInterface.so is installed in /opt, help this package find it. As the `root`{.systemitem} user:

``` root
if [   -e /opt/kf6/lib/libLayerShellQtInterface.so -a \
     ! -e /usr/lib/libLayerShellQtInterface.so ]; then

    ln -sv /opt/kf6/lib/libLayerShellQtInterface.so \
           /usr/lib/libLayerShellQtInterface.so
fi
```

Install [pcmanfm-qt]{.application} by running the following commands:

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

To make [pcmanfm-qt]{.application} easier to find in menus, adjust the .desktop file. Again, as the `root`{.systemitem} user:

``` root
sed -e '/Categories=/s/=/=System;FileTools;/' \
    -e '/Name=/s/=.*/=File Manager PCManFM-Qt'/ \
    -i /usr/share/applications/pcmanfm-qt.desktop
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [pcmanfm-qt]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/pcmanfm-qt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------
  []{#pcmanfm-qt-prog}[[**pcmanfm-qt**]{.command}]{.term}   is a file manager and desktop icon manager
  --------------------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-panel.md "lxqt-panel-2.4.1"){accesskey="p"}

    lxqt-panel-2.4.1

-   [Next](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0"){accesskey="n"}

    lxqt-powermanagement-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
