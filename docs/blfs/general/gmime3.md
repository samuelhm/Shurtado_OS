<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](glibmm2.md "GLibmm-2.88.0")

    GLibmm-2.88.0

-   [Next](gmmlib.md "gmmlib-22.10.0")

    gmmlib-22.10.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GMime-3.2.15 {#gmime-3.2.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GMime {#introduction-to-gmime}

The <span class="application">GMime</span> package contains a set of utilities for parsing and creating messages using the Multipurpose Internet Mail Extension (MIME) as defined by the applicable RFCs. See the <a class="ulink" href="https://spruce.sourceforge.net/gmime/">GMime web site</a> for the RFCs resourced. This is useful as it provides an API which adheres to the MIME specification as closely as possible while also providing programmers with an extremely easy to use interface to the API functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/jstedfast/gmime/releases/download/3.2.15/gmime-3.2.15.tar.xz">https://github.com/jstedfast/gmime/releases/download/3.2.15/gmime-3.2.15.tar.xz</a>

-   Download MD5 sum: f7d6b4ad3253e73c72237fde5bced617

-   Download size: 2.1 MB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### GMime Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended) and <a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>

#### Optional

<a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>, <a class="xref" href="../postlfs/gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, and <a class="ulink" href="https://download.mono-project.com/sources/gtk-sharp/">Gtk#</a> (requires <a class="ulink" href="https://www.mono-project.com/Main_Page">Mono</a>)
</div>

<div class="installation" lang="en">
## Installation of GMime {#installation-of-gmime}

Install <span class="application">GMime</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Two tests, test-pgp and test-pgpmime, are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgmime-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gmime-3.0 and /usr/share/gtk-doc/html/gmime-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------
  <a id="libgmime-3"></a><span class="term"><code class="filename">libgmime-3.0.so</code></span>   contains API functions used by programs that need to comply to the MIME standards
  ------------------------------------------------------ -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glibmm2.md "GLibmm-2.88.0")

    GLibmm-2.88.0

-   [Next](gmmlib.md "gmmlib-22.10.0")

    gmmlib-22.10.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
