<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-settings-daemon.md "gnome-settings-daemon-50.1")

    gnome-settings-daemon-50.1

-   [Next](gnome-control-center.md "gnome-control-center-50.2")

    gnome-control-center-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tecla-50.0 {#tecla-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tecla {#introduction-to-tecla}

The <span class="application">Tecla</span> package contains a keyboard layout viewer.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/tecla/50/tecla-50.0.tar.xz">https://download.gnome.org/sources/tecla/50/tecla-50.0.tar.xz</a>

-   Download MD5 sum: cc5ae49bae10abcb02040a20e63ef26b

-   Download size: 84 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Tecla Dependencies

#### Required

<a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a> and <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>
</div>

<div class="installation" lang="en">
## Installation of Tecla {#installation-of-tecla}

Install <span class="application">Tecla</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">tecla</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- -----------------------------
  <a id="tecla-prog"></a><span class="command"><span class="term"><strong>tecla</strong></span></span>   is a keyboard layout viewer
  ----------------------------------------------- -----------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-settings-daemon.md "gnome-settings-daemon-50.1")

    gnome-settings-daemon-50.1

-   [Next](gnome-control-center.md "gnome-control-center-50.2")

    gnome-control-center-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
