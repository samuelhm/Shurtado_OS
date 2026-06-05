<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-runner.md "lxqt-runner-2.4.0")

    lxqt-runner-2.4.0

-   [Next](lxqt-admin.md "lxqt-admin-2.4.0")

    lxqt-admin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-themes-2.4.0 {#lxqt-themes-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-themes {#introduction-to-lxqt-themes}

The <span class="application">lxqt-themes</span> package provides a number of graphics files and themes for the <span class="application">LXQt</span> desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-themes/releases/download/2.4.0/lxqt-themes-2.4.0.tar.xz">https://github.com/lxqt/lxqt-themes/releases/download/2.4.0/lxqt-themes-2.4.0.tar.xz</a>

-   Download MD5 sum: 5f7a80bc279fc8063ecd077653f3731b

-   Download size: 26 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: less than 0.1 SBU
</div>

### lxqt-themes Dependencies

#### Required

<a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-themes {#installation-of-lxqt-themes}

Install <span class="application">lxqt-themes</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/{graphics,themes,palettes,wallpapers}</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-runner.md "lxqt-runner-2.4.0")

    lxqt-runner-2.4.0

-   [Next](lxqt-admin.md "lxqt-admin-2.4.0")

    lxqt-admin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
