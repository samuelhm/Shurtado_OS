::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorg-server.md "Xorg-Server-21.1.23"){accesskey="p"}

    Xorg-Server-21.1.23

-   [Next](twm.md "twm-1.0.13.1"){accesskey="n"}

    twm-1.0.13.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg7-input-driver}Xorg Input Drivers {#xorg-input-drivers .sect1}

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xorg Input Drivers {#introduction-to-xorg-input-drivers .sect2}

The [Xorg Input Drivers]{.application} page contains the instructions for building Xorg input drivers that are necessary in order for Xorg Server to respond user inputs.

:::: {.sect3 lang="en"}
### []{#xorg-input-drivers}Xorg Input Drivers {#xorg-input-drivers-1 .sect3}

::: itemizedlist
-   [libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref}

-   [Xorg Evdev Driver-2.11.0](x7driver.md#xorg-evdev-driver "Xorg Evdev Driver-2.11.0"){.xref}

-   [libinput-1.31.2](x7driver.md#libinput "libinput-1.31.2"){.xref}

-   [xorg-libinput-1.5.0](x7driver.md#xorg-libinput-driver "Xorg Libinput Driver-1.5.0"){.xref}

-   [Xorg Synaptics Driver-1.10.0](x7driver.md#xorg-synaptics-driver "Xorg Synaptics Driver-1.10.0"){.xref}

-   [Xorg Wacom Driver-1.2.4](x7driver.md#xorg-wacom-driver "Xorg Wacom Driver-1.2.4"){.xref}
:::
::::
:::::

:::::::::::::::: {.sect2 lang="en"}
## []{#libevdev}libevdev 1.13.6 {#libevdev-1.13.6 .sect2}

::::: {.package lang="en"}
### Introduction to libevdev {#introduction-to-libevdev .sect3}

The [libevdev]{.application} package contains common functions for Xorg input drivers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/libevdev/libevdev-1.13.6.tar.xz](https://www.freedesktop.org/software/libevdev/libevdev-1.13.6.tar.xz){.ulink}

-   Download MD5 sum: 4202ff132e3efe95fe9ca2c4f8f119f7

-   Download size: 464 KB

-   Estimated disk space required: 5.0 MB (without tests

-   Estimated build time: less than 0.1 SBU (without tests)
:::

#### libevdev Dependencies

##### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (optional for tests), and [check](https://libcheck.github.io/check/){.ulink} (required for tests)
:::::

::: {.kernel lang="en"}
### []{#libevdev-kernel}Kernel Configuration {#kernel-configuration .sect3}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
Device Drivers --->
  Input device support --->
    -*-   Generic input layer (needed for keyboard, mouse, ...)          [INPUT]
    <*/M>   Event interface                                        [INPUT_EVDEV]
```

If you want to test this package with full coverage, the following options are needed as well:

``` screen
Device Drivers --->
  Input device support --->
    -*- Generic input layer (needed for keyboard, mouse, ...)            [INPUT]
    [*]   Miscellaneous devices --->                                [INPUT_MISC]
      <*/M>   User level driver support                           [INPUT_UINPUT]
```

If you build this as a module, it needs to be inserted before the test suite runs.
:::

::: {.installation lang="en"}
### Installation of libevdev {#installation-of-libevdev .sect3}

Install [libevdev]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=$XORG_PREFIX     \
      --buildtype=release       \
      -D documentation=disabled \
      -D tests=disabled         &&
ninja
```

The test suite requires [Check]{.application} that we've removed from LFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations .sect3}

*`-D tests=disabled`*: This allows the package to compile if [Check]{.application} is not installed. We've removed [Check]{.application} from LFS.
:::

::::::::: {.content lang="en"}
### Contents {#contents .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Xorg Programs:** [libevdev-tweak-device, mouse-dpi-tool, and touchpad-edge-detector]{.segbody}
:::

::: seg
**Installed Xorg Library:** [libevdev.so]{.segbody}
:::

::: seg
**Installed Xorg Directory:** [\$XORG_PREFIX/include/libevdev-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
#### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#libevdev-tweak-device}[[**libevdev-tweak-device**]{.command}]{.term}     is a tool to change some kernel device properties
  []{#mouse-dpi-tool}[[**mouse-dpi-tool**]{.command}]{.term}                   is a tool to estimate the resolution of a mouse
  []{#touchpad-edge-detector}[[**touchpad-edge-detector**]{.command}]{.term}   touchpad-edge-detector is a tool that reads the touchpad events from the kernel and calculates the minimum and maximum for the x and y coordinates, respectively
  []{#libevdev-lib}[`libevdev.so`{.filename}]{.term}                           is a library of Xorg driver input functions
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

:::::::::::: {.sect2 lang="en"}
## []{#xorg-evdev-driver}Xorg Evdev Driver-2.11.0 {#xorg-evdev-driver-2.11.0 .sect2}

::::: {.package lang="en"}
### Introduction to Xorg Evdev Driver {#introduction-to-xorg-evdev-driver .sect3}

The [Xorg Evdev Driver]{.application} package contains a Generic Linux input driver for the Xorg X server. It handles keyboard, mouse, touchpads and wacom devices, though for touchpad and wacom advanced handling, additional drivers are required.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/driver/xf86-input-evdev-2.11.0.tar.xz](https://www.x.org/pub/individual/driver/xf86-input-evdev-2.11.0.tar.xz){.ulink}

-   Download MD5 sum: faa89be0ef86aebd6fd0a03eed23839c

-   Download size: 344 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Xorg Evdev Driver Dependencies

##### Required

[libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref}, [mtdev-1.1.7](../general/mtdev.md "mtdev-1.1.7"){.xref}, and [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Xorg Evdev Driver {#installation-of-xorg-evdev-driver .sect3}

Install [Xorg Evdev Driver]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents-1 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Xorg Driver:** [evdev_drv.so]{.segbody}
:::
::::
:::::

::: variablelist
#### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------
  []{#evdev_drv}[`evdev_drv.so`{.filename}]{.term}   is an Xorg input driver for Linux generic event devices
  -------------------------------------------------- ---------------------------------------------------------
:::
:::::::
::::::::::::

:::::::::::::::: {.sect2 lang="en"}
## []{#libinput}libinput-1.31.2 {#libinput-1.31.2 .sect2}

::::: {.package lang="en"}
### Introduction to Libinput {#introduction-to-libinput .sect3}

[libinput]{.application} is a library that handles input devices for display servers and other applications that need to directly deal with input devices.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.31.2/libinput-1.31.2.tar.gz](https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.31.2/libinput-1.31.2.tar.gz){.ulink}

-   Download MD5 sum: d92d3c0bbc71a77d63abb8d41857d645

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB (add 47 MB for documentation and tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for documentation and 0.3 SBU for minor tests)
:::

#### libinput Dependencies

##### Required

[libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref} and [mtdev-1.1.7](../general/mtdev.md "mtdev-1.1.7"){.xref}

##### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (to run the tests), [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} (to build the GUI event viewer), [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref} (required for tests), [libwacom-2.19.0](../general/libwacom.md "libwacom-2.19.0"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [recommonmark-0.7.1](../general/python-modules.md#recommonmark "Recommonmark-0.7.1"){.xref}, and [sphinx_rtd_theme-3.1.0](../general/python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref} (required to build documentation), [pyparsing-3.3.2](../general/python-modules.md#pyparsing "pyparsing-3.3.2"){.xref} (for one non-root test), [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} (for another non-root test), and [check](https://libcheck.github.io/check/){.ulink} (for another non-root test)
:::::

::: {.kernel lang="en"}
### []{#libinput-kernel}Kernel Configuration for Running the Libinput Test Suite {#kernel-configuration-for-running-the-libinput-test-suite .sect3}

Although libinput works with the same kernel configuration used by [libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref}, its standard and more expansive test suite requires the presence of `/dev/uinput`{.filename} (as well as both [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} and [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}).

If you wish to run the standard test suite, enable the following option in the kernel configuration and recompile the kernel if necessary:

``` screen
Device Drivers --->
  Input device support --->
    -*- Generic input layer (needed for keyboard, mouse, ...)            [INPUT]
    [*]   Miscellaneous devices --->                                [INPUT_MISC]
      <*/M>   User level driver support                           [INPUT_UINPUT]
```

If you build this as a module, it needs to be inserted before the test suite runs.
:::

::: {.installation lang="en"}
### Installation of Libinput {#installation-of-libinput .sect3}

Install [libinput]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -D debug-gui=false    \
      -D tests=false        \
      -D libwacom=false     \
      -D udev-dir=/usr/lib/udev &&
ninja
```

To test the package, issue: [**meson configure -D tests=true && ninja test**]{.command}. Many tests are skipped unless running the test suite as the `root`{.systemitem} user. To run those tests, as the `root`{.systemitem} user issue: [**meson test --suite=root**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you have passed `-D documentation=true`{.option} to [**meson**]{.command}, you can install the generated documentation by running the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755      /usr/share/doc/libinput-1.31.2/html &&
cp -rv Documentation/* /usr/share/doc/libinput-1.31.2/html
```
:::

::: {.commands lang="en"}
### Command Explanations {#command-explanations-1 .sect3}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D debug-gui=false`*: This switch disables creation of a visual debug helper for libinput. Remove if you want it, and you have [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} installed.

*`-D tests=false`*: This switch disables compilation of the standard test suite. Even with the tests defined as false, you can still run the first six minor tests as a regular user, but one will be skipped if [pyparsing-3.3.2](../general/python-modules.md#pyparsing "pyparsing-3.3.2"){.xref} is not installed, and another one if [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} is not installed.

*`-D libwacom=false`*: Remove this option if you have [libwacom-2.19.0](../general/libwacom.md "libwacom-2.19.0"){.xref} installed, or if you are installing GNOME.

*`-D udev-dir=/usr/lib/udev`*: In case that the value of `XORG_PREFIX`{.envar} is not set to `/usr`{.filename}, this option prevents the package from installing Udev rules and helpers into `$XORG_PREFIX/lib/udev`{.filename} which is not searched by Udev daemon. This option is not needed for systems with `XORG_PREFIX`{.envar} set to `/usr`{.filename}, but does no harm.

`-D documentation=true`{.option}: This switch enables generation of the documentation. Add it if you want to generate the documentation. See the optional dependencies required to build documentation.
:::

::::::::: {.content lang="en"}
### Contents {#contents-2 .sect3}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [libinput]{.segbody}
:::

::: seg
**Installed Libraries:** [libinput.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/libinput, \$XORG_PREFIX/libexec/libinput, \$XORG_PREFIX/share/libinput, and (optionally) \$XORG_PREFIX/share/doc/libinput-1.31.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  []{#libinput-prog}[[**libinput**]{.command}]{.term}   is a set of tools to interface with the [libinput]{.application} library
  []{#libinput-lib}[`libinput.so`{.filename}]{.term}    contains API functions for handling input devices
  ----------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

:::::::::::: {.sect2 lang="en"}
## []{#xorg-libinput-driver}Xorg Libinput Driver-1.5.0 {#xorg-libinput-driver-1.5.0 .sect2}

::::: {.package lang="en"}
### Introduction to Xorg Libinput Driver {#introduction-to-xorg-libinput-driver .sect3}

The [X.Org Libinput Driver]{.application} is a thin wrapper around libinput and allows for libinput to be used for input devices in X. This driver can be used as drop-in replacement for evdev and synaptics.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/driver/xf86-input-libinput-1.5.0.tar.xz](https://www.x.org/pub/individual/driver/xf86-input-libinput-1.5.0.tar.xz){.ulink}

-   Download MD5 sum: f8d0fb6987d843e688d597c2b66ec824

-   Download size: 324 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Xorg Libinput Driver Dependencies

##### Required

[libinput-1.31.2](x7driver.md#libinput "libinput-1.31.2"){.xref} and [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Xorg Libinput Driver {#installation-of-xorg-libinput-driver .sect3}

Install [Xorg Libinput Driver]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

To test the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
### Contents {#contents-3 .sect3}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Xorg Driver:** [libinput_drv.so]{.segbody}
:::
::::
:::::

::: variablelist
#### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------
  []{#libinput_drv}[`libinput_drv.so`{.filename}]{.term}   is an Xorg input driver for mouse, keyboard, touchpad, touchscreen, and tablet devices
  -------------------------------------------------------- ----------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::::::::::::: {.sect2 lang="en"}
## []{#xorg-synaptics-driver}Xorg Synaptics Driver-1.10.0 {#xorg-synaptics-driver-1.10.0 .sect2}

::::: {.package lang="en"}
### Introduction to Xorg Synaptics Driver {#introduction-to-xorg-synaptics-driver .sect3}

The [Xorg Synaptics Driver]{.application} package contains the X.Org Input Driver, support programs and SDK for Synaptics touchpads. Even though the evdev driver can handle touchpads very well, this driver is required if you want to use advanced features like multi tapping, scrolling with touchpad, turning the touchpad off while typing, etc.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.10.0.tar.xz](https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.10.0.tar.xz){.ulink}

-   Download MD5 sum: 017383c13a0d0f4cb320be477ab25513

-   Download size: 424 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Xorg Synaptics Driver Dependencies

##### Required

[libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref} and [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}
:::::

::: {.installation lang="en"}
### Installation of Xorg Synaptics Driver {#installation-of-xorg-synaptics-driver .sect3}

Install [Xorg Synaptics Driver]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-4 .sect3}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Programs:** [synclient and syndaemon]{.segbody}
:::

::: seg
**Installed Xorg Driver:** [synaptics_drv.so]{.segbody}
:::
:::::
::::::

::: variablelist
#### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  []{#synclient}[[**synclient**]{.command}]{.term}           is a command line utility used to query and modify Synaptics driver options
  []{#syndaemon}[[**syndaemon**]{.command}]{.term}           is a program that monitors keyboard activity and disables the touchpad when the keyboard is being used
  []{#synaptics_drv}[`synaptics_drv.so`{.filename}]{.term}   is an Xorg input driver for touchpads
  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::

:::::::::::::: {.sect2 lang="en"}
## []{#xorg-wacom-driver}Xorg Wacom Driver-1.2.4 {#xorg-wacom-driver-1.2.4 .sect2}

::::: {.package lang="en"}
### Introduction to Xorg Wacom Driver {#introduction-to-xorg-wacom-driver .sect3}

The [Xorg Wacom Driver]{.application} package contains the X.Org X11 driver and SDK for Wacom and Wacom-like tablets. It is not required to use a Wacom tablet, the [xf86-input-evdev]{.application} driver can handle these devices without problems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

#### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/linuxwacom/xf86-input-wacom/releases/download/xf86-input-wacom-1.2.4/xf86-input-wacom-1.2.4.tar.bz2](https://github.com/linuxwacom/xf86-input-wacom/releases/download/xf86-input-wacom-1.2.4/xf86-input-wacom-1.2.4.tar.bz2){.ulink}

-   Download MD5 sum: e22300fe7cf162fa2b1a6e64ef7341f3

-   Download size: 676 KB

-   Estimated disk space required: 6.4 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

#### Xorg Wacom Drivers Dependencies

##### Required

[Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}

##### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref}
:::::

::: {.kernel lang="en"}
### []{#xorg-wacom-driver-kernel}Kernel Configuration {#kernel-configuration-1 .sect3}

To use a Wacom tablet with USB interface, enable the following options in your kernel configuration and recompile. Note that other configuration options could be required for tablet with a serial or bluetooth interface:

``` screen
Device Drivers --->
  [*] HID bus support --->                                         [HID_SUPPORT]
    {*/M} HID bus core support                                             [HID]
      Special HID drivers --->
      <*/M>   Wacom Intuos/Graphire tablet support (USB)             [HID_WACOM]
    USB HID support --->
      <*/M> USB HID transport layer                                    [USB_HID]
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M> Support for Host-side USB                                        [USB]
```
:::

::: {.installation lang="en"}
### Installation of Xorg Wacom Driver {#installation-of-xorg-wacom-driver .sect3}

Install [Xorg Wacom Driver]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
### Contents {#contents-5 .sect3}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Programs:** [isdv4-serial-debugger, isdv4-serial-inputattach, and xsetwacom]{.segbody}
:::

::: seg
**Installed Xorg Driver:** [wacom_drv.so]{.segbody}
:::
:::::
::::::

::: variablelist
#### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------
  []{#xsetwacom}[[**xsetwacom**]{.command}]{.term}   is a commandline utility used to query and modify wacom driver settings
  []{#wacom_drv}[`wacom_drv.so`{.filename}]{.term}   is an Xorg input driver for Wacom devices
  -------------------------------------------------- -------------------------------------------------------------------------
:::
::::::::
::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](xorg-server.md "Xorg-Server-21.1.23"){accesskey="p"}

    Xorg-Server-21.1.23

-   [Next](twm.md "twm-1.0.13.1"){accesskey="n"}

    twm-1.0.13.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
