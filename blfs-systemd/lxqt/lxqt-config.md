::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-about.md "lxqt-about-2.4.0"){accesskey="p"}

    lxqt-about-2.4.0

-   [Next](lxqt-policykit.md "lxqt-policykit-2.4.0"){accesskey="n"}

    lxqt-policykit-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-config}lxqt-config-2.4.0 {#lxqt-config-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-config {#introduction-to-lxqt-config .sect2}

The [lxqt-config]{.application} package provides the [LXQt]{.application} Configuration Center.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-config/releases/download/2.4.0/lxqt-config-2.4.0.tar.xz](https://github.com/lxqt/lxqt-config/releases/download/2.4.0/lxqt-config-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 7bb4cc66ce5fc8cd5bc53127643888a1

-   Download size: 408 KB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
:::

### lxqt-config Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, [kconfig-6.26.0 for lxqt](lxqt-kconfig.md "kconfig-6.26.0 for lxqt"){.xref}, [libkscreen-6.6.5 for lxqt](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt"){.xref}, and [xorg-libinput-1.5.0](../x/x7driver.md#xorg-libinput-driver "Xorg Libinput Driver-1.5.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-config {#installation-of-lxqt-config .sect2}

Install [lxqt-config]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lxqt-config, lxqt-config-appearance, lxqt-config-brightness, lxqt-config-file-associations, lxqt-config-input, lxqt-config-locale, and lxqt-config-monitor]{.segbody}
:::

::: seg
**Installed Library:** [liblxqt-config-cursor.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/lxqt-config]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------
  []{#lxqt-config-prog}[[**lxqt-config**]{.command}]{.term}                                  is the [LXQt]{.application} Configuration Center
  []{#lxqt-config-appearance}[[**lxqt-config-appearance**]{.command}]{.term}                 is used to change system themes, icon themes, and fonts used by applications in an LXQt session
  []{#lxqt-config-brightness}[[**lxqt-config-brightness**]{.command}]{.term}                 configures the brightness setting of a monitor
  []{#lxqt-config-file-associations}[[**lxqt-config-file-associations**]{.command}]{.term}   is used to associate filetypes with programs
  []{#lxqt-config-input}[[**lxqt-config-input**]{.command}]{.term}                           is used to configure input devices, setting options such as the mouse speed, the cursor, the keyboard speed, and the keyboard layout
  []{#lxqt-config-locale}[[**lxqt-config-locale**]{.command}]{.term}                         configures the locale used in [LXQt]{.application} sessions
  []{#lxqt-config-monitor}[[**lxqt-config-monitor**]{.command}]{.term}                       is a graphical frontend to [xrandr]{.application} that configures monitors on a system
  []{#liblxqt-config-cursor-lib}[`liblxqt-config-cursor.so`{.filename}]{.term}               contains the [liblxqt-config-cursor]{.application} API functions
  ------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-about.md "lxqt-about-2.4.0"){accesskey="p"}

    lxqt-about-2.4.0

-   [Next](lxqt-policykit.md "lxqt-policykit-2.4.0"){accesskey="n"}

    lxqt-policykit-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
