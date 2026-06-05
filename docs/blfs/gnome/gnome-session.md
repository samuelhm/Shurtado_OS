<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-shell-extensions.md "gnome-shell-extensions-50.2")

    gnome-shell-extensions-50.2

-   [Next](gnome-tweaks.md "gnome-tweaks-49.0")

    gnome-tweaks-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-session-50.1 {#gnome-session-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Session {#introduction-to-gnome-session}

The <span class="application">GNOME Session</span> package contains the <span class="application">GNOME</span> session manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-session/50/gnome-session-50.1.tar.xz">https://download.gnome.org/sources/gnome-session/50/gnome-session-50.1.tar.xz</a>

-   Download MD5 sum: 0c02fd88e93b89b8cf09f80637356ca8

-   Download size: 396 KB

-   Estimated disk space required: 7.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Session Dependencies

#### Required

<a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime),</span> and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Optional

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> with <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> and <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> (to build the documentation)
</div>

<div class="installation" lang="en">
## Installation of GNOME Session {#installation-of-gnome-session}

Install <span class="application">GNOME Session</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr              \
            --buildtype=release        \
            -D man=false               \
            -D docbook=false           \
            ..                         &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you generated the documentation, move it to a versioned directory:

```bash
mv -v /usr/share/doc/gnome-session{,-50.1}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false -D docbook=false`*: These parameters disable building documentation. Omit them if you have built the optional dependencies.

<code class="option">-D x11=true</code>: This option enables support for X11 sessions. X11 support is deprecated and will be removed in GNOME 50.
</div>

<div class="starting" lang="en">
## Starting GNOME {#starting-gnome}

The easiest way to start GNOME is to use a display manager. <a class="xref" href="../x/gdm.md" title="GDM-50.1">GDM-50.1</a> is the recommended display manager.

It is also possible to start <span class="application">GNOME</span> from the command line. However, you must still have <a class="xref" href="../x/gdm.md" title="GDM-50.1">GDM-50.1</a> installed for the desktop to work. In previous releases of GNOME, gnome-shell would start without it installed, but this changed in 48.0. GDM does not need to be enabled to start gnome-shell from the command line.

To start <span class="application">GNOME</span> without a display manager you need to determine your session ID, using <span class="command"><strong>loginctl</strong></span>. Once it is done, issue (we suppose the session ID is 1):

```bash
systemctl --user set-environment XDG_SESSION_TYPE=wayland XDG_SESSION_ID=1 &&
systemctl --user start gnome-session@gnome.target
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-session, gnome-session-inhibit, and gnome-session-quit</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/gnome-session-50.1 and /usr/share/gnome-session</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  <a id="gnome-session-prog"></a><span class="command"><span class="term"><strong>gnome-session</strong></span></span>              is used to start up the <span class="application">GNOME</span> Desktop environment
  <a id="gnome-session-inhibit"></a><span class="command"><span class="term"><strong>gnome-session-inhibit</strong></span></span>   is used to inhibit certain <span class="application">GNOME</span> Session functionality while executing the given command
  <a id="gnome-session-quit"></a><span class="command"><span class="term"><strong>gnome-session-quit</strong></span></span>         is used to end the <span class="application">GNOME</span> Session
  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-shell-extensions.md "gnome-shell-extensions-50.2")

    gnome-shell-extensions-50.2

-   [Next](gnome-tweaks.md "gnome-tweaks-49.0")

    gnome-tweaks-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
