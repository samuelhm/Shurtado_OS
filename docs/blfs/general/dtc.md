<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](doxygen.md "Doxygen-1.17.0")

    Doxygen-1.17.0

-   [Next](gcc.md "GCC-16.1.0")

    GCC-16.1.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dtc-1.8.1 {#dtc-1.8.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Dtc {#introduction-to-dtc}

The <span class="application">dtc</span> package contains the Device Tree Compiler for working with device tree source and binary files and also libfdt, a utility library for reading and manipulating device trees in the binary format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://kernel.org/pub/software/utils/dtc/dtc-1.8.1.tar.xz">https://kernel.org/pub/software/utils/dtc/dtc-1.8.1.tar.xz</a>

-   Download MD5 sum: 9753bdbf18763efef1f5ae8c0cecb5f6

-   Download size: 176 KB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### Dtc Dependencies

#### Optional

<a class="xref" href="libyaml.md" title="libyaml-0.2.5">libyaml-0.2.5</a>, <a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a>, and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a>
</div>

<div class="installation" lang="en">
## Installation of Dtc {#installation-of-dtc}

Install <span class="application">dtc</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D default_library=shared \
      -D python=disabled        &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed, you can build the PDF format of the documentation by issuing the following command:

```bash
pushd ../Documentation
  latexmk -bibtex --pdf dtc-paper &&
  latexmk -bibtex --pdf dtc-paper -c
popd
```

To install the documentation, as the <code class="systemitem">root</code> user issue the following command:

```bash
cp -R ../Documentation -T /usr/share/doc/dtc-1.8.1
```

If you have installed <a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a> and you wish to install the Python 3 bindings of this package, build the Python 3 module:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir ..
```

As the <code class="systemitem">root</code> user, install the Python 3 module:

```bash
pip3 install --no-index --find-links dist --no-user libfdt
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D python=disabled`*: This switch prevents building the Python 3 binding with the deprecated method (running <span class="command"><strong>setup.py</strong></span> directly). We will build the Python 3 binding with the <span class="command"><strong>pip3 wheel</strong></span> command separately if wanted.

<code class="envar">CC='gcc -Wl,-z,noexecstack'</code>: This variable prevents marking the shared libraries in the test suite as requiring executable stack. Glibc 2.41 or later has stopped allowing <code class="function">dlopen</code>ing such a shared library so the test suite would fail. But those shared libraries don't really need an executable stack, so we can use *`-Wl,-z,noexecstack`* to fix up the test suite. It's needed in the <code class="envar">CC</code> environment for the <span class="command"><strong>meson test</strong></span> because those shared libraries are built by a test script instead of the <span class="command"><strong>meson</strong></span>/<span class="command"><strong>ninja</strong></span> building system, and the test script does not recognize other <span class="quote">“<span class="quote">common</span>”</span> environment variables like <code class="envar">LDFLAGS</code>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">convert-dtsv0, dtc, dtdiff, fdtdump, fdtget, fdtoverlay, and fdtput</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfdt.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/python3.14/site-packages/libfdt-1.8.1.dist-info and /usr/share/doc/dtc-1.8.1 (optionally)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------------------------------------------------
  <a id="convert-dtsv0"></a><span class="command"><span class="term"><strong>convert-dtsv0</strong></span></span>   converts device tree v0 source to device tree v1
  <a id="dtc-prog"></a><span class="command"><span class="term"><strong>dtc</strong></span></span>                  compiles device tree source (dts) to device tree binary blob (dtb), or de-compiles dtb to dts
  <a id="dtdiff"></a><span class="command"><span class="term"><strong>dtdiff</strong></span></span>                 compares two different device trees
  <a id="fdtdump"></a><span class="command"><span class="term"><strong>fdtdump</strong></span></span>               prints a readable version of a flat device-tree file
  <a id="fdtget"></a><span class="command"><span class="term"><strong>fdtget</strong></span></span>                 reads values from device-tree
  <a id="fdtoverlay"></a><span class="command"><span class="term"><strong>fdtoverlay</strong></span></span>         applies a number of overlays to a base device tree blob
  <a id="fdtput"></a><span class="command"><span class="term"><strong>fdtput</strong></span></span>                 writes a property value to a device tree
  <a id="libfdt"></a><span class="term"><code class="filename">libfdt.so</code></span>                 is a utility library for reading and manipulating device trees in the binary format
  ---------------------------------------------------------- -----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](doxygen.md "Doxygen-1.17.0")

    Doxygen-1.17.0

-   [Next](gcc.md "GCC-16.1.0")

    GCC-16.1.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
