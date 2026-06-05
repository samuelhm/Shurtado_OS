<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lximage-qt.md "lximage-qt-2.4.0")

    lximage-qt-2.4.0

-   [Next](lxqt-notificationd.md "lxqt-notificationd-2.4.0")

    lxqt-notificationd-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-archiver-1.4.0 {#lxqt-archiver-1.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-archiver {#introduction-to-lxqt-archiver}

The <span class="application">lxqt-archiver</span> package is a simple and lightweight desktop-agnostic Qt file archiver.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-archiver/releases/download/1.4.0/lxqt-archiver-1.4.0.tar.xz">https://github.com/lxqt/lxqt-archiver/releases/download/1.4.0/lxqt-archiver-1.4.0.tar.xz</a>

-   Download MD5 sum: 8be174a519f9fe5512a4809671b040ce

-   Download size: 204 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.3 SBU
</div>

### lxqt-archiver Dependencies

#### Required

<a class="xref" href="libfm-qt.md" title="libfm-qt-2.4.0">libfm-qt-2.4.0</a>, <a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, and <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-archiver {#installation-of-lxqt-archiver}

Install <span class="application">lxqt-archiver</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-archiver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt-archiver</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------- -----------------------------
  <a id="lxqt-archiver-prog"></a><span class="command"><span class="term"><strong>lxqt-archiver</strong></span></span>   is a Qt-based file archiver
  --------------------------------------------------------------- -----------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lximage-qt.md "lximage-qt-2.4.0")

    lximage-qt-2.4.0

-   [Next](lxqt-notificationd.md "lxqt-notificationd-2.4.0")

    lxqt-notificationd-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
