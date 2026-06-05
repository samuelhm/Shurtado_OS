<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-disk-utility.md "gnome-disk-utility-46.1")

    gnome-disk-utility-46.1

-   [Next](gnome-maps.md "gnome-maps-50.1")

    gnome-maps-50.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-logs-45.0 {#gnome-logs-45.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Logs {#introduction-to-gnome-logs}

The <span class="application">GNOME Logs</span> package contains a log viewer for the systemd journal.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-logs/45/gnome-logs-45.0.tar.xz">https://download.gnome.org/sources/gnome-logs/45/gnome-logs-45.0.tar.xz</a>

-   Download MD5 sum: 5b9396cf24528ae72eb4c48934f60df2

-   Download size: 624 KB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.1 SBU
</div>

### GNOME Logs Dependencies

#### Required

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, and <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the test suite), and <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build manual pages), and <a class="ulink" href="https://pypi.python.org/pypi/dogtail">dogtail</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Logs {#installation-of-gnome-logs}

Install <span class="application">GNOME Logs</span> by running the following commands:

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

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-logs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gnome-logs and /usr/share/help/\*/gnome-logs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------
  <a id="gnome-logs-prog"></a><span class="command"><span class="term"><strong>gnome-logs</strong></span></span>   is a <span class="application">GNOME</span> log viewer for the systemd journal
  --------------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-disk-utility.md "gnome-disk-utility-46.1")

    gnome-disk-utility-46.1

-   [Next](gnome-maps.md "gnome-maps-50.1")

    gnome-maps-50.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
