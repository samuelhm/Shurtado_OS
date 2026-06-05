<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-notificationd.md "lxqt-notificationd-2.4.0")

    lxqt-notificationd-2.4.0

-   [Next](qps.md "qps-2.13.0")

    qps-2.13.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pavucontrol-qt-2.4.0 {#pavucontrol-qt-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to pavucontrol-qt {#introduction-to-pavucontrol-qt}

<span class="application">pavucontrol-qt</span> is the Qt port of the volume control utility pavucontrol, which is used to adjust audio levels in Pulseaudio. It is desktop environment agnostic.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/pavucontrol-qt/releases/download/2.4.0/pavucontrol-qt-2.4.0.tar.xz">https://github.com/lxqt/pavucontrol-qt/releases/download/2.4.0/pavucontrol-qt-2.4.0.tar.xz</a>

-   Download MD5 sum: 79ec4eb4247001df14eca73c437a446c

-   Download size: 124 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: 0.2 SBU
</div>

### pavucontrol-qt Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a> and <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a> (built with <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> support)
</div>

<div class="installation" lang="en">
## Installation of pavucontrol-qt {#installation-of-pavucontrol-qt}

Install <span class="application">pavucontrol-qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">pavucontrol-qt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/pavucontrol-qt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="pavucontrol-qt-prog"></a><span class="command"><span class="term"><strong>pavucontrol-qt</strong></span></span>   is a Qt based GUI configuration tool for sound settings using <span class="application">pulseaudio</span>
  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-notificationd.md "lxqt-notificationd-2.4.0")

    lxqt-notificationd-2.4.0

-   [Next](qps.md "qps-2.13.0")

    qps-2.13.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
