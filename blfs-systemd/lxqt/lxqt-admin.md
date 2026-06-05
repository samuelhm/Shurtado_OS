<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-themes.md "lxqt-themes-2.4.0")

    lxqt-themes-2.4.0

-   [Next](lxqt-about.md "lxqt-about-2.4.0")

    lxqt-about-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-admin-2.4.0 {#lxqt-admin-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-admin {#introduction-to-lxqt-admin}

The <span class="application">lxqt-admin</span> package provides two GUI tools to adjust settings of the operating system <span class="application">LXQt</span> is running on.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-admin/releases/download/2.4.0/lxqt-admin-2.4.0.tar.xz">https://github.com/lxqt/lxqt-admin/releases/download/2.4.0/lxqt-admin-2.4.0.tar.xz</a>

-   Download MD5 sum: 77a73ebdfad37f8d0948fe20011c24db

-   Download size: 160 KB

-   Estimated disk space required: 5.8 MB

-   Estimated build time: 0.3 SBU
</div>

### lxqt-admin Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a> and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-admin {#installation-of-lxqt-admin}

Install <span class="application">lxqt-admin</span> by running the following commands:

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
**Installed Program:** <span class="segbody">lxqt-admin-time, lxqt-admin-user, and lxqt-admin-user-helper</span>
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

  -------------------------------------------------------------- ----------------------------------------------
  <a id="lxqt-admin-time"></a><span class="command"><span class="term"><strong>lxqt-admin-time</strong></span></span>   is a GUI to adjust the current time and date
  <a id="lxqt-admin-user"></a><span class="command"><span class="term"><strong>lxqt-admin-user</strong></span></span>   is a GUI to manage users and groups
  -------------------------------------------------------------- ----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-themes.md "lxqt-themes-2.4.0")

    lxqt-themes-2.4.0

-   [Next](lxqt-about.md "lxqt-about-2.4.0")

    lxqt-about-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
