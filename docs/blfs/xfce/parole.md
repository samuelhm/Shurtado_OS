<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce-apps.md "Xfce Applications")

    Xfce Applications

-   [Next](xfce4-terminal.md "xfce4-terminal-1.2.0")

    xfce4-terminal-1.2.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Parole-4.20.0 {#parole-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Parole {#introduction-to-parole}

<span class="application">Parole</span> is a DVD/CD/music player for <span class="application">Xfce</span> that uses <span class="application">GStreamer</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although this version of parole works with most files, it is unable to play DVDs, reporting an error in the gstreamer backend.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/parole/4.20/parole-4.20.0.tar.xz">https://archive.xfce.org/src/apps/parole/4.20/parole-4.20.0.tar.xz</a>

-   Download MD5 sum: 388dee33b1d06ee89f007b4cb08dedaf

-   Download size: 470 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU
</div>

### Parole Dependencies

#### Required

<a class="xref" href="../general/dbus-glib.md" title="dbus-glib-0.114">dbus-glib-0.114</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../multimedia/gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a>, and <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Recommended

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a> and <a class="xref" href="../multimedia/taglib.md" title="Taglib-2.3">taglib-2.3</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Parole {#installation-of-parole}

Install <span class="application">Parole</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="using" lang="en">
## Using Parole {#using-parole}

If you have installed Gstreamer Plugins Ugly with support for libdvdnav and libdvdread and would like to use Parole to play a DVD, click Media\> Open location and enter dvd:// into the box.

Similarly, to play a CD, click Media\> Open location and enter cdda:// into the box.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">parole</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Two libraries under /usr/lib/parole-0/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/parole, /usr/lib/parole-0 and /usr/share/parole</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ------------------------------------------------------------------------------
  <a id="parole-prog"></a><span class="command"><span class="term"><strong>parole</strong></span></span>   is a <span class="application">GTK+ 3</span> media player that uses <span class="application">GStreamer</span>
  ------------------------------------------------- ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce-apps.md "Xfce Applications")

    Xfce Applications

-   [Next](xfce4-terminal.md "xfce4-terminal-1.2.0")

    xfce4-terminal-1.2.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
