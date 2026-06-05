<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libepoxy.md "libepoxy-1.5.10")

    libepoxy-1.5.10

-   [Next](libxklavier.md "libxklavier-5.4")

    libxklavier-5.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libnotify-0.8.8 {#libnotify-0.8.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libnotify {#introduction-to-libnotify}

The <span class="application">libnotify</span> library is used to send desktop notifications to a notification daemon, as defined in the Desktop Notifications spec. These notifications can be used to inform the user about an event or display some form of information without getting in the user's way.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libnotify/0.8/libnotify-0.8.8.tar.xz">https://download.gnome.org/sources/libnotify/0.8/libnotify-0.8.8.tar.xz</a>

-   Download MD5 sum: 35bef24dc1e9a336394556d09345e078

-   Download size: 116 KB

-   Estimated disk space required: 2.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libnotify Dependencies

#### Required

<a class="xref" href="gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>

#### Recommended

<a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> (required for tests)

#### Optional (Required if building GNOME)

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (for documentation), <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/mutter/xvfb-run">xvfb-run</a> (optional for the test suite)

#### Required (runtime)

At least one of <a class="xref" href="../general/notification-daemon.md" title="notification-daemon-3.20.0">notification-daemon-3.20.0</a>, <a class="xref" href="../xfce/xfce4-notifyd.md" title="xfce4-notifyd-0.9.7">xfce4-notifyd-0.9.7</a>, or <a class="xref" href="../lxqt/lxqt-notificationd.md" title="lxqt-notificationd-2.4.0">lxqt-notificationd-2.4.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">GNOME Shell</span> and <span class="application">KDE KWin</span> provide their own notification daemons.
</div>
</div>

<div class="installation" lang="en">
## Installation of libnotify {#installation-of-libnotify}

Install <span class="application">libnotify</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            -D man=false        \
            ..                  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span> to run the tests.

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir =/s@\$@ / 'libnotify'@" \
    -i ../docs/reference/meson.build   &&
meson configure -D gtk_doc=true        &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
if [ -e /usr/share/doc/libnotify ]; then
  rm -rf /usr/share/doc/libnotify-0.8.8
  mv -v  /usr/share/doc/libnotify{,-0.8.8}
fi
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D tests=false</code>: Use this option if you have not installed the recommended dependency <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">notify-send</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libnotify.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libnotify and /usr/share/gtk-doc/html/libnotify</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------
  <a id="notify-send"></a><span class="command"><span class="term"><strong>notify-send</strong></span></span>   is a command used to send notifications
  <a id="libnotify-lib"></a><span class="term"><code class="filename">libnotify.so</code></span>   contains the <span class="application">libnotify</span> API functions
  ------------------------------------------------------ ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libepoxy.md "libepoxy-1.5.10")

    libepoxy-1.5.10

-   [Next](libxklavier.md "libxklavier-5.4")

    libxklavier-5.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
