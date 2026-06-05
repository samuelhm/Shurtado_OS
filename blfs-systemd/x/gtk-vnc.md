::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtkmm4.md "Gtkmm-4.22.0"){accesskey="p"}

    Gtkmm-4.22.0

-   [Next](gtksourceview.md "gtksourceview-3.24.11"){accesskey="n"}

    gtksourceview-3.24.11

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtk-vnc}gtk-vnc-1.5.0 {#gtk-vnc-1.5.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gtk VNC {#introduction-to-gtk-vnc .sect2}

The [Gtk VNC]{.application} package contains a VNC viewer widget for [GTK+]{.application}. It is built using coroutines allowing it to be completely asynchronous while remaining single threaded.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtk-vnc/1.5/gtk-vnc-1.5.0.tar.xz](https://download.gnome.org/sources/gtk-vnc/1.5/gtk-vnc-1.5.0.tar.xz){.ulink}

-   Download MD5 sum: 6e9815e7960636e95f626a3f164eb01d

-   Download size: 224 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
:::

### Gtk VNC Dependencies

#### Required

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, and [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, and [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}

#### Optional

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref} and [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (for generating documentation)
:::::

::: {.installation lang="en"}
## Installation of Gtk VNC {#installation-of-gtk-vnc .sect2}

Install [Gtk VNC]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D with-vala=disabled`{.option}: This switch disables building of the Vala bindings. Add this if you decide to build gtk-vnc without vala installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gvnccapture]{.segbody}
:::

::: seg
**Installed Libraries:** [libgtk-vnc-2.0.so, libgvnc-1.0.so and libgvncpulse-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gtk-vnc-2.0, /usr/include/gvnc-1.0 and /usr/include/gvncpulse-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- --------------------------------------------------------------------------
  []{#gvnccapture}[[**gvnccapture**]{.command}]{.term}           is used to capture image from VNC server
  []{#libgtk-vnc-2}[`libgtk-vnc-2.0.so`{.filename}]{.term}       contains the [GTK+ 3]{.application} bindings for [Gtk VNC]{.application}
  []{#libgvnc-1a}[`libgvnc-1.0.so`{.filename}]{.term}            contains the GObject bindings for [Gtk VNC]{.application}
  []{#libgvncpulse-1}[`libgvncpulse-1.0.so`{.filename}]{.term}   is the [PulseAudio]{.application} bridge for [Gtk VNC]{.application}
  -------------------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtkmm4.md "Gtkmm-4.22.0"){accesskey="p"}

    Gtkmm-4.22.0

-   [Next](gtksourceview.md "gtksourceview-3.24.11"){accesskey="n"}

    gtksourceview-3.24.11

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
