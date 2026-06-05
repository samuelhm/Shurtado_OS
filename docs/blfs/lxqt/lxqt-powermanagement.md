<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](pcmanfm-qt.md "pcmanfm-qt-2.4.0")

    pcmanfm-qt-2.4.0

-   [Next](lxqt-runner.md "lxqt-runner-2.4.0")

    lxqt-runner-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-powermanagement-2.4.0 {#lxqt-powermanagement-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-powermanagement {#introduction-to-lxqt-powermanagement}

The <span class="application">lxqt-powermanagement</span> package provides the power management module for <span class="application">LXQt</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-powermanagement/releases/download/2.4.0/lxqt-powermanagement-2.4.0.tar.xz">https://github.com/lxqt/lxqt-powermanagement/releases/download/2.4.0/lxqt-powermanagement-2.4.0.tar.xz</a>

-   Download MD5 sum: 3a2ed6c122e16e9c16b92009395ac397

-   Download size: 116 KB

-   Estimated disk space required: 9.8 MB

-   Estimated build time: 0.5 SBU
</div>

### lxqt-powermanagement Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, <a class="xref" href="lxqt-kidletime.md" title="kidletime-6.26.0 for lxqt">kidletime-6.26.0 for lxqt</a>, <a class="xref" href="lxqt-solid.md" title="solid-6.26.0 for lxqt">solid-6.26.0 for lxqt</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-powermanagement {#installation-of-lxqt-powermanagement}

Install <span class="application">lxqt-powermanagement</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-config-powermanagement and lxqt-powermanagement</span>
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

  -------------------------------------------------------------------------------------- --------------------------------------------------------------------
  <a id="lxqt-config-powermanagement"></a><span class="command"><span class="term"><strong>lxqt-config-powermanagement</strong></span></span>   is the <span class="command"><strong>lxqt-powermanagement</strong></span> GUI configuration tool
  <a id="lxqt-powermanagement-prog"></a><span class="command"><span class="term"><strong>lxqt-powermanagement</strong></span></span>            is the <span class="application">LXQt</span> power management module
  -------------------------------------------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pcmanfm-qt.md "pcmanfm-qt-2.4.0")

    pcmanfm-qt-2.4.0

-   [Next](lxqt-runner.md "lxqt-runner-2.4.0")

    lxqt-runner-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
