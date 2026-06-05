<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libsysstat.md "libsysstat-1.1.0")

    libsysstat-1.1.0

-   [Next](libfm-extra.md "libfm-extra-1.3.2")

    libfm-extra-1.3.2

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qtxdg-tools-4.4.0 {#qtxdg-tools-4.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qtxdg-tools {#introduction-to-qtxdg-tools}

The <span class="application">qtxdg-tools</span> contains a CLI MIME tool for handling file associations and opening files with their default applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/qtxdg-tools/releases/download/4.4.0/qtxdg-tools-4.4.0.tar.xz">https://github.com/lxqt/qtxdg-tools/releases/download/4.4.0/qtxdg-tools-4.4.0.tar.xz</a>

-   Download MD5 sum: e5d4680526ed7751eb2ee8068c14cf50

-   Download size: 20 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: 0.1 SBU
</div>

### qtxdg-tools Dependencies

#### Required

<a class="xref" href="libqtxdg.md" title="libqtxdg-4.4.0">libqtxdg-4.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of qtxdg-tools {#installation-of-qtxdg-tools}

Install <span class="application">qtxdg-tools</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">qtxdg-mat</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/cmake/qtxdg-tools</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  <a id="qtxdg-mat"></a><span class="command"><span class="term"><strong>qtxdg-mat</strong></span></span>   queries and modifies defaults for applications, such as the default terminal, web browser, email client, and file manager
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsysstat.md "libsysstat-1.1.0")

    libsysstat-1.1.0

-   [Next](libfm-extra.md "libfm-extra-1.3.2")

    libfm-extra-1.3.2

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
