<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-user-docs.md "gnome-user-docs-50.2")

    gnome-user-docs-50.2

-   [Next](applications.md "GNOME Applications")

    GNOME Applications

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Yelp-49.0 {#yelp-49.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Yelp {#introduction-to-yelp}

The <span class="application">Yelp</span> package contains a help browser used for viewing help files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/yelp/49/yelp-49.0.tar.xz">https://download.gnome.org/sources/yelp/49/yelp-49.0.tar.xz</a>

-   Download MD5 sum: 516ac3f2a7f66b38bda27fd2f33a63f6

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
</div>

### Yelp Dependencies

#### Required

<a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a>, and <a class="xref" href="yelp-xsl.md" title="yelp-xsl-49.0">yelp-xsl-49.0</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">Yelp</span> package is not required for a functional <span class="application">GNOME</span> Desktop. Note, however, that without <span class="application">Yelp</span> you will not be able to view the built-in Help provided by core <span class="application">GNOME</span> and many of the support applications.
</div>
</div>

<div class="installation" lang="en">
## Installation of Yelp {#installation-of-yelp}

Install <span class="application">Yelp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Still as the <code class="systemitem">root</code> user, ensure that <code class="filename">/usr/share/applications/mimeinfo.cache</code> will be updated and therefore the <span class="command"><strong>help</strong></span> in gnome applications will work.

```bash
update-desktop-database
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gnome-help (symlink) and yelp</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libyelp-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libyelp-1, /usr/share/gtk-doc/html/libyelp (optional), and /usr/{lib,share}/yelp-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------
  <a id="yelp-prog"></a><span class="command"><span class="term"><strong>yelp</strong></span></span>      is the <span class="application">GNOME</span> Help Browser
  <a id="libyelp"></a><span class="term"><code class="filename">libyelp-1.so</code></span>   contains the <span class="application">Yelp</span> API functions
  ------------------------------------------------ -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-user-docs.md "gnome-user-docs-50.2")

    gnome-user-docs-50.2

-   [Next](applications.md "GNOME Applications")

    GNOME Applications

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
