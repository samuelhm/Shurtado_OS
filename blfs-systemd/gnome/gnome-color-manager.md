<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-calculator.md "gnome-calculator-50.0")

    gnome-calculator-50.0

-   [Next](gnome-connections.md "gnome-connections-50.0")

    gnome-connections-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-color-manager-3.36.2 {#gnome-color-manager-3.36.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Color Manager {#introduction-to-gnome-color-manager}

<span class="application">GNOME Color Manager</span> is a session framework for the <span class="application">GNOME</span> desktop environment that makes it easy to manage, install and generate color profiles.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-color-manager/3.36/gnome-color-manager-3.36.2.tar.xz">https://download.gnome.org/sources/gnome-color-manager/3.36/gnome-color-manager-3.36.2.tar.xz</a>

-   Download MD5 sum: b23a411d3ab754da6ebc967716a971dc

-   Download size: 2.1 MB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.1 SBU
</div>

### GNOME Color Manager Dependencies

#### Required

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, and <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>

#### Optional

<a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a> (currently causes build to fail)
</div>

<div class="installation" lang="en">
## Installation of GNOME Color Manager {#installation-of-gnome-color-manager}

If <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a> is installed, disable installation of the man pages to avoid a build failure:

```bash
sed /subdir\(\'man/d -i meson.build
```

Install <span class="application">GNOME Color Manager</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests must be run from an X session.

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
**Installed Programs:** <span class="segbody">gcm-import, gcm-inspect, gcm-picker, and gcm-viewer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gnome-color-manager and /usr/share/help/\*/gnome-color-manager</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------
  <a id="gcm-import"></a><span class="command"><span class="term"><strong>gcm-import</strong></span></span>     allows you to import ICC profiles supplied by vendors
  <a id="gcm-inspect"></a><span class="command"><span class="term"><strong>gcm-inspect</strong></span></span>   allows you to inspect your session color-management settings
  <a id="gcm-picker"></a><span class="command"><span class="term"><strong>gcm-picker</strong></span></span>     allows you to pick spot colors for use by an attached colorimeter
  <a id="gcm-viewer"></a><span class="command"><span class="term"><strong>gcm-viewer</strong></span></span>     allows you to view properties of ICC profiles
  ------------------------------------------------------ -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-calculator.md "gnome-calculator-50.0")

    gnome-calculator-50.0

-   [Next](gnome-connections.md "gnome-connections-50.0")

    gnome-connections-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
