<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](seahorse.md "Seahorse-47.0.1")

    Seahorse-47.0.1

-   [Next](snapshot.md "Snapshot-50.0")

    Snapshot-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Showtime-49.1 {#showtime-49.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Showtime {#introduction-to-showtime}

<span class="application">Showtime</span> is an application used for playing audio and video files on the <span class="application">GNOME</span> desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/showtime/49/showtime-49.1.tar.xz">https://download.gnome.org/sources/showtime/49/showtime-49.1.tar.xz</a>

-   Download MD5 sum: 8646fd90b0bbfb9bda6fcb83a637c437

-   Download size: 2.8 MB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Showtime Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, and <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>
</div>

<div class="installation" lang="en">
## Installation of Showtime {#installation-of-showtime}

Install <span class="application">Showtime</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            ..                  &&
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
**Installed Program:** <span class="segbody">showtime</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/showtime</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------------------------------------------
  <a id="showtime-prog"></a><span class="command"><span class="term"><strong>showtime</strong></span></span>   is a lightweight audio and video player designed for the <span class="application">GNOME</span> desktop
  ----------------------------------------------------- ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](seahorse.md "Seahorse-47.0.1")

    Seahorse-47.0.1

-   [Next](snapshot.md "Snapshot-50.0")

    Snapshot-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
