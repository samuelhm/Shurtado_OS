<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libslirp.md "libslirp-4.9.3")

    libslirp-4.9.3

-   [Next](libtirpc.md "libtirpc-1.3.7")

    libtirpc-1.3.7

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsoup-3.6.6 {#libsoup-3.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsoup3 {#introduction-to-libsoup3}

The <span class="application">libsoup3</span> is a HTTP client/server library for <span class="application">GNOME</span>. It uses GObject and the GLib main loop to integrate with <span class="application">GNOME</span> applications and it also has an asynchronous API for use in threaded applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libsoup/3.6/libsoup-3.6.6.tar.xz">https://download.gnome.org/sources/libsoup/3.6/libsoup-3.6.6.tar.xz</a>

-   Download MD5 sum: 9e07742595800ecf301eafb52300dd89

-   Download size: 1.5 MB

-   Estimated disk space required: 42 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libsoup-3.6.6-upstream_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libsoup-3.6.6-upstream_fixes-1.patch</a>
</div>

### libsoup3 Dependencies

#### Required

<a class="xref" href="glib-networking.md" title="glib-networking-2.80.1">glib-networking-2.80.1</a>, <a class="xref" href="libpsl.md" title="libpsl-0.21.5">libpsl-0.21.5</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a> (required to run the test suite), <a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="curl.md" title="cURL-8.20.0">cURL-8.20.0</a> (required to run the test suite), <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> (required to run the test suite), <a class="xref" href="../general/php.md" title="PHP-8.5.6">PHP-8.5.6</a> compiled with XMLRPC-EPI support (only used for the XMLRPC regression tests), <a class="xref" href="samba.md" title="Samba-4.24.0">Samba-4.24.0</a> (ntlm_auth is required to run the test suite), <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>, and <a class="ulink" href="https://github.com/posener/wstest">wstest</a>
</div>

<div class="installation" lang="en">
## Installation of libsoup3 {#installation-of-libsoup3}

First, fix a security vulnerability that could lead to credential leakage:

```bash
patch -Np1 -i ../libsoup-3.6.6-upstream_fixes-1.patch
```

Fix the installation path of API documentation:

```bash
sed 's/apiversion/soup_version/' -i docs/reference/meson.build
```

Install <span class="application">libsoup3</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            ..                     &&
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

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

<code class="option">-D docs=enabled</code>: If <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> is installed, the API documentation will be built and installed no matter if this option is used or not. This option causes the <span class="command"><strong>meson</strong></span> command to fail if <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libsoup-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libsoup-3.0, /usr/share/doc/libsoup-3.6.6 (only installed if gi-docgen is available)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  <a id="libsoup-3"></a><span class="term"><code class="filename">libsoup-3.0.so</code></span>   provides functions for asynchronous HTTP connections
  ---------------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libslirp.md "libslirp-4.9.3")

    libslirp-4.9.3

-   [Next](libtirpc.md "libtirpc-1.3.7")

    libtirpc-1.3.7

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
