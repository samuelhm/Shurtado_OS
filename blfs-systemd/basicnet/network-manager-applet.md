<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](networkmanager.md "NetworkManager-1.56.1")

    NetworkManager-1.56.1

-   [Next](nmap.md "Nmap-7.99")

    Nmap-7.99

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# network-manager-applet-1.34.0 {#network-manager-applet-1.34.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NetworkManager Applet {#introduction-to-networkmanager-applet}

The <span class="application">NetworkManager Applet</span> provides a tool and a panel applet used to configure wired and wireless network connections through GUI. It's designed for use with any desktop environment that uses <span class="application">GTK+</span>, such as <span class="application">Xfce</span> and <span class="application">LXDE</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/network-manager-applet/1.34/network-manager-applet-1.34.0.tar.xz">https://download.gnome.org/sources/network-manager-applet/1.34/network-manager-applet-1.34.0.tar.xz</a>

-   Download MD5 sum: 83ff059aff3a691766d5f0079209e5af

-   Download size: 1.9 MB

-   Estimated disk space required: 46 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### NetworkManager Applet Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="libnma.md" title="libnma-1.10.6">libnma-1.10.6</a>, and <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a>

#### Required (Runtime)

Since this package uses <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a> for authorization, one <a class="xref" href="../postlfs/polkit.md#polkit-agent" title="Optional Runtime Dependencies">Polkit Authentication Agent</a> should be running when the functionality of this package is used.

#### Optional

<a class="xref" href="../gnome/gnome-bluetooth.md" title="gnome-bluetooth-47.2">gnome-bluetooth-47.2</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, and <a class="ulink" href="https://launchpad.net/libappindicator">libindicator</a>
</div>

<div class="installation" lang="en">
## Installation of NetworkManager Applet {#installation-of-networkmanager-applet}

Install <span class="application">NetworkManager Applet</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D appindicator=no  \
      -D selinux=false    \
      -D team=false       &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D appindicator=no`*: This switch disables AppIndicator support in network-manager-applet because it requires libindicator, which is not in BLFS. The build will fail without this option.

*`-D selinux=false`*: This switch forcibly disables <span class="application">SELinux</span> support since it is not currently in BLFS and the build will fail without it.

*`-D team=false`*: This switch disables the team configuration editor since it requires <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>. If you have Jansson installed, remove this option or set it to <code class="literal">true</code>.

<code class="option">-D wwan=false</code>: This switch disables WWAN support. Use this if you do not have <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">nm-applet and nm-connection-editor</span>
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

  ------------------------------------------------------------------------ -----------------------------------------------------------
  <a id="nm-connection-editor"></a><span class="command"><span class="term"><strong>nm-connection-editor</strong></span></span>   allows users to view and edit network connection settings
  ------------------------------------------------------------------------ -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](networkmanager.md "NetworkManager-1.56.1")

    NetworkManager-1.56.1

-   [Next](nmap.md "Nmap-7.99")

    Nmap-7.99

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
