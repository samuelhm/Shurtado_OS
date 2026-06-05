<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-power-manager.md "gnome-power-manager-50.0")

    gnome-power-manager-50.0

-   [Next](gnome-terminal.md "gnome-terminal-3.60.0")

    gnome-terminal-3.60.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-system-monitor-50.0 {#gnome-system-monitor-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME System Monitor {#introduction-to-gnome-system-monitor}

The <span class="application">GNOME System Monitor</span> package contains <span class="application">GNOME</span>'s replacement for <span class="command"><strong>gtop</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-system-monitor/50/gnome-system-monitor-50.0.tar.xz">https://download.gnome.org/sources/gnome-system-monitor/50/gnome-system-monitor-50.0.tar.xz</a>

-   Download MD5 sum: 24c73cd65f22e53bc82bef32a79a3ce3

-   Download size: 1.1 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.1 SBU (with parallelism=4)
</div>

### GNOME System Monitor Dependencies

#### Required

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="../x/gtkmm4.md" title="Gtkmm-4.22.0">Gtkmm-4.22.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="libgtop.md" title="libgtop-2.41.3">libgtop-2.41.3</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, and <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="ulink" href="https://github.com/catchorg/Catch2">Catch2</a>, and <a class="ulink" href="https://github.com/uncrustify/uncrustify">uncrustify</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME System Monitor {#installation-of-gnome-system-monitor}

First, remove a hard dependency on Catch2, which is only used if you are running the unit tests:

```bash
find . -name meson.build | xargs sed -i -e '/catch2/d' &&
sed -i '141,151d' src/meson.build
```

Install <span class="application">GNOME System Monitor</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package comes with a test suite, but it requires the external Catch2 dependency. If you have Catch2 installed, you can omit the seds above and then run the tests with <span class="command"><strong>ninja test</strong></span>.

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
**Installed Program:** <span class="segbody">gnome-system-monitor</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{libexec,share,share/help/\*}/gnome-system-monitor</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------------- ---------------------------------------------------------
  <a id="gnome-system-monitor-prog"></a><span class="command"><span class="term"><strong>gnome-system-monitor</strong></span></span>   is used to display the process tree and hardware meters
  ----------------------------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-power-manager.md "gnome-power-manager-50.0")

    gnome-power-manager-50.0

-   [Next](gnome-terminal.md "gnome-terminal-3.60.0")

    gnome-terminal-3.60.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
