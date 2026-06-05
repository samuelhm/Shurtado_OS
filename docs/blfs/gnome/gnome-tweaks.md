<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-session.md "gnome-session-50.1")

    gnome-session-50.1

-   [Next](gnome-user-docs.md "gnome-user-docs-50.2")

    gnome-user-docs-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-tweaks-49.0 {#gnome-tweaks-49.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Tweaks {#introduction-to-gnome-tweaks}

<span class="application">GNOME Tweaks</span> is a simple program used to tweak advanced <span class="application">GNOME</span> settings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-tweaks/49/gnome-tweaks-49.0.tar.xz">https://download.gnome.org/sources/gnome-tweaks/49/gnome-tweaks-49.0.tar.xz</a>

-   Download MD5 sum: 6c8dbfcefcc5dbab6605cc6f0df1ba62

-   Download size: 680 KB

-   Estimated disk space required: 4.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Tweaks Dependencies

#### Required

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, and <a class="xref" href="../multimedia/sound-theme-freedesktop.md" title="sound-theme-freedesktop-0.8">sound-theme-freedesktop-0.8</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Tweaks {#installation-of-gnome-tweaks}

Install <span class="application">GNOME Tweaks</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
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
**Installed Programs:** <span class="segbody">gnome-tweaks</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/gtweak and /usr/share/gnome-tweaks</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------- ----------------------------------------------------------
  <a id="gnome-tweaks-prog"></a><span class="command"><span class="term"><strong>gnome-tweaks</strong></span></span>   is used to tweak advanced <span class="application">GNOME</span> settings
  ------------------------------------------------------------- ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-session.md "gnome-session-50.1")

    gnome-session-50.1

-   [Next](gnome-user-docs.md "gnome-user-docs-50.2")

    gnome-user-docs-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
