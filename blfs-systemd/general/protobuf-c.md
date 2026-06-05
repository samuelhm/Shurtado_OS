<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](protobuf.md "Protobuf-35.0")

    Protobuf-35.0

-   [Next](qca.md "Qca-2.3.10")

    Qca-2.3.10

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Protobuf-c-1.5.2 {#protobuf-c-1.5.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Protobuf-c {#introduction-to-protobuf-c}

The <span class="application">Protobuf-c</span> package contains an implementation of the Google Protocol Buffers data serialization format in C.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz">https://github.com/protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz</a>

-   Download MD5 sum: 0612ee47cccaaf4ad1c4f0c8bdc13abf

-   Download size: 520 KB

-   Estimated disk space required: 56 MB

-   Estimated build time: 0.6 SBU (with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/protobuf-c-1.5.2-protobuf34_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/protobuf-c-1.5.2-protobuf34_fix-1.patch</a>
</div>

### Protobuf-c Dependencies

#### Required

<a class="xref" href="protobuf.md" title="Protobuf-35.0">Protobuf-35.0</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of Protobuf-c {#installation-of-protobuf-c}

First fix issues caused by protobuf-34 and later:

```bash
patch -Np1 -i ../protobuf-c-1.5.2-protobuf34_fix-1.patch
```

Install <span class="application">Protobuf-c</span> by running the following commands:

```bash
CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++20" \
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

<code class="envar">CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++20"</code>: Override the default C++ standard (C++ 2017) of this package, as the headers from protobuf-35 and later require C++ 2020 features.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">protoc-gen-c and protoc-c (symlinked to protoc-gen-c)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libprotobuf-c.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/google and /usr/include/protobuf-c</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------
  <a id="protoc-c"></a><span class="command"><span class="term"><strong>protoc-c</strong></span></span>             generates C descriptor code from a .proto file
  <a id="libprotobuf-c"></a><span class="term"><code class="filename">libprotobuf-c.so</code></span>   contains a C implementation of the Google Protocol Buffers data serialization format
  ---------------------------------------------------------- --------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](protobuf.md "Protobuf-35.0")

    Protobuf-35.0

-   [Next](qca.md "Qca-2.3.10")

    Qca-2.3.10

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
