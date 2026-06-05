<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](mc.md "MC-4.8.33")

    MC-4.8.33

-   [Next](notification-daemon.md "notification-daemon-3.20.0")

    notification-daemon-3.20.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ModemManager-1.24.2 {#modemmanager-1.24.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ModemManager {#introduction-to-modemmanager}

<span class="application">ModemManager</span> provides a unified high level API for communicating with mobile broadband modems, regardless of the protocol used to communicate with the actual device.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/archive/1.24.2/ModemManager-1.24.2.tar.gz">https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/archive/1.24.2/ModemManager-1.24.2.tar.gz</a>

-   Download MD5 sum: b72860c54670f362e947edba160fa98e

-   Download size: 2.0 MB

-   Estimated disk space required: 59 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; with tests)
</div>

### ModemManager Dependencies

#### Required

<a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="libmbim.md" title="libmbim-1.34.0">libmbim-1.34.0</a>, <a class="xref" href="libqmi.md" title="libqmi-1.38.0">libqmi-1.38.0</a>, <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for one test)

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/ModemManager">https://wiki.linuxfromscratch.org/blfs/wiki/ModemManager</a>
</div>

<div class="installation" lang="en">
## Installation of ModemManager {#installation-of-modemmanager}

Install <span class="application">ModemManager</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
      -D qrtr=false            &&
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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bash_completion=false`*: Use this option if the external <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a> package is not installed.

*`-D qrtr=false`*: This switch disables support for the QRTR protocol which needs the external <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib">libqrtr-glib</a> package.
</div>

<div class="configuration" lang="en">
## Configuring ModemManager {#configuring-modemmanager}

<div class="sect3" lang="en">
### Systemd Units {#systemd-units}

To start the <span class="command"><strong>ModemManager</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable ModemManager
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mmcli and ModemManager</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmm-glib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/ModemManager, /usr/include/libmm-glib, /usr/include/ModemManager, /usr/lib/ModemManager, /usr/share/ModemManager, /usr/share/gtk-doc/html/libmm-glib (optional), and /usr/share/gtk-doc/html/ModemManager (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="mmcli"></a><span class="command"><span class="term"><strong>mmcli</strong></span></span>                      is a utility used to control and monitor the <span class="application">ModemManager</span>
  <a id="ModemManager-prog"></a><span class="command"><span class="term"><strong>ModemManager</strong></span></span>   is a <span class="application">D-Bus</span> service used to communicate with modems
  <a id="libmm-glib"></a><span class="term"><code class="filename">libmm-glib.so</code></span>            contains API functions for communicating with mobile broadband modems, regardless of the protocol used to communicate with the actual device
  ------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mc.md "MC-4.8.33")

    MC-4.8.33

-   [Next](notification-daemon.md "notification-daemon-3.20.0")

    notification-daemon-3.20.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
