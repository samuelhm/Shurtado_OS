<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfdesktop.md "Xfdesktop-4.20.2")

    Xfdesktop-4.20.2

-   [Next](xfce4-session.md "xfce4-session-4.20.4")

    xfce4-session-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xfwm4-4.20.0 {#xfwm4-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfwm4 {#introduction-to-xfwm4}

<span class="application">Xfwm4</span> is the window manager for <span class="application">Xfce</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfwm4/4.20/xfwm4-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/xfwm4/4.20/xfwm4-4.20.0.tar.bz2</a>

-   Download MD5 sum: e74cfb30b6e9ebf9cbaac0827dd534e3

-   Download size: 1.4 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU
</div>

### Xfwm4 Dependencies

#### Required

<a class="xref" href="libwnck.md" title="libwnck-43.3">libwnck-43.3</a> and <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Recommended

<a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/xfwm4">https://wiki.linuxfromscratch.org/blfs/wiki/xfwm4</a>
</div>

<div class="installation" lang="en">
## Installation of Xfwm4 {#installation-of-xfwm4}

Install <span class="application">Xfwm4</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">xfwm4, xfwm4-settings, xfwm4-tweaks-settings and xfwm4-workspace-settings</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/xfce4/xfwm4, /usr/share/themes/{Daloa,Default{,-hdpi,-xhdpi},Kokodi,Moheli}, and /usr/share/xfwm4</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfwm4-prog"></a><span class="command"><span class="term"><strong>xfwm4</strong></span></span>                                    is the <span class="application">Xfce</span> window manager
  <a id="xfwm4-settings"></a><span class="command"><span class="term"><strong>xfwm4-settings</strong></span></span>                       is a <span class="application">GTK+ 3</span> application that allows setting some preferences such as your theme, keyboard shortcuts and mouse focus behavior
  <a id="xfwm4-tweaks-settings"></a><span class="command"><span class="term"><strong>xfwm4-tweaks-settings</strong></span></span>         is a <span class="application">GTK+ 3</span> application that allows setting some more preferences for <span class="application">Xfwm4</span>
  <a id="xfwm4-workspace-settings"></a><span class="command"><span class="term"><strong>xfwm4-workspace-settings</strong></span></span>   is a <span class="application">GTK+ 3</span> application that allows setting your workspace preferences
  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfdesktop.md "Xfdesktop-4.20.2")

    Xfdesktop-4.20.2

-   [Next](xfce4-session.md "xfce4-session-4.20.4")

    xfce4-session-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
