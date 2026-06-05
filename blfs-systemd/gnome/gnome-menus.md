<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-desktop.md "gnome-desktop-44.5")

    gnome-desktop-44.5

-   [Next](gnome-online-accounts.md "gnome-online-accounts-3.58.1")

    gnome-online-accounts-3.58.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-menus-3.38.1 {#gnome-menus-3.38.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Menus {#introduction-to-gnome-menus}

The <span class="application">GNOME Menus</span> package contains an implementation of the draft <a class="ulink" href="https://www.freedesktop.org/Standards/menu-spec">Desktop Menu Specification</a> from freedesktop.org. It also contains the <span class="application">GNOME</span> menu layout configuration files and <code class="filename">.directory</code> files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-menus/3.38/gnome-menus-3.38.1.tar.xz">https://download.gnome.org/sources/gnome-menus/3.38/gnome-menus-3.38.1.tar.xz</a>

-   Download MD5 sum: bd89f4013689edf35a039ceb1a1b7c39

-   Download size: 464 KB

-   Estimated disk space required: 8.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Menus Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended)
</div>

<div class="installation" lang="en">
## Installation of GNOME Menus {#installation-of-gnome-menus}

Install <span class="application">GNOME Menus</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgnome-menu-3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/menus, /usr/include/gnome-menus-3.0, and /usr/share/desktop-directories</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
  <a id="libgnome-menu-3"></a><span class="term"><code class="filename">libgnome-menu-3.so</code></span>   contains functions required to support <span class="application">GNOME</span>'s implementation of the Desktop Menu Specification
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-desktop.md "gnome-desktop-44.5")

    gnome-desktop-44.5

-   [Next](gnome-online-accounts.md "gnome-online-accounts-3.58.1")

    gnome-online-accounts-3.58.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
