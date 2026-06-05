<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-admin.md "lxqt-admin-2.4.0")

    lxqt-admin-2.4.0

-   [Next](lxqt-config.md "lxqt-config-2.4.0")

    lxqt-config-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-about-2.4.0 {#lxqt-about-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-about {#introduction-to-lxqt-about}

The <span class="application">lxqt-about</span> package provides the standalone <span class="application">LXQt</span> <span class="quote">“<span class="quote">About</span>”</span> dialog.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-about/releases/download/2.4.0/lxqt-about-2.4.0.tar.xz">https://github.com/lxqt/lxqt-about/releases/download/2.4.0/lxqt-about-2.4.0.tar.xz</a>

-   Download MD5 sum: 12336bf5f198694c8a9736c4565c9a80

-   Download size: 52 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: 0.1 SBU
</div>

### lxqt-about Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-about {#installation-of-lxqt-about}

Install <span class="application">lxqt-about</span> by running the following commands:

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
**Installed Program:** <span class="segbody">lxqt-about</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ----------------------------------------------------------------
  <a id="lxqt-about-prog"></a><span class="command"><span class="term"><strong>lxqt-about</strong></span></span>   is the <span class="application">LXQt</span> <span class="quote">“<span class="quote">About</span>”</span> dialog
  --------------------------------------------------------- ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-admin.md "lxqt-admin-2.4.0")

    lxqt-admin-2.4.0

-   [Next](lxqt-config.md "lxqt-config-2.4.0")

    lxqt-config-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
