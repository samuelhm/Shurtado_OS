<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libqalculate.md "libqalculate-5.11.0")

    libqalculate-5.11.0

-   [Next](libseccomp.md "libseccomp-2.6.0")

    libseccomp-2.6.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libqmi-1.38.0 {#libqmi-1.38.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libqmi {#introduction-to-libqmi}

The <span class="application">libqmi</span> package contains a GLib-based library for talking to WWAN modems and devices which speak the Qualcomm MSM Interface (QMI) protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/libqmi/-/archive/1.38.0/libqmi-1.38.0.tar.gz">https://gitlab.freedesktop.org/mobile-broadband/libqmi/-/archive/1.38.0/libqmi-1.38.0.tar.gz</a>

-   Download MD5 sum: 4ed2c13150611007f56f84b896449d46

-   Download size: 4.2 MB

-   Estimated disk space required: 75 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
</div>

### libqmi Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended) and <a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a>

#### Recommended

<a class="xref" href="libmbim.md" title="libmbim-1.34.0">libmbim-1.34.0</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://ftpmirror.gnu.org/gnu/help2man/">help2man</a>, and <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib">libqrtr-glib</a>
</div>

<div class="installation" lang="en">
## Installation of libqmi {#installation-of-libqmi}

Install <span class="application">libqmi</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
      -D qrtr=false            \
      -D man=false             &&

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

*`-D man=false`*: Use this option if the external <a class="ulink" href="https://ftpmirror.gnu.org/gnu/help2man/">help2man</a> package is not installed.

*`-D qrtr=false`*: This switch disables support for the QRTR protocol which needs the external <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib">libqrtr-glib</a> package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">qmicli, qmi-firmware-update, and qmi-network</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libqmi-glib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libqmi-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  <a id="qmicli"></a><span class="command"><span class="term"><strong>qmicli</strong></span></span>                             is a utility used to control QMI devices
  <a id="qmi-firmware-update"></a><span class="command"><span class="term"><strong>qmi-firmware-update</strong></span></span>   is a utility used to perform firmware updates on QMI devices
  <a id="qmi-network"></a><span class="command"><span class="term"><strong>qmi-network</strong></span></span>                   is a utility used for simple network management of QMI devices
  <a id="libqmi-glib"></a><span class="term"><code class="filename">libqmi-glib.so</code></span>                   contains API functions for talking to WWAN modems and devices which speak the Qualcomm MSM Interface (QMI) protocol
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libqalculate.md "libqalculate-5.11.0")

    libqalculate-5.11.0

-   [Next](libseccomp.md "libseccomp-2.6.0")

    libseccomp-2.6.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
