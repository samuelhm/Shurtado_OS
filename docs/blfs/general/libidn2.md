<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libidn.md "libidn-1.43")

    libidn-1.43

-   [Next](libksba.md "libksba-1.8.0")

    libksba-1.8.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libidn2-2.3.8 {#libidn2-2.3.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libidn2 {#introduction-to-libidn2}

<span class="application">libidn2</span> is a package designed for internationalized string handling based on standards from the Internet Engineering Task Force (IETF)'s IDN working group, designed for internationalized domain names.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libidn/libidn2-2.3.8.tar.gz">https://ftpmirror.gnu.org/libidn/libidn2-2.3.8.tar.gz</a>

-   Download MD5 sum: a8e113e040d57a523684e141970eea7a

-   Download size: 2.1 MB

-   Estimated disk space required: 21 MB (add 3 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.6 SBU for tests)
</div>

### libidn2 Dependencies

#### Recommended

<a class="xref" href="libunistring.md" title="libunistring-1.4.2">libunistring-1.4.2</a>

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libidn2 {#installation-of-libidn2}

Install <span class="application">libidn2</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Program:** <span class="segbody">idn2</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libidn2.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/gtk-doc/html/libidn2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------
  <a id="idn2"></a><span class="command"><span class="term"><strong>idn2</strong></span></span>             is a command line interface to the internationalized domain library
  <a id="libidn2-lib"></a><span class="term"><code class="filename">libidn2.so</code></span>   contains a generic Stringprep implementation used for internationalized string handling
  -------------------------------------------------- -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libidn.md "libidn-1.43")

    libidn-1.43

-   [Next](libksba.md "libksba-1.8.0")

    libksba-1.8.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
