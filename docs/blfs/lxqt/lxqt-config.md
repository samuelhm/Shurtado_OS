<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-about.md "lxqt-about-2.4.0")

    lxqt-about-2.4.0

-   [Next](lxqt-policykit.md "lxqt-policykit-2.4.0")

    lxqt-policykit-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-config-2.4.0 {#lxqt-config-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-config {#introduction-to-lxqt-config}

The <span class="application">lxqt-config</span> package provides the <span class="application">LXQt</span> Configuration Center.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-config/releases/download/2.4.0/lxqt-config-2.4.0.tar.xz">https://github.com/lxqt/lxqt-config/releases/download/2.4.0/lxqt-config-2.4.0.tar.xz</a>

-   Download MD5 sum: 7bb4cc66ce5fc8cd5bc53127643888a1

-   Download size: 408 KB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
</div>

### lxqt-config Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, <a class="xref" href="lxqt-kconfig.md" title="kconfig-6.26.0 for lxqt">kconfig-6.26.0 for lxqt</a>, <a class="xref" href="lxqt-libkscreen.md" title="libkscreen-6.6.5 for lxqt">libkscreen-6.6.5 for lxqt</a>, and <a class="xref" href="../x/x7driver.md#xorg-libinput-driver" title="Xorg Libinput Driver-1.5.0">xorg-libinput-1.5.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-config {#installation-of-lxqt-config}

Install <span class="application">lxqt-config</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-config, lxqt-config-appearance, lxqt-config-brightness, lxqt-config-file-associations, lxqt-config-input, lxqt-config-locale, and lxqt-config-monitor</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblxqt-config-cursor.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/lxqt-config</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------
  <a id="lxqt-config-prog"></a><span class="command"><span class="term"><strong>lxqt-config</strong></span></span>                                  is the <span class="application">LXQt</span> Configuration Center
  <a id="lxqt-config-appearance"></a><span class="command"><span class="term"><strong>lxqt-config-appearance</strong></span></span>                 is used to change system themes, icon themes, and fonts used by applications in an LXQt session
  <a id="lxqt-config-brightness"></a><span class="command"><span class="term"><strong>lxqt-config-brightness</strong></span></span>                 configures the brightness setting of a monitor
  <a id="lxqt-config-file-associations"></a><span class="command"><span class="term"><strong>lxqt-config-file-associations</strong></span></span>   is used to associate filetypes with programs
  <a id="lxqt-config-input"></a><span class="command"><span class="term"><strong>lxqt-config-input</strong></span></span>                           is used to configure input devices, setting options such as the mouse speed, the cursor, the keyboard speed, and the keyboard layout
  <a id="lxqt-config-locale"></a><span class="command"><span class="term"><strong>lxqt-config-locale</strong></span></span>                         configures the locale used in <span class="application">LXQt</span> sessions
  <a id="lxqt-config-monitor"></a><span class="command"><span class="term"><strong>lxqt-config-monitor</strong></span></span>                       is a graphical frontend to <span class="application">xrandr</span> that configures monitors on a system
  <a id="liblxqt-config-cursor-lib"></a><span class="term"><code class="filename">liblxqt-config-cursor.so</code></span>               contains the <span class="application">liblxqt-config-cursor</span> API functions
  ------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-about.md "lxqt-about-2.4.0")

    lxqt-about-2.4.0

-   [Next](lxqt-policykit.md "lxqt-policykit-2.4.0")

    lxqt-policykit-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
