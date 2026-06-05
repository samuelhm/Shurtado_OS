<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libportal.md "libportal-0.9.1")

    libportal-0.9.1

-   [Next](libptytty.md "libptytty-2.0")

    libptytty-2.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libproxy-0.5.12 {#libproxy-0.5.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libproxy {#introduction-to-libproxy}

The <span class="application">libproxy</span> package is a library that provides automatic proxy configuration management. This is useful in standardizing a way of dealing with proxy settings across all scenarios.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libproxy/libproxy/archive/0.5.12/libproxy-0.5.12.tar.gz">https://github.com/libproxy/libproxy/archive/0.5.12/libproxy-0.5.12.tar.gz</a>

-   Download MD5 sum: db615bbae5c20eb209a2cdbfe62e0fa3

-   Download size: 60 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### libproxy Dependencies

#### Recommended

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="duktape.md" title="duktape-2.7.0">duktape-2.7.0</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../gnome/gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of libproxy {#installation-of-libproxy}

Install <span class="application">libproxy</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..        \
      --prefix=/usr   \
      -D release=true &&

ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Still as the <code class="systemitem">root</code> user, remove the useless static library:

```bash
rm /usr/lib/libproxy.a
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">proxy</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libproxy.so and libpxbackend-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libproxy, /usr/lib/libproxy, and /usr/share/doc/libproxy-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------
  <a id="proxy"></a><span class="command"><span class="term"><strong>proxy</strong></span></span>             displays the proxy server that should be used to reach a given network resource
  <a id="libproxy-lib"></a><span class="term"><code class="filename">libproxy.so</code></span>   provides a standard method of performing automatic proxy configuration
  ---------------------------------------------------- ---------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libportal.md "libportal-0.9.1")

    libportal-0.9.1

-   [Next](libptytty.md "libptytty-2.0")

    libptytty-2.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
