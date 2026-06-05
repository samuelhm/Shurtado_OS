<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libyaml.md "libyaml-0.2.5")

    libyaml-0.2.5

-   [Next](log4cplus.md "log4cplus-2.1.2")

    log4cplus-2.1.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libfyaml-0.9.6 {#libfyaml-0.9.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libfyaml {#introduction-to-libfyaml}

The <span class="application">libfyaml</span> package contains a YAML 1.3 parser and writer. It also supports YAML 0.1 with the help of the libyaml library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/pantoniou/libfyaml/releases/download/v0.9.6/libfyaml-0.9.6.tar.gz">https://github.com/pantoniou/libfyaml/releases/download/v0.9.6/libfyaml-0.9.6.tar.gz</a>

-   Download MD5 sum: f6d3756a80cb1ff99714e510cf4ce13d

-   Download size: 1.1 MB

-   Estimated disk space required: 280 MB (with tests)

-   Estimated build time: 0.4 SBU (add 1.8 SBU for tests)
</div>

### libfyaml Dependencies

#### Recommended

<a class="xref" href="libyaml.md" title="libyaml-0.2.5">libyaml-0.2.5</a> (for YAML 0.1 support)

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> and <a class="xref" href="python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a> (for documentation), <a class="ulink" href="https://www.docker.com/">docker</a>, <a class="ulink" href="https://jqlang.org/">jq</a>, and <a class="ulink" href="https://libcheck.github.io/check/">check</a> (for additional tests)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libfyaml {#installation-of-libfyaml}

Install <span class="application">libfyaml</span> by running the following commands:

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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fy-compose (link to fy-tool), fy-dump (link to fy-tool), fy-filter (link to fy-tool), fy-join (link to fy-tool), fy-testsuite (link to fy-tool), fy-tool, and fy-ypath (link to fy-tool)</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfyaml.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------
  <a id="fy-tool"></a><span class="command"><span class="term"><strong>fy-tool</strong></span></span>         manipulates YAML files up to version 1.3 of the standard
  <a id="lib-libfyaml"></a><span class="term"><code class="filename">libfyaml.so</code></span>   contains functions that can parse and emit YAML files up to version 1.3 of the standard
  ---------------------------------------------------- -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libyaml.md "libyaml-0.2.5")

    libyaml-0.2.5

-   [Next](log4cplus.md "log4cplus-2.1.2")

    log4cplus-2.1.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
