<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-online-accounts.md "gnome-online-accounts-3.58.1")

    gnome-online-accounts-3.58.1

-   [Next](libgtop.md "libgtop-2.41.3")

    libgtop-2.41.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgee-0.20.8 {#libgee-0.20.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgee {#introduction-to-libgee}

The <span class="application">libgee</span> package is a collection library providing GObject based interfaces and classes for commonly used data structures.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgee/0.20/libgee-0.20.8.tar.xz">https://download.gnome.org/sources/libgee/0.20/libgee-0.20.8.tar.xz</a>

-   Download MD5 sum: e8e37df1c7a93aa5ba08be12ae7e7cad

-   Download size: 676 KB

-   Estimated disk space required: 32 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### libgee Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended) and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="ulink" href="https://github.com/linux-test-project/lcov">LCOV</a>
</div>

<div class="installation" lang="en">
## Installation of libgee {#installation-of-libgee}

Install <span class="application">libgee</span> by running the following commands:

```bash
./configure --prefix=/usr --enable-vala &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgee-0.8.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/gee-0.8</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  <a id="libgee-lib"></a><span class="term"><code class="filename">libgee-0.8.so</code></span>   contains the <span class="application">libgee</span> API functions
  ---------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-online-accounts.md "gnome-online-accounts-3.58.1")

    gnome-online-accounts-3.58.1

-   [Next](libgtop.md "libgtop-2.41.3")

    libgtop-2.41.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
