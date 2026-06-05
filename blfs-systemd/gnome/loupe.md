<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gucharmap.md "Gucharmap-17.0.2")

    Gucharmap-17.0.2

-   [Next](seahorse.md "Seahorse-47.0.1")

    Seahorse-47.0.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Loupe-49.2 {#loupe-49.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Loupe {#introduction-to-loupe}

<span class="application">Loupe</span> is an application used for viewing image files on the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/loupe/49/loupe-49.2.tar.xz">https://download.gnome.org/sources/loupe/49/loupe-49.2.tar.xz</a>

-   Download MD5 sum: fbfd6f3e60b342094dd67932f3818eb0

-   Download size: 372 KB

-   Estimated disk space required: 1.0 GB (11 MB installed, add 2 MB for tests)

-   Estimated build time: 1.4 SBU (with 4 jobs, add 2.6 SBU for tests)
</div>

### Loupe Dependencies

#### Required

<a class="xref" href="../general/glycin.md" title="glycin-2.1.1">glycin-2.1.1</a> (runtime), <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, and <a class="xref" href="../general/rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

#### Optional

<a class="xref" href="../general/appstream.md" title="AppStream-1.1.2">AppStream-1.1.2</a>
</div>

<div class="installation" lang="en">
## Installation of Loupe {#installation-of-loupe}

Install <span class="application">Loupe</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            ..                  &&
ninja
```

Running the test suite will rebuild the entire package with a different configuration, and the package will be built for three times if installing it after running the test suite. So it's better to run the test suite after the installation.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

If you've installed Eog (which is unmaintained and removed from BLFS) before and you want file managers (such as Nautilus) to open image files using Loupe instead of Eog, remove the desktop file for Eog as the <code class="systemitem">root</code> user:

```bash
rm -fv /usr/share/applications/org.gnome.eog.desktop
```
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
**Installed Program:** <span class="segbody">loupe</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/help/\*/loupe</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------------------------------------------------
  <a id="loupe-prog"></a><span class="command"><span class="term"><strong>loupe</strong></span></span>   is a fast and functional image viewer designed to be used with the <span class="application">GNOME</span> desktop.
  ----------------------------------------------- ---------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gucharmap.md "Gucharmap-17.0.2")

    Gucharmap-17.0.2

-   [Next](seahorse.md "Seahorse-47.0.1")

    Seahorse-47.0.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
