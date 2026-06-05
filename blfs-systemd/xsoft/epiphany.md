<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](graphweb.md "Graphical Web Browsers")

    Graphical Web Browsers

-   [Next](falkon.md "falkon-26.04.1")

    falkon-26.04.1

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Epiphany-50.4 {#epiphany-50.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Epiphany {#introduction-to-epiphany}

<span class="application">Epiphany</span> is a simple yet powerful <span class="application">GNOME</span> web browser targeted at non-technical users. Its principles are simplicity and standards compliance.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/epiphany/50/epiphany-50.4.tar.xz">https://download.gnome.org/sources/epiphany/50/epiphany-50.4.tar.xz</a>

-   Download MD5 sum: 7c7f76f6c3ecfa6a4e09b7576d68d172

-   Download size: 4.3 MB

-   Estimated disk space required: 100 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
</div>

### Epiphany Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="../gnome/gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="../gnome/gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../general/libportal.md" title="libportal-0.9.1">libportal-0.9.1</a>, <a class="xref" href="../postlfs/nettle.md" title="Nettle-4.0">Nettle-4.0</a>, and <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a> (built with GTK-4)

#### Optional

<a class="xref" href="../general/appstream.md" title="AppStream-1.1.2">AppStream-1.1.2</a> and <a class="ulink" href="https://github.com/elementary/granite">Granite</a>

#### Runtime Dependencies

<a class="xref" href="../gnome/gnome-keyring.md" title="gnome-keyring-50.0">gnome-keyring-50.0</a> (for storing passwords) and <a class="xref" href="../gnome/seahorse.md" title="Seahorse-47.0.1">Seahorse-47.0.1</a> (for managing stored passwords)

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/epiphany">https://wiki.linuxfromscratch.org/blfs/wiki/epiphany</a>
</div>

<div class="installation" lang="en">
## Installation of Epiphany {#installation-of-epiphany}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are upgrading from a epiphany-46 or earlier, remove some files that will cause a crash at runtime if they are present as the <code class="systemitem">root</code> user:

```bash
rm -rf /usr/lib/epiphany
```
</div>

Install <span class="application">Epiphany</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>

One test would fail if this package is not installed, so it's better to run the test suite after installation. To test the results, issue <span class="command"><strong>ninja test</strong></span>. The tests must be run from a graphical session.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">epiphany</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,libexec,share,share/help/\*}/epiphany</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------------------------------------------------
  <a id="epiphany-prog"></a><span class="command"><span class="term"><strong>epiphany</strong></span></span>   is a <span class="application">GNOME</span> web browser based on the <span class="application">WebKit2</span> rendering engine
  ----------------------------------------------------- ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](graphweb.md "Graphical Web Browsers")

    Graphical Web Browsers

-   [Next](falkon.md "falkon-26.04.1")

    falkon-26.04.1

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
