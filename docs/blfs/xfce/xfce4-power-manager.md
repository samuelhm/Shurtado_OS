<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-appfinder.md "xfce4-appfinder-4.20.0")

    xfce4-appfinder-4.20.0

-   [Next](xfce4-settings.md "xfce4-settings-4.20.4")

    xfce4-settings-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-power-manager-4.20.0 {#xfce4-power-manager-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Power Manager {#introduction-to-xfce4-power-manager}

The <span class="application">Xfce4 Power Manager</span> is a power manager for the <span class="application">Xfce</span> desktop, <span class="application">Xfce power manager</span> manages the power sources on the computer and the devices that can be controlled to reduce their power consumption (such as LCD brightness level or monitor sleep). In addition, <span class="application">Xfce4 Power Manager</span> provides a set of freedesktop-compliant <span class="application">DBus</span> interfaces to inform other applications about current power level so that they can adjust their power consumption.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfce4-power-manager/4.20/xfce4-power-manager-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/xfce4-power-manager/4.20/xfce4-power-manager-4.20.0.tar.bz2</a>

-   Download MD5 sum: a9e27be5dafea884fb9fbbb918062963

-   Download size: 1.5 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
</div>

### Xfce4 Power Manager Dependencies

#### Required

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>, and <a class="xref" href="xfce4-panel.md" title="xfce4-panel-4.20.7">xfce4-panel-4.20.7</a>

#### Recommended

<a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a> (required for laptop backlight control)

#### Optional

<a class="xref" href="../basicnet/networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Power Manager {#installation-of-xfce4-power-manager}

Install <span class="application">Xfce4 Power Manager</span> by running the following commands:

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

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xfce4-power-manager, xfce4-power-manager-settings, xfce4-pm-helper, and xfpm-power-backlight-helper</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxfce4powermanager.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  <a id="xfce4-pm-helper"></a><span class="command"><span class="term"><strong>xfce4-pm-helper</strong></span></span>                             is a helper program for the suspend and hibernate functions of <span class="command"><strong>xfce4-power-manager</strong></span>
  <a id="xfce4-power-manager-prog"></a><span class="command"><span class="term"><strong>xfce4-power-manager</strong></span></span>                is the <span class="application">Xfce</span> Power Manager
  <a id="xfce4-power-manager-settings"></a><span class="command"><span class="term"><strong>xfce4-power-manager-settings</strong></span></span>   is a utility that comes with the <span class="application">Xfce</span> Power Manager to access/change its configuration
  <a id="xfpm-power-backlight-helper"></a><span class="command"><span class="term"><strong>xfpm-power-backlight-helper</strong></span></span>     is a command line utility to get or set the brightness of your screen
  ---------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-appfinder.md "xfce4-appfinder-4.20.0")

    xfce4-appfinder-4.20.0

-   [Next](xfce4-settings.md "xfce4-settings-4.20.4")

    xfce4-settings-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
