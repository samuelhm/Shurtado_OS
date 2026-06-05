::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libepoxy.md "libepoxy-1.5.10"){accesskey="p"}

    libepoxy-1.5.10

-   [Next](libxklavier.md "libxklavier-5.4"){accesskey="n"}

    libxklavier-5.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libnotify}libnotify-0.8.8 {#libnotify-0.8.8 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libnotify {#introduction-to-libnotify .sect2}

The [libnotify]{.application} library is used to send desktop notifications to a notification daemon, as defined in the Desktop Notifications spec. These notifications can be used to inform the user about an event or display some form of information without getting in the user's way.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libnotify/0.8/libnotify-0.8.8.tar.xz](https://download.gnome.org/sources/libnotify/0.8/libnotify-0.8.8.tar.xz){.ulink}

-   Download MD5 sum: 35bef24dc1e9a336394556d09345e078

-   Download size: 116 KB

-   Estimated disk space required: 2.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### libnotify Dependencies

#### Required

[gdk-pixbuf-2.44.6](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}

#### Recommended

[GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref} (required for tests)

#### Optional (Required if building GNOME)

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (for documentation), [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and [xvfb-run](https://anduin.linuxfromscratch.org/BLFS/mutter/xvfb-run){.ulink} (optional for the test suite)

#### Required (runtime)

At least one of [notification-daemon-3.20.0](../general/notification-daemon.md "notification-daemon-3.20.0"){.xref}, [xfce4-notifyd-0.9.7](../xfce/xfce4-notifyd.md "xfce4-notifyd-0.9.7"){.xref}, or [lxqt-notificationd-2.4.0](../lxqt/lxqt-notificationd.md "lxqt-notificationd-2.4.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[GNOME Shell]{.application} and [KDE KWin]{.application} provide their own notification daemons.
:::
::::::

::: {.installation lang="en"}
## Installation of libnotify {#installation-of-libnotify .sect2}

Install [libnotify]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            -D man=false        \
            ..                  &&
ninja
```

To test the results, issue: [**ninja test**]{.command} to run the tests.

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir =/s@\$@ / 'libnotify'@" \
    -i ../docs/reference/meson.build   &&
meson configure -D gtk_doc=true        &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
if [ -e /usr/share/doc/libnotify ]; then
  rm -rf /usr/share/doc/libnotify-0.8.8
  mv -v  /usr/share/doc/libnotify{,-0.8.8}
fi
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D tests=false`{.option}: Use this option if you have not installed the recommended dependency [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [notify-send]{.segbody}
:::

::: seg
**Installed Library:** [libnotify.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libnotify and /usr/share/gtk-doc/html/libnotify]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------
  []{#notify-send}[[**notify-send**]{.command}]{.term}   is a command used to send notifications
  []{#libnotify-lib}[`libnotify.so`{.filename}]{.term}   contains the [libnotify]{.application} API functions
  ------------------------------------------------------ ------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libepoxy.md "libepoxy-1.5.10"){accesskey="p"}

    libepoxy-1.5.10

-   [Next](libxklavier.md "libxklavier-5.4"){accesskey="n"}

    libxklavier-5.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
