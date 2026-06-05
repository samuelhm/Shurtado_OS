<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-control-center.md "gnome-control-center-50.2")

    gnome-control-center-50.2

-   [Next](gnome-shell.md "gnome-shell-50.2")

    gnome-shell-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Mutter-50.1 {#mutter-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Mutter {#introduction-to-mutter}

<span class="application">Mutter</span> is the window manager for <span class="application">GNOME</span>. It is not invoked directly, but from <span class="application">GNOME Session</span> (on a machine with a hardware accelerated video driver).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/mutter/50/mutter-50.1.tar.xz">https://download.gnome.org/sources/mutter/50/mutter-50.1.tar.xz</a>

-   Download MD5 sum: 5e4147170db223878e2845c2ae695640

-   Download size: 8.1 MB

-   Estimated disk space required: 90 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 1.4 SBU for tests)
</div>

### Mutter Dependencies

#### Required

<a class="xref" href="../x/at-spi2-core.md" title="at-spi2-core-2.60.4">at-spi2-core-2.60.4</a>, <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, <a class="xref" href="gnome-settings-daemon.md" title="gnome-settings-daemon-50.1">gnome-settings-daemon-50.1</a>, <a class="xref" href="../x/graphene.md" title="Graphene-1.10.8">graphene-1.10.8</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../x/libei.md" title="libei-1.6.0">libei-1.6.0</a>, <a class="xref" href="../x/libxcvt.md" title="libxcvt-0.1.3">libxcvt-0.1.3</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, and <a class="xref" href="../multimedia/pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/libdisplay-info.md" title="libdisplay-info-0.3.0">libdisplay-info-0.3.0</a>, and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Recommended (Required to build the Wayland compositor)

<a class="xref" href="../x/x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a>, <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>, and <a class="xref" href="../x/xwayland.md" title="Xwayland-24.1.12">Xwayland-24.1.12</a>

#### Optional

<a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (both required for tests), <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../x/xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> (for X11 sessions, deprecated), <a class="ulink" href="https://github.com/scop/bash-completion/">bash-completion</a>, <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>, <span class="command"><strong>Xvfb</strong></span> (from <a class="xref" href="../x/xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> or <a class="xref" href="../x/xwayland.md" title="Xwayland-24.1.12">Xwayland-24.1.12</a>), <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/mutter/xvfb-run">xvfb-run</a>, and <a class="ulink" href="https://gitlab.gnome.org/GNOME/zenity">zenity</a> (the X11 tests would only run with all of the last three)
</div>

<div class="installation" lang="en">
## Installation of Mutter {#installation-of-mutter}

Fix an issue with the tests that would otherwise require the package to be built with debugging information:

```bash
sed "/tests_c_args =/s/$/ + ['-U', 'G_DISABLE_ASSERT']/" -i src/tests/meson.build &&
sed "/c_args:/a '-U', 'G_DISABLE_ASSERT'," -i src/tests/cogl/unit/meson.build
```

Install <span class="application">Mutter</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D tests=disabled        \
            -D profiler=false        \
            -D bash_completion=false \
            ..                       &&
ninja
```

If you want to run the test suite, ensure both <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> are installed and issue:

```bash
meson configure -D tests=enabled &&
ninja test
```

The tests require an active Wayland session. Some tests are flaky (especially if your system is under a high load), so if a test fails you can try to run a specific test again by using the <span class="command"><strong>meson test <em>`<test name>`</strong></em></span> command. A few tests may fail depending on some system configuration. Don't make any mouse or keyboard input while the test suite is running or some tests may fail. You can also test basic functions of <span class="application">Mutter</span> following <a class="xref" href="mutter.md#mutter-starting" title="Starting Mutter">the section called “Starting Mutter”</a> after installing this package.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bash_completion=false`*: Allows building this package without the <a class="ulink" href="https://github.com/scop/bash-completion/">bash-completion</a> package installed.

*`-D tests=disabled`*: Allows building this package without <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> installed. It'll be overridden with <span class="command"><strong>meson configure</strong></span> if running the test suite.

*`-D profiler=false`*: Allows building this package without <span class="application">Sysprof</span>. Remove this option if you've installed <span class="application">Sysprof</span> and want to analyze the rendering performance of <span class="application">Mutter</span>.

<code class="option">-D x11=true</code>: Allows building this package with X11 support. X11 support is deprecated and will be removed in GNOME 50.
</div>

<div class="starting" lang="en">
## Starting Mutter {#starting-mutter}

<span class="application">Mutter</span> is normally used as a component of <span class="application">gnome-shell</span>, but it can be used as a standalone Wayland compositor too. To run <span class="application">Mutter</span> as a Wayland compositor, in a virtual console, issue:

```bash
mutter --wayland -- vte-2.91
```

Replace <span class="command"><strong>vte-2.91</strong></span> with the command line for the first application you want in the Wayland session. Note that once this application exits, the Wayland session will be terminated.

<span class="application">Mutter</span> can also function as a nested compositor in another Wayland session. In a terminal emulator, issue:

```bash
MUTTER_DEBUG_DUMMY_MODE_SPECS=1920x1080 \
dbus-run-session mutter --wayland --devkit -- vte-2.91
```

There will be a 20-second delay before the nested compositor starts up because of <a class="ulink" href="https://gitlab.gnome.org/GNOME/mutter/-/issues/4159">a known bug</a>. Replace *`1920x1080`* with the size you want for the nested Wayland session.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gdctl, gnome-service-client, and mutter</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmutter-17.so and libmutter-test-17.so (optional)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,include,libexec/installed-tests,share/{,installed-tests}}/mutter-17</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gdctl"></a><span class="command"><span class="term"><strong>gdctl</strong></span></span>                                 controls the current monitor configuration on sessions that use Mutter as a window manager
  <a id="gnome-service-client"></a><span class="command"><span class="term"><strong>gnome-service-client</strong></span></span>   launches a Wayland client with an optional tag
  <a id="mutter-prog"></a><span class="command"><span class="term"><strong>mutter</strong></span></span>                          is a <span class="application">Clutter</span> based compositing <span class="application">GTK+</span> Window Manager
  <a id="libmutter"></a><span class="term"><code class="filename">libmutter-16.so</code></span>                      contains the <span class="application">Mutter</span> API functions
  <a id="libmutter-test"></a><span class="term"><code class="filename">libmutter-test-16.so</code></span>            contains the <span class="application">Mutter</span> test suite API functions; this library is only installed if the test suite of this package is run and it is needed by the <span class="application">gnome-shell</span> test suite
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-control-center.md "gnome-control-center-50.2")

    gnome-control-center-50.2

-   [Next](gnome-shell.md "gnome-shell-50.2")

    gnome-shell-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
