<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorg-server.md "Xorg-Server-21.1.23")

    Xorg-Server-21.1.23

-   [Next](twm.md "twm-1.0.13.1")

    twm-1.0.13.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xorg Input Drivers {#xorg-input-drivers}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xorg Input Drivers {#introduction-to-xorg-input-drivers}

The <span class="application">Xorg Input Drivers</span> page contains the instructions for building Xorg input drivers that are necessary in order for Xorg Server to respond user inputs.

<div class="sect3" lang="en">
### Xorg Input Drivers {#xorg-input-drivers-1}

<div class="itemizedlist">
-   <a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a>

-   <a class="xref" href="x7driver.md#xorg-evdev-driver" title="Xorg Evdev Driver-2.11.0">Xorg Evdev Driver-2.11.0</a>

-   <a class="xref" href="x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a>

-   <a class="xref" href="x7driver.md#xorg-libinput-driver" title="Xorg Libinput Driver-1.5.0">xorg-libinput-1.5.0</a>

-   <a class="xref" href="x7driver.md#xorg-synaptics-driver" title="Xorg Synaptics Driver-1.10.0">Xorg Synaptics Driver-1.10.0</a>

-   <a class="xref" href="x7driver.md#xorg-wacom-driver" title="Xorg Wacom Driver-1.2.4">Xorg Wacom Driver-1.2.4</a>
</div>
</div>
</div>

<div class="sect2" lang="en">
## libevdev 1.13.6 {#libevdev-1.13.6}

<div class="package" lang="en">
### Introduction to libevdev {#introduction-to-libevdev}

The <span class="application">libevdev</span> package contains common functions for Xorg input drivers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/libevdev/libevdev-1.13.6.tar.xz">https://www.freedesktop.org/software/libevdev/libevdev-1.13.6.tar.xz</a>

-   Download MD5 sum: 4202ff132e3efe95fe9ca2c4f8f119f7

-   Download size: 464 KB

-   Estimated disk space required: 5.0 MB (without tests

-   Estimated build time: less than 0.1 SBU (without tests)
</div>

#### libevdev Dependencies

##### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (optional for tests), and <a class="ulink" href="https://libcheck.github.io/check/">check</a> (required for tests)
</div>

<div class="kernel" lang="en">
### Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
Device Drivers --->
  Input device support --->
    -*-   Generic input layer (needed for keyboard, mouse, ...)          [INPUT]
    <*/M>   Event interface                                        [INPUT_EVDEV]
```

If you want to test this package with full coverage, the following options are needed as well:

```console
Device Drivers --->
  Input device support --->
    -*- Generic input layer (needed for keyboard, mouse, ...)            [INPUT]
    [*]   Miscellaneous devices --->                                [INPUT_MISC]
      <*/M>   User level driver support                           [INPUT_UINPUT]
```

If you build this as a module, it needs to be inserted before the test suite runs.
</div>

<div class="installation" lang="en">
### Installation of libevdev {#installation-of-libevdev}

Install <span class="application">libevdev</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=$XORG_PREFIX     \
      --buildtype=release       \
      -D documentation=disabled \
      -D tests=disabled         &&
ninja
```

The test suite requires <span class="application">Check</span> that we've removed from LFS.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations}

*`-D tests=disabled`*: This allows the package to compile if <span class="application">Check</span> is not installed. We've removed <span class="application">Check</span> from LFS.
</div>

<div class="content" lang="en">
### Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Xorg Programs:** <span class="segbody">libevdev-tweak-device, mouse-dpi-tool, and touchpad-edge-detector</span>
</div>

<div class="seg">
**Installed Xorg Library:** <span class="segbody">libevdev.so</span>
</div>

<div class="seg">
**Installed Xorg Directory:** <span class="segbody">\$XORG_PREFIX/include/libevdev-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libevdev-tweak-device"></a><span class="command"><span class="term"><strong>libevdev-tweak-device</strong></span></span>     is a tool to change some kernel device properties
  <a id="mouse-dpi-tool"></a><span class="command"><span class="term"><strong>mouse-dpi-tool</strong></span></span>                   is a tool to estimate the resolution of a mouse
  <a id="touchpad-edge-detector"></a><span class="command"><span class="term"><strong>touchpad-edge-detector</strong></span></span>   touchpad-edge-detector is a tool that reads the touchpad events from the kernel and calculates the minimum and maximum for the x and y coordinates, respectively
  <a id="libevdev-lib"></a><span class="term"><code class="filename">libevdev.so</code></span>                           is a library of Xorg driver input functions
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Xorg Evdev Driver-2.11.0 {#xorg-evdev-driver-2.11.0}

<div class="package" lang="en">
### Introduction to Xorg Evdev Driver {#introduction-to-xorg-evdev-driver}

The <span class="application">Xorg Evdev Driver</span> package contains a Generic Linux input driver for the Xorg X server. It handles keyboard, mouse, touchpads and wacom devices, though for touchpad and wacom advanced handling, additional drivers are required.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/driver/xf86-input-evdev-2.11.0.tar.xz">https://www.x.org/pub/individual/driver/xf86-input-evdev-2.11.0.tar.xz</a>

-   Download MD5 sum: faa89be0ef86aebd6fd0a03eed23839c

-   Download size: 344 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Xorg Evdev Driver Dependencies

##### Required

<a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a>, <a class="xref" href="../general/mtdev.md" title="mtdev-1.1.7">mtdev-1.1.7</a>, and <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>
</div>

<div class="installation" lang="en">
### Installation of Xorg Evdev Driver {#installation-of-xorg-evdev-driver}

Install <span class="application">Xorg Evdev Driver</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-1}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Xorg Driver:** <span class="segbody">evdev_drv.so</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------
  <a id="evdev_drv"></a><span class="term"><code class="filename">evdev_drv.so</code></span>   is an Xorg input driver for Linux generic event devices
  -------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## libinput-1.31.2 {#libinput-1.31.2}

<div class="package" lang="en">
### Introduction to Libinput {#introduction-to-libinput}

<span class="application">libinput</span> is a library that handles input devices for display servers and other applications that need to directly deal with input devices.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.31.2/libinput-1.31.2.tar.gz">https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.31.2/libinput-1.31.2.tar.gz</a>

-   Download MD5 sum: d92d3c0bbc71a77d63abb8d41857d645

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB (add 47 MB for documentation and tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for documentation and 0.3 SBU for minor tests)
</div>

#### libinput Dependencies

##### Required

<a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a> and <a class="xref" href="../general/mtdev.md" title="mtdev-1.1.7">mtdev-1.1.7</a>

##### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (to run the tests), <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (to build the GUI event viewer), <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a> (required for tests), <a class="xref" href="../general/libwacom.md" title="libwacom-2.19.0">libwacom-2.19.0</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../general/python-modules.md#recommonmark" title="Recommonmark-0.7.1">recommonmark-0.7.1</a>, and <a class="xref" href="../general/python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a> (required to build documentation), <a class="xref" href="../general/python-modules.md#pyparsing" title="pyparsing-3.3.2">pyparsing-3.3.2</a> (for one non-root test), <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for another non-root test), and <a class="ulink" href="https://libcheck.github.io/check/">check</a> (for another non-root test)
</div>

<div class="kernel" lang="en">
### Kernel Configuration for Running the Libinput Test Suite {#kernel-configuration-for-running-the-libinput-test-suite}

Although libinput works with the same kernel configuration used by <a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a>, its standard and more expansive test suite requires the presence of <code class="filename">/dev/uinput</code> (as well as both <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> and <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>).

If you wish to run the standard test suite, enable the following option in the kernel configuration and recompile the kernel if necessary:

```console
Device Drivers --->
  Input device support --->
    -*- Generic input layer (needed for keyboard, mouse, ...)            [INPUT]
    [*]   Miscellaneous devices --->                                [INPUT_MISC]
      <*/M>   User level driver support                           [INPUT_UINPUT]
```

If you build this as a module, it needs to be inserted before the test suite runs.
</div>

<div class="installation" lang="en">
### Installation of Libinput {#installation-of-libinput}

Install <span class="application">libinput</span> by running the following commands:

```bash
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

To test the package, issue: <span class="command"><strong>meson configure -D tests=true && ninja test</strong></span>. Many tests are skipped unless running the test suite as the <code class="systemitem">root</code> user. To run those tests, as the <code class="systemitem">root</code> user issue: <span class="command"><strong>meson test --suite=root</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you have passed <code class="option">-D documentation=true</code> to <span class="command"><strong>meson</strong></span>, you can install the generated documentation by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755      /usr/share/doc/libinput-1.31.2/html &&
cp -rv Documentation/* /usr/share/doc/libinput-1.31.2/html
```
</div>

<div class="commands" lang="en">
### Command Explanations {#command-explanations-1}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D debug-gui=false`*: This switch disables creation of a visual debug helper for libinput. Remove if you want it, and you have <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed.

*`-D tests=false`*: This switch disables compilation of the standard test suite. Even with the tests defined as false, you can still run the first six minor tests as a regular user, but one will be skipped if <a class="xref" href="../general/python-modules.md#pyparsing" title="pyparsing-3.3.2">pyparsing-3.3.2</a> is not installed, and another one if <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> is not installed.

*`-D libwacom=false`*: Remove this option if you have <a class="xref" href="../general/libwacom.md" title="libwacom-2.19.0">libwacom-2.19.0</a> installed, or if you are installing GNOME.

*`-D udev-dir=/usr/lib/udev`*: In case that the value of <code class="envar">XORG_PREFIX</code> is not set to <code class="filename">/usr</code>, this option prevents the package from installing Udev rules and helpers into <code class="filename">$XORG_PREFIX/lib/udev</code> which is not searched by Udev daemon. This option is not needed for systems with <code class="envar">XORG_PREFIX</code> set to <code class="filename">/usr</code>, but does no harm.

<code class="option">-D documentation=true</code>: This switch enables generation of the documentation. Add it if you want to generate the documentation. See the optional dependencies required to build documentation.
</div>

<div class="content" lang="en">
### Contents {#contents-2}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">libinput</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libinput.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/libinput, \$XORG_PREFIX/libexec/libinput, \$XORG_PREFIX/share/libinput, and (optionally) \$XORG_PREFIX/share/doc/libinput-1.31.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  <a id="libinput-prog"></a><span class="command"><span class="term"><strong>libinput</strong></span></span>   is a set of tools to interface with the <span class="application">libinput</span> library
  <a id="libinput-lib"></a><span class="term"><code class="filename">libinput.so</code></span>    contains API functions for handling input devices
  ----------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Xorg Libinput Driver-1.5.0 {#xorg-libinput-driver-1.5.0}

<div class="package" lang="en">
### Introduction to Xorg Libinput Driver {#introduction-to-xorg-libinput-driver}

The <span class="application">X.Org Libinput Driver</span> is a thin wrapper around libinput and allows for libinput to be used for input devices in X. This driver can be used as drop-in replacement for evdev and synaptics.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/driver/xf86-input-libinput-1.5.0.tar.xz">https://www.x.org/pub/individual/driver/xf86-input-libinput-1.5.0.tar.xz</a>

-   Download MD5 sum: f8d0fb6987d843e688d597c2b66ec824

-   Download size: 324 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Xorg Libinput Driver Dependencies

##### Required

<a class="xref" href="x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a> and <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>
</div>

<div class="installation" lang="en">
### Installation of Xorg Libinput Driver {#installation-of-xorg-libinput-driver}

Install <span class="application">Xorg Libinput Driver</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

To test the results, issue <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-3}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Xorg Driver:** <span class="segbody">libinput_drv.so</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------
  <a id="libinput_drv"></a><span class="term"><code class="filename">libinput_drv.so</code></span>   is an Xorg input driver for mouse, keyboard, touchpad, touchscreen, and tablet devices
  -------------------------------------------------------- ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Xorg Synaptics Driver-1.10.0 {#xorg-synaptics-driver-1.10.0}

<div class="package" lang="en">
### Introduction to Xorg Synaptics Driver {#introduction-to-xorg-synaptics-driver}

The <span class="application">Xorg Synaptics Driver</span> package contains the X.Org Input Driver, support programs and SDK for Synaptics touchpads. Even though the evdev driver can handle touchpads very well, this driver is required if you want to use advanced features like multi tapping, scrolling with touchpad, turning the touchpad off while typing, etc.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.10.0.tar.xz">https://www.x.org/pub/individual/driver/xf86-input-synaptics-1.10.0.tar.xz</a>

-   Download MD5 sum: 017383c13a0d0f4cb320be477ab25513

-   Download size: 424 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Xorg Synaptics Driver Dependencies

##### Required

<a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a> and <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>
</div>

<div class="installation" lang="en">
### Installation of Xorg Synaptics Driver {#installation-of-xorg-synaptics-driver}

Install <span class="application">Xorg Synaptics Driver</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-4}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">synclient and syndaemon</span>
</div>

<div class="seg">
**Installed Xorg Driver:** <span class="segbody">synaptics_drv.so</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  <a id="synclient"></a><span class="command"><span class="term"><strong>synclient</strong></span></span>           is a command line utility used to query and modify Synaptics driver options
  <a id="syndaemon"></a><span class="command"><span class="term"><strong>syndaemon</strong></span></span>           is a program that monitors keyboard activity and disables the touchpad when the keyboard is being used
  <a id="synaptics_drv"></a><span class="term"><code class="filename">synaptics_drv.so</code></span>   is an Xorg input driver for touchpads
  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="sect2" lang="en">
## Xorg Wacom Driver-1.2.4 {#xorg-wacom-driver-1.2.4}

<div class="package" lang="en">
### Introduction to Xorg Wacom Driver {#introduction-to-xorg-wacom-driver}

The <span class="application">Xorg Wacom Driver</span> package contains the X.Org X11 driver and SDK for Wacom and Wacom-like tablets. It is not required to use a Wacom tablet, the <span class="application">xf86-input-evdev</span> driver can handle these devices without problems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

#### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/linuxwacom/xf86-input-wacom/releases/download/xf86-input-wacom-1.2.4/xf86-input-wacom-1.2.4.tar.bz2">https://github.com/linuxwacom/xf86-input-wacom/releases/download/xf86-input-wacom-1.2.4/xf86-input-wacom-1.2.4.tar.bz2</a>

-   Download MD5 sum: e22300fe7cf162fa2b1a6e64ef7341f3

-   Download size: 676 KB

-   Estimated disk space required: 6.4 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

#### Xorg Wacom Drivers Dependencies

##### Required

<a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>

##### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>
</div>

<div class="kernel" lang="en">
### Kernel Configuration {#kernel-configuration-1}

To use a Wacom tablet with USB interface, enable the following options in your kernel configuration and recompile. Note that other configuration options could be required for tablet with a serial or bluetooth interface:

```console
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
</div>

<div class="installation" lang="en">
### Installation of Xorg Wacom Driver {#installation-of-xorg-wacom-driver}

Install <span class="application">Xorg Wacom Driver</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
### Contents {#contents-5}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">isdv4-serial-debugger, isdv4-serial-inputattach, and xsetwacom</span>
</div>

<div class="seg">
**Installed Xorg Driver:** <span class="segbody">wacom_drv.so</span>
</div>
</div>
</div>

<div class="variablelist">
#### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------
  <a id="xsetwacom"></a><span class="command"><span class="term"><strong>xsetwacom</strong></span></span>   is a commandline utility used to query and modify wacom driver settings
  <a id="wacom_drv"></a><span class="term"><code class="filename">wacom_drv.so</code></span>   is an Xorg input driver for Wacom devices
  -------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xorg-server.md "Xorg-Server-21.1.23")

    Xorg-Server-21.1.23

-   [Next](twm.md "twm-1.0.13.1")

    twm-1.0.13.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
