<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-power-manager.md "xfce4-power-manager-4.20.0")

    xfce4-power-manager-4.20.0

-   [Next](xfdesktop.md "Xfdesktop-4.20.2")

    Xfdesktop-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-settings-4.20.4 {#xfce4-settings-4.20.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Settings {#introduction-to-xfce4-settings}

The <span class="application">Xfce4 Settings</span> package contains a collection of programs that are useful for adjusting your <span class="application">Xfce</span> preferences.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfce4-settings/4.20/xfce4-settings-4.20.4.tar.bz2">https://archive.xfce.org/src/xfce/xfce4-settings/4.20/xfce4-settings-4.20.4.tar.bz2</a>

-   Download MD5 sum: 20d13ec8bfdca1824b92a68eb5d1319c

-   Download size: 2.5 MB

-   Estimated disk space required: 46 MB

-   Estimated build time: 0.3 SBU
</div>

### Xfce4 Settings Dependencies

#### Required

<a class="xref" href="exo.md" title="Exo-4.20.0">Exo-4.20.0</a> and <a class="xref" href="garcon.md" title="Garcon-4.20.0">Garcon-4.20.0</a>

#### Required (Runtime)

<a class="xref" href="../x/gnome-icon-theme.md" title="gnome-icon-theme-3.12.0">gnome-icon-theme-3.12.0</a> or <a class="xref" href="../x/lxde-icon-theme.md" title="lxde-icon-theme-0.5.1">lxde-icon-theme-0.5.1</a>

#### Recommended

<a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a> and <a class="xref" href="../x/libxklavier.md" title="libxklavier-5.4">libxklavier-5.4</a>

#### Optional

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../x/x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Settings {#installation-of-xfce4-settings}

Install <span class="application">Xfce4 Settings</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-sound-settings</code>: Use this switch to enable sound settings in GUI.

<code class="option">--enable-pluggable-dialogs</code>: Use this switch to enable support for embedded settings dialogs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xfce4-accessibility-settings, xfce4-appearance-settings, xfce4-color-settings, xfce4-display-settings, xfce4-find-cursor, xfce4-keyboard-settings, xfce4-mime-helper, xfce4-mime-settings, xfce4-mouse-settings, xfce4-settings-editor, xfce4-settings-manager and xfsettingsd</span>
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

  ---------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------
  <a id="xfce4-accessibility-settings"></a><span class="command"><span class="term"><strong>xfce4-accessibility-settings</strong></span></span>   is a <span class="application">GTK+ 3</span> GUI to allow you to change some of your keyboard and mouse preferences
  <a id="xfce4-appearance-settings"></a><span class="command"><span class="term"><strong>xfce4-appearance-settings</strong></span></span>         is a <span class="application">GTK+ 3</span> GUI to allow you to change some of your theme, icon and font preferences
  <a id="xfce4-display-settings"></a><span class="command"><span class="term"><strong>xfce4-display-settings</strong></span></span>               is a <span class="application">GTK+ 3</span> GUI to allow you to change some of your screen preferences
  <a id="xfce4-keyboard-settings"></a><span class="command"><span class="term"><strong>xfce4-keyboard-settings</strong></span></span>             is a <span class="application">GTK+ 3</span> GUI to allow you to change some of your keyboard preferences
  <a id="xfce4-mime-settings"></a><span class="command"><span class="term"><strong>xfce4-mime-settings</strong></span></span>                     is a <span class="application">GTK+ 3</span> GUI to allow you to change which applications are used to handle different mime types
  <a id="xfce4-mouse-settings"></a><span class="command"><span class="term"><strong>xfce4-mouse-settings</strong></span></span>                   is a <span class="application">GTK+ 3</span> GUI to allow you to change some of your mouse preferences
  <a id="xfce4-settings-editor"></a><span class="command"><span class="term"><strong>xfce4-settings-editor</strong></span></span>                 is a <span class="application">GTK+ 3</span> GUI to allow you to change your preferences stored in <span class="application">Xfconf</span>
  <a id="xfce4-settings-manager"></a><span class="command"><span class="term"><strong>xfce4-settings-manager</strong></span></span>               is a <span class="application">GTK+ 3</span> GUI to allow you to change many of your <span class="application">Xfce</span> preferences
  <a id="xfsettingsd"></a><span class="command"><span class="term"><strong>xfsettingsd</strong></span></span>                                     is the <span class="application">Xfce</span> settings daemon
  ---------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-power-manager.md "xfce4-power-manager-4.20.0")

    xfce4-power-manager-4.20.0

-   [Next](xfdesktop.md "Xfdesktop-4.20.2")

    Xfdesktop-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
