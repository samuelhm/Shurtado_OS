<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](baobab.md "Baobab-50.0")

    Baobab-50.0

-   [Next](evince.md "Evince-48.4")

    Evince-48.4

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Brasero-3.12.3 {#brasero-3.12.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Brasero {#introduction-to-brasero}

<span class="application">Brasero</span> is an application used to burn CDs and DVDs on the <span class="application">GNOME</span> Desktop. It is designed to be as simple as possible and has some unique features that enable users to create their discs easily and quickly.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/brasero/3.12/brasero-3.12.3.tar.xz">https://download.gnome.org/sources/brasero/3.12/brasero-3.12.3.tar.xz</a>

-   Download MD5 sum: ae48248dd36f89282d573eb7a0a1391f

-   Download size: 3.0 MB

-   Estimated disk space required: 105 MB

-   Estimated build time: 1.0 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/brasero-3.12.3-upstream_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/brasero-3.12.3-upstream_fixes-1.patch</a>
</div>

### Brasero Dependencies

#### Required

<a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, and <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../multimedia/libburn.md" title="libburn-1.5.8">libburn-1.5.8</a>, <a class="xref" href="../multimedia/libisoburn.md" title="libisoburn-1.5.8.pl02">libisoburn-1.5.8.pl02</a>, and <a class="xref" href="../multimedia/libisofs.md" title="libisofs-1.5.8.pl02">libisofs-1.5.8.pl02</a>, <a class="xref" href="nautilus.md" title="Nautilus-50.2.2">Nautilus-50.2.2</a>, <a class="xref" href="tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>, and <a class="xref" href="totem-pl-parser.md" title="totem-pl-parser-3.26.7">totem-pl-parser-3.26.7</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>

#### Recommended (Runtime)

<a class="xref" href="../multimedia/dvd-rw-tools.md" title="dvd+rw-tools-7.1">dvd+rw-tools-7.1</a> and <a class="xref" href="gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a>

#### Optional (Runtime)

<a class="xref" href="../multimedia/cdrdao.md" title="Cdrdao-1.2.6">Cdrdao-1.2.6</a>, <a class="xref" href="../multimedia/libdvdcss.md" title="libdvdcss-1.5.0">libdvdcss-1.5.0</a>, <a class="xref" href="../multimedia/cdrtools.md" title="Cdrtools-3.02a09">Cdrtools-3.02a09</a>, and <a class="ulink" href="https://ftpmirror.gnu.org/gnu/vcdimager/">VCDImager</a>
</div>

<div class="installation" lang="en">
## Installation of Brasero {#installation-of-brasero}

First, fix a build issue that occurs with GCC-14:

```bash
patch -Np1 -i ../brasero-3.12.3-upstream_fixes-1.patch
```

Install <span class="application">Brasero</span> by running the following commands:

```bash
./configure --prefix=/usr                \
            --enable-compile-warnings=no \
            --enable-cxx-warnings=no     \
            --disable-nautilus           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-*-warnings=no`*: These switches fix build problems under GCC-6.x compilers.

*`--disable-nautilus`*: This switch disables building the Nautilus extension since it is incompatible with the gtk4 version of Nautilus.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">brasero</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbrasero-{burn,media,utils}3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/brasero3, /usr/lib/brasero3, /usr/share/brasero, /usr/share/gtk-doc/html/libbrasero-{burn,media}, and /usr/share/help/\*/brasero</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------
  <a id="brasero-prog"></a><span class="command"><span class="term"><strong>brasero</strong></span></span>                  is a simple and easy to use CD/DVD burning application for the <span class="application">GNOME</span> Desktop
  <a id="libbrasero-burn3"></a><span class="term"><code class="filename">libbrasero-burn3.so</code></span>     contains the Burning API functions
  <a id="libbrasero-media3"></a><span class="term"><code class="filename">libbrasero-media3.so</code></span>   contains the Media API functions
  <a id="libbrasero-utils3"></a><span class="term"><code class="filename">libbrasero-utils3.so</code></span>   contains the <span class="application">Brasero</span> API functions
  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](baobab.md "Baobab-50.0")

    Baobab-50.0

-   [Next](evince.md "Evince-48.4")

    Evince-48.4

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
