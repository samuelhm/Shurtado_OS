<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-archiver.md "lxqt-archiver-1.4.0")

    lxqt-archiver-1.4.0

-   [Next](pavucontrol-qt.md "pavucontrol-qt-2.4.0")

    pavucontrol-qt-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-notificationd-2.4.0 {#lxqt-notificationd-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-notificationd {#introduction-to-lxqt-notificationd}

The <span class="application">lxqt-notificationd</span> package is the <span class="application">LXQt</span> notification daemon.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-notificationd/releases/download/2.4.0/lxqt-notificationd-2.4.0.tar.xz">https://github.com/lxqt/lxqt-notificationd/releases/download/2.4.0/lxqt-notificationd-2.4.0.tar.xz</a>

-   Download MD5 sum: 053f0b2de428b53fa4ce6e2f94ff2217

-   Download size: 72 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: 0.3 SBU
</div>

### lxqt-notificationd Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-notificationd {#installation-of-lxqt-notificationd}

Install <span class="application">lxqt-notificationd</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-config-notificationd and lxqt-notificationd</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/translations/lxqt-config-notificationd and /usr/share/lxqt/translations/lxqt-notificationd</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------- ------------------------------------------------------------------
  <a id="lxqt-config-notificationd"></a><span class="command"><span class="term"><strong>lxqt-config-notificationd</strong></span></span>   is the <span class="command"><strong>lxqt-notificationd</strong></span> GUI configuration tool
  <a id="lxqt-notificationd-prog"></a><span class="command"><span class="term"><strong>lxqt-notificationd</strong></span></span>            is the <span class="application">LXQt</span> notification daemon
  ---------------------------------------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-archiver.md "lxqt-archiver-1.4.0")

    lxqt-archiver-1.4.0

-   [Next](pavucontrol-qt.md "pavucontrol-qt-2.4.0")

    pavucontrol-qt-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
