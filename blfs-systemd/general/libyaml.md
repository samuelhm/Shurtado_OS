<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libwacom.md "libwacom-2.19.0")

    libwacom-2.19.0

-   [Next](libfyaml.md "libfyaml-0.9.6")

    libfyaml-0.9.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libyaml-0.2.5 {#libyaml-0.2.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libyaml {#introduction-to-libyaml}

The <span class="application">yaml</span> package contains a C library for parsing and emitting YAML (YAML Ain't Markup Language) code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/yaml/libyaml/releases/download/0.2.5/yaml-0.2.5.tar.gz">https://github.com/yaml/libyaml/releases/download/0.2.5/yaml-0.2.5.tar.gz</a>

-   Download MD5 sum: bb15429d8fb787e7d3f1c83ae129a999

-   Download size: 596 KB

-   Estimated disk space required: 6.4 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### libyaml Dependencies

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libyaml {#installation-of-libyaml}

Install <span class="application">libyaml</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libyaml.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------
  <a id="libyaml-lib"></a><span class="term"><code class="filename">libyaml.so</code></span>   contains API functions for parsing and emitting YAML code
  -------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libwacom.md "libwacom-2.19.0")

    libwacom-2.19.0

-   [Next](libfyaml.md "libfyaml-0.9.6")

    libfyaml-0.9.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
