::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libpaper.md "libpaper-2.2.8"){accesskey="p"}

    libpaper-2.2.8

-   [Next](libproxy.md "libproxy-0.5.12"){accesskey="n"}

    libproxy-0.5.12

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libportal}libportal-0.9.1 {#libportal-0.9.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libportal {#introduction-to-libportal .sect2}

The [libportal]{.application} package provides a library that contains GIO-style async APIs for most Flatpak portals.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/flatpak/libportal/releases/download/0.9.1/libportal-0.9.1.tar.xz](https://github.com/flatpak/libportal/releases/download/0.9.1/libportal-0.9.1.tar.xz){.ulink}

-   Download MD5 sum: 0c63ee25d2e2986ce4df544fe8149046

-   Download size: 108 KB

-   Estimated disk space required: 4.0 MB (with tests; add 9 MB for docs)

-   Estimated build time: less than 0.1 SBU (add 0.6 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libportal-0.9.1-qt6.9_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libportal-0.9.1-qt6.9_fixes-1.patch){.ulink}
:::

### libportal Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Recommended

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}

#### Recommended (Runtime)

To make this package really useful, install [xdg-desktop-portal-1.20.4](../x/xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref}, [xdg-desktop-portal-gtk-1.15.3](../x/xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3"){.xref}, [xdg-desktop-portal-gnome-50.0](../gnome/xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){.xref} (if running a GNOME desktop environment), and [xdg-desktop-portal-lxqt-1.4.0](../lxqt/xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){.xref} (if running a LXQt desktop environment). They are not needed if only using this package to satisfy a build dependency.

#### Optional

[Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (for documentation), [dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} (for testing), [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of libportal {#installation-of-libportal .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of libportal is installed, move the headers out of the way so that later packages do not encounter conflicts (as the `root`{.systemitem} user):

``` root
if [ -e /usr/include/libportal ]; then
    rm -rf /usr/include/libportal.old &&
    mv -vf /usr/include/libportal{,.old}
fi
```
:::

First, apply a patch to fix building against Qt 6.9 and later:

``` userinput
patch -Np1 -i ../libportal-0.9.1-qt6.9_fixes-1.patch
```

Install [libportal]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D vapi=false       \
            -D docs=false       \
            .. &&
ninja
```

If you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed -i "/output/s/-1/-0.9.1/" ../doc/meson.build &&
meson configure -D docs=true                     &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. Note that additional `dbus-daemon`{.filename} processes may need to be killed after the tests are run.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D vapi=false`*: This parameter disables using [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}. Remove this parameter if you have it installed.

*`-D docs=false`*: Allow building this package without [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libportal.so, libportal-gtk3.so, libportal-gtk4.so, and libportal-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libportal and /usr/share/gtk-doc/html/libportal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------
  []{#libportal-lib}[`libportal.so`{.filename}]{.term}         provides GIO-style async APIs for most Flatpak portals
  []{#libportal-gtk3}[`libportal-gtk3.so`{.filename}]{.term}   provides GTK+-3 specific functions for interacting with Flatpak portals
  []{#libportal-gtk4}[`libportal-gtk4.so`{.filename}]{.term}   provides GTK-4 specific functions for interacting with Flatpak portals
  []{#libportal-qt6}[`libportal-qt6.so`{.filename}]{.term}     provides Qt6-specific functions for interacting with Flatpak portals
  ------------------------------------------------------------ -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libpaper.md "libpaper-2.2.8"){accesskey="p"}

    libpaper-2.2.8

-   [Next](libproxy.md "libproxy-0.5.12"){accesskey="n"}

    libproxy-0.5.12

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
