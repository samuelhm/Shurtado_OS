<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-logs.md "gnome-logs-45.0")

    gnome-logs-45.0

-   [Next](gnome-nettool.md "gnome-nettool-42.0")

    gnome-nettool-42.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-maps-50.1 {#gnome-maps-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Maps {#introduction-to-gnome-maps}

<span class="application">GNOME Maps</span> is a map application for <span class="application">GNOME</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-maps/50/gnome-maps-50.1.tar.xz">https://download.gnome.org/sources/gnome-maps/50/gnome-maps-50.1.tar.xz</a>

-   Download MD5 sum: 060157a736d1966af0e1f893957d3437

-   Download size: 1.2 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Maps Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a>, <a class="xref" href="geocode-glib.md" title="geocode-glib-3.26.4">geocode-glib-3.26.4</a>, <a class="xref" href="gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../general/libportal.md" title="libportal-0.9.1">libportal-0.9.1</a>, <a class="xref" href="librest.md" title="librest-0.10.2">librest-0.10.2</a>, and <a class="xref" href="libshumate.md" title="libshumate-1.6.1">libshumate-1.6.1</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Maps {#installation-of-gnome-maps}

Install <span class="application">GNOME Maps</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-maps (symlink)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgnome-maps.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/gnome-maps and /usr/share/gnome-maps</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ------------------------------------------------
  <a id="gnome-maps-prog"></a><span class="command"><span class="term"><strong>gnome-maps</strong></span></span>   is a map application for <span class="application">GNOME</span>
  --------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-logs.md "gnome-logs-45.0")

    gnome-logs-45.0

-   [Next](gnome-nettool.md "gnome-nettool-42.0")

    gnome-nettool-42.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
