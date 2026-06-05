<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](thunar-volman.md "thunar-volman-4.20.0")

    thunar-volman-4.20.0

-   [Next](xfce4-appfinder.md "xfce4-appfinder-4.20.0")

    xfce4-appfinder-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# tumbler-4.20.1 {#tumbler-4.20.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to tumbler {#introduction-to-tumbler}

The <span class="application">Tumbler</span> package contains a <span class="application">D-Bus</span> thumbnailing service based on the thumbnail management <span class="application">D-Bus</span> specification. This is useful for generating thumbnail images of files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/tumbler/4.20/tumbler-4.20.1.tar.bz2">https://archive.xfce.org/src/xfce/tumbler/4.20/tumbler-4.20.1.tar.bz2</a>

-   Download MD5 sum: 7d315af732b1232d663b03149d7c82a4

-   Download size: 696 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
</div>

### Tumbler Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libgsf.md" title="libgsf-1.14.58">libgsf-1.14.58</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, <a class="ulink" href="https://github.com/dirkvdb/ffmpegthumbnailer">FFmpegThumbnailer</a>, <a class="ulink" href="https://download.gnome.org/sources/libgepub/">libgepub</a>, and <a class="ulink" href="https://libopenraw.freedesktop.org/">libopenraw</a>
</div>

<div class="installation" lang="en">
## Installation of Tumbler {#installation-of-tumbler}

Install <span class="application">Tumbler</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">tumblerd</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libtumbler-1.so and several under /usr/lib/tumbler-1/plugins/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/tumbler, /usr/include/tumbler-1, /usr/lib/tumbler-1 and /usr/share/gtk-doc/html/tumbler</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------
  <a id="tumblerd"></a><span class="command"><span class="term"><strong>tumblerd</strong></span></span>           is a D-Bus service for applications such as Thunar and Ristretto to use thumbnail images
  <a id="libtumbler-1"></a><span class="term"><code class="filename">libtumbler-1.so</code></span>   contains functions that the <span class="application">Tumbler</span> daemon uses to create thumbnail images
  -------------------------------------------------------- --------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](thunar-volman.md "thunar-volman-4.20.0")

    thunar-volman-4.20.0

-   [Next](xfce4-appfinder.md "xfce4-appfinder-4.20.0")

    xfce4-appfinder-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
