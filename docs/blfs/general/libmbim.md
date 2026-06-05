<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](liblinear.md "liblinear-250")

    liblinear-250

-   [Next](libnvme.md "libnvme-1.16.1")

    libnvme-1.16.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmbim-1.34.0 {#libmbim-1.34.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmbim {#introduction-to-libmbim}

The <span class="application">libmbim</span> package contains a GLib-based library for talking to WWAN modems and devices which speak the Mobile Interface Broadband Model (MBIM) protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/mobile-broadband/libmbim/-/archive/1.34.0/libmbim-1.34.0.tar.gz">https://gitlab.freedesktop.org/mobile-broadband/libmbim/-/archive/1.34.0/libmbim-1.34.0.tar.gz</a>

-   Download MD5 sum: e5c2b38c6a79a047b93cb0c9510bd91f

-   Download size: 292 KB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libmbim Dependencies

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a>, and <a class="ulink" href="https://ftpmirror.gnu.org/gnu/help2man/">help2man</a>
</div>

<div class="installation" lang="en">
## Installation of libmbim {#installation-of-libmbim}

Install <span class="application">libmbim</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mbimcli and mbim-network</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmbim-glib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libmbim-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  <a id="mbimcli"></a><span class="command"><span class="term"><strong>mbimcli</strong></span></span>             is a utility used to control MBIM devices
  <a id="mbim-network"></a><span class="command"><span class="term"><strong>mbim-network</strong></span></span>   is a utility used for simple network management of MBIM devices
  <a id="libmbim-glib"></a><span class="term"><code class="filename">libmbim-glib.so</code></span>   contains API functions for talking to WWAN modems and devices which speak the Mobile Interface Broadband Model (MBIM) protocol
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](liblinear.md "liblinear-250")

    liblinear-250

-   [Next](libnvme.md "libnvme-1.16.1")

    libnvme-1.16.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
