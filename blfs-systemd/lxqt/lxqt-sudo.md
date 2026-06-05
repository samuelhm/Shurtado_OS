<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-policykit.md "lxqt-policykit-2.4.0")

    lxqt-policykit-2.4.0

-   [Next](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0")

    lxqt-openssh-askpass-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-sudo-2.4.0 {#lxqt-sudo-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-sudo {#introduction-to-lxqt-sudo}

The <span class="application">lxqt-sudo</span> package is a graphical front end to <span class="application">sudo</span> and <span class="application">su</span> respectively.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-sudo/releases/download/2.4.0/lxqt-sudo-2.4.0.tar.xz">https://github.com/lxqt/lxqt-sudo/releases/download/2.4.0/lxqt-sudo-2.4.0.tar.xz</a>

-   Download MD5 sum: 03a9150184475ed85fe41124a81a0223

-   Download size: 44 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: 0.1 SBU
</div>

### lxqt-sudo Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-sudo {#installation-of-lxqt-sudo}

Install <span class="application">lxqt-sudo</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxdoas (symlinkk to lxqt-sudo), lxqt-sudo, lxsu (symlinkk to lxqt-sudo), and lxsudo (symlinkk to lxqt-sudo)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/translations/lxqt-sudo</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- --------------------------------------------------
  <a id="lxdoas"></a><span class="command"><span class="term"><strong>lxdoas</strong></span></span>              is a graphical frontend for <span class="command"><strong>doas</strong></span>
  <a id="lxqt-sudo-prog"></a><span class="command"><span class="term"><strong>lxqt-sudo</strong></span></span>   is a graphical frontend for <span class="command"><strong>sudo</strong></span>
  <a id="lxsudo"></a><span class="command"><span class="term"><strong>lxsudo</strong></span></span>              is a graphical frontend for <span class="command"><strong>sudo</strong></span>
  <a id="lxsu"></a><span class="command"><span class="term"><strong>lxsu</strong></span></span>                  is a graphical frontend for <span class="command"><strong>su</strong></span>
  ------------------------------------------------------- --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-policykit.md "lxqt-policykit-2.4.0")

    lxqt-policykit-2.4.0

-   [Next](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0")

    lxqt-openssh-askpass-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
