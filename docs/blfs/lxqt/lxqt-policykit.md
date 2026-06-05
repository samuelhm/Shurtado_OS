<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-config.md "lxqt-config-2.4.0")

    lxqt-config-2.4.0

-   [Next](lxqt-sudo.md "lxqt-sudo-2.4.0")

    lxqt-sudo-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-policykit-2.4.0 {#lxqt-policykit-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-policykit {#introduction-to-lxqt-policykit}

The <span class="application">lxqt-policykit</span> package is the <span class="application">LXQt</span> PolicyKit agent.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-policykit/releases/download/2.4.0/lxqt-policykit-2.4.0.tar.xz">https://github.com/lxqt/lxqt-policykit/releases/download/2.4.0/lxqt-policykit-2.4.0.tar.xz</a>

-   Download MD5 sum: 407421121bd60292723424e7827fc45e

-   Download size: 44 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: 0.1 SBU
</div>

### lxqt-policykit Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a> and <a class="xref" href="../kde/polkit-qt.md" title="Polkit-Qt-0.201.1">polkit-qt-0.201.1</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-policykit {#installation-of-lxqt-policykit}

Install <span class="application">lxqt-policykit</span> by running the following commands:

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
**Installed Program:** <span class="segbody">lxqt-policykit-agent</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/lxqt/translations/lxqt-policykit-agent</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------------- ---------------------------------------------
  <a id="lxqt-policykit-agent-prog"></a><span class="command"><span class="term"><strong>lxqt-policykit-agent</strong></span></span>   is the <span class="application">LXQt</span> PolicyKit agent
  ----------------------------------------------------------------------------- ---------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-config.md "lxqt-config-2.4.0")

    lxqt-config-2.4.0

-   [Next](lxqt-sudo.md "lxqt-sudo-2.4.0")

    lxqt-sudo-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
