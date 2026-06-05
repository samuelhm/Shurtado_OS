<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-sudo.md "lxqt-sudo-2.4.0")

    lxqt-sudo-2.4.0

-   [Next](lxqt-session.md "lxqt-session-2.4.0")

    lxqt-session-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-openssh-askpass-2.4.0 {#lxqt-openssh-askpass-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-openssh-askpass {#introduction-to-lxqt-openssh-askpass}

The <span class="application">lxqt-openssh-askpass</span> package is a GUI to query credentials on behalf of other programs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-openssh-askpass/releases/download/2.4.0/lxqt-openssh-askpass-2.4.0.tar.xz">https://github.com/lxqt/lxqt-openssh-askpass/releases/download/2.4.0/lxqt-openssh-askpass-2.4.0.tar.xz</a>

-   Download MD5 sum: 33cc903f04f9bf36b40074dd6c261e15

-   Download size: 20 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### lxqt-openssh-askpass Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-openssh-askpass {#installation-of-lxqt-openssh-askpass}

Install <span class="application">lxqt-openssh-askpass</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-openssh-askpass</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/translations/lxqt-openssh-askpass</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------ -------------------------------------------------------------
  <a id="lxqt-openssh-askpass-prog"></a><span class="command"><span class="term"><strong>lxqt-config-openssh-askpass</strong></span></span>   queries a user for credentials on behalf of another program
  ------------------------------------------------------------------------------------ -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-sudo.md "lxqt-sudo-2.4.0")

    lxqt-sudo-2.4.0

-   [Next](lxqt-session.md "lxqt-session-2.4.0")

    lxqt-session-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
