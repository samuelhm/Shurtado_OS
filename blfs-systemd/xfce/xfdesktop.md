<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-settings.md "xfce4-settings-4.20.4")

    xfce4-settings-4.20.4

-   [Next](xfwm4.md "Xfwm4-4.20.0")

    Xfwm4-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xfdesktop-4.20.2 {#xfdesktop-4.20.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfdesktop {#introduction-to-xfdesktop}

<span class="application">Xfdesktop</span> is a desktop manager for the <span class="application">Xfce</span> Desktop Environment. <span class="application">Xfdesktop</span> sets the background image / color, creates the right click menu and window list and displays the file icons on the desktop using <span class="application">Thunar</span> libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfdesktop/4.20/xfdesktop-4.20.2.tar.bz2">https://archive.xfce.org/src/xfce/xfdesktop/4.20/xfdesktop-4.20.2.tar.bz2</a>

-   Download MD5 sum: 8789870145b82f5ba4f35c8a6522db2e

-   Download size: 2.5 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.2 SBU
</div>

### Xfdesktop Dependencies

#### Required

<a class="xref" href="exo.md" title="Exo-4.20.0">Exo-4.20.0</a>, <a class="xref" href="libxfce4windowing.md" title="libxfce4windowing-4.20.6">libxfce4windowing-4.20.6</a>, and <a class="xref" href="libwnck.md" title="libwnck-43.3">libwnck-43.3</a>

#### Recommended

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a> and <a class="xref" href="thunar.md" title="thunar-4.20.8">thunar-4.20.8</a>
</div>

<div class="installation" lang="en">
## Installation of Xfdesktop {#installation-of-xfdesktop}

Install <span class="application">Xfdesktop</span> by running the following commands:

```bash
./configure --prefix=/usr &&
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
**Installed Programs:** <span class="segbody">xfdesktop and xfdesktop-settings</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/backgrounds/xfce and /usr/share/pixmaps/xfdesktop</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfdesktop-prog"></a><span class="command"><span class="term"><strong>xfdesktop</strong></span></span>                is the <span class="application">Xfce</span> Desktop Environment's desktop manager
  <a id="xfdesktop-settings"></a><span class="command"><span class="term"><strong>xfdesktop-settings</strong></span></span>   is a <span class="application">GTK+ 3</span> application that allows you to change your desktop background, some preferences for the right click menu and what icons are displayed on the desktop
  -------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-settings.md "xfce4-settings-4.20.4")

    xfce4-settings-4.20.4

-   [Next](xfwm4.md "Xfwm4-4.20.0")

    Xfwm4-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
