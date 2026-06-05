<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-nettool.md "gnome-nettool-42.0")

    gnome-nettool-42.0

-   [Next](gnome-system-monitor.md "gnome-system-monitor-50.0")

    gnome-system-monitor-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-power-manager-50.0 {#gnome-power-manager-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Power Manager {#introduction-to-gnome-power-manager}

The <span class="application">GNOME Power Manager</span> package contains a tool used to report on power management on the system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-power-manager/50/gnome-power-manager-50.0.tar.xz">https://download.gnome.org/sources/gnome-power-manager/50/gnome-power-manager-50.0.tar.xz</a>

-   Download MD5 sum: 541c76d6000fced2a3cc6bcc88f1d860

-   Download size: 376 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### GNOME Power Manager Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a> and <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Power Manager {#installation-of-gnome-power-manager}

Install <span class="application">GNOME Power Manager</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

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
**Installed Programs:** <span class="segbody">gnome-power-statistics</span>
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

  ---------------------------------------------------------------------------- ---------------------------------------------------------------
  <a id="gnome-power-statistics"></a><span class="command"><span class="term"><strong>gnome-power-statistics</strong></span></span>   is used to visualize the power consumption of laptop hardware
  ---------------------------------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-nettool.md "gnome-nettool-42.0")

    gnome-nettool-42.0

-   [Next](gnome-system-monitor.md "gnome-system-monitor-50.0")

    gnome-system-monitor-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
