::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-control-center.md "gnome-control-center-50.2"){accesskey="p"}

    gnome-control-center-50.2

-   [Next](gnome-shell.md "gnome-shell-50.2"){accesskey="n"}

    gnome-shell-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mutter}Mutter-50.1 {#mutter-50.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Mutter {#introduction-to-mutter .sect2}

[Mutter]{.application} is the window manager for [GNOME]{.application}. It is not invoked directly, but from [GNOME Session]{.application} (on a machine with a hardware accelerated video driver).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/mutter/50/mutter-50.1.tar.xz](https://download.gnome.org/sources/mutter/50/mutter-50.1.tar.xz){.ulink}

-   Download MD5 sum: 5e4147170db223878e2845c2ae695640

-   Download size: 8.1 MB

-   Estimated disk space required: 90 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 1.4 SBU for tests)
:::

### Mutter Dependencies

#### Required

[at-spi2-core-2.60.4](../x/at-spi2-core.md "at-spi2-core-2.60.4"){.xref}, [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref}, [gnome-settings-daemon-50.1](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){.xref}, [graphene-1.10.8](../x/graphene.md "Graphene-1.10.8"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [libei-1.6.0](../x/libei.md "libei-1.6.0"){.xref}, [libxcvt-0.1.3](../x/libxcvt.md "libxcvt-0.1.3"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, and [pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libdisplay-info-0.3.0](../general/libdisplay-info.md "libdisplay-info-0.3.0"){.xref}, and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Recommended (Required to build the Wayland compositor)

[libinput-1.31.2](../x/x7driver.md#libinput "libinput-1.31.2"){.xref}, [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}, and [Xwayland-24.1.12](../x/xwayland.md "Xwayland-24.1.12"){.xref}

#### Optional

[dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (both required for tests), [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [Xorg-Server-21.1.23](../x/xorg-server.md "Xorg-Server-21.1.23"){.xref} (for X11 sessions, deprecated), [bash-completion](https://github.com/scop/bash-completion/){.ulink}, [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}, [**Xvfb**]{.command} (from [Xorg-Server-21.1.23](../x/xorg-server.md "Xorg-Server-21.1.23"){.xref} or [Xwayland-24.1.12](../x/xwayland.md "Xwayland-24.1.12"){.xref}), [xvfb-run](https://anduin.linuxfromscratch.org/BLFS/mutter/xvfb-run){.ulink}, and [zenity](https://gitlab.gnome.org/GNOME/zenity){.ulink} (the X11 tests would only run with all of the last three)
:::::

::: {.installation lang="en"}
## Installation of Mutter {#installation-of-mutter .sect2}

Fix an issue with the tests that would otherwise require the package to be built with debugging information:

``` userinput
sed "/tests_c_args =/s/$/ + ['-U', 'G_DISABLE_ASSERT']/" -i src/tests/meson.build &&
sed "/c_args:/a '-U', 'G_DISABLE_ASSERT'," -i src/tests/cogl/unit/meson.build
```

Install [Mutter]{.application} by running the following commands:

``` userinput
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

If you want to run the test suite, ensure both [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} are installed and issue:

``` userinput
meson configure -D tests=enabled &&
ninja test
```

The tests require an active Wayland session. Some tests are flaky (especially if your system is under a high load), so if a test fails you can try to run a specific test again by using the [**meson test *`<test name>`***]{.command} command. A few tests may fail depending on some system configuration. Don't make any mouse or keyboard input while the test suite is running or some tests may fail. You can also test basic functions of [Mutter]{.application} following [the section called “Starting Mutter”](mutter.md#mutter-starting "Starting Mutter"){.xref} after installing this package.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bash_completion=false`*: Allows building this package without the [bash-completion](https://github.com/scop/bash-completion/){.ulink} package installed.

*`-D tests=disabled`*: Allows building this package without [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} installed. It'll be overridden with [**meson configure**]{.command} if running the test suite.

*`-D profiler=false`*: Allows building this package without [Sysprof]{.application}. Remove this option if you've installed [Sysprof]{.application} and want to analyze the rendering performance of [Mutter]{.application}.

`-D x11=true`{.option}: Allows building this package with X11 support. X11 support is deprecated and will be removed in GNOME 50.
:::

::: {.starting lang="en"}
## []{#mutter-starting}Starting Mutter {#starting-mutter .sect2}

[Mutter]{.application} is normally used as a component of [gnome-shell]{.application}, but it can be used as a standalone Wayland compositor too. To run [Mutter]{.application} as a Wayland compositor, in a virtual console, issue:

``` userinput
mutter --wayland -- vte-2.91
```

Replace [**vte-2.91**]{.command} with the command line for the first application you want in the Wayland session. Note that once this application exits, the Wayland session will be terminated.

[Mutter]{.application} can also function as a nested compositor in another Wayland session. In a terminal emulator, issue:

``` userinput
MUTTER_DEBUG_DUMMY_MODE_SPECS=1920x1080 \
dbus-run-session mutter --wayland --devkit -- vte-2.91
```

There will be a 20-second delay before the nested compositor starts up because of [a known bug](https://gitlab.gnome.org/GNOME/mutter/-/issues/4159){.ulink}. Replace *`1920x1080`* with the size you want for the nested Wayland session.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gdctl, gnome-service-client, and mutter]{.segbody}
:::

::: seg
**Installed Libraries:** [libmutter-17.so and libmutter-test-17.so (optional)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,include,libexec/installed-tests,share/{,installed-tests}}/mutter-17]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gdctl}[[**gdctl**]{.command}]{.term}                                 controls the current monitor configuration on sessions that use Mutter as a window manager
  []{#gnome-service-client}[[**gnome-service-client**]{.command}]{.term}   launches a Wayland client with an optional tag
  []{#mutter-prog}[[**mutter**]{.command}]{.term}                          is a [Clutter]{.application} based compositing [GTK+]{.application} Window Manager
  []{#libmutter}[`libmutter-16.so`{.filename}]{.term}                      contains the [Mutter]{.application} API functions
  []{#libmutter-test}[`libmutter-test-16.so`{.filename}]{.term}            contains the [Mutter]{.application} test suite API functions; this library is only installed if the test suite of this package is run and it is needed by the [gnome-shell]{.application} test suite
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnome-control-center.md "gnome-control-center-50.2"){accesskey="p"}

    gnome-control-center-50.2

-   [Next](gnome-shell.md "gnome-shell-50.2"){accesskey="n"}

    gnome-shell-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
