<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxkbcommon.md "libxkbcommon-1.13.2")

    libxkbcommon-1.13.2

-   [Next](libxmlb.md "libxmlb-0.3.27")

    libxmlb-0.3.27

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxml2-2.15.3 {#libxml2-2.15.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxml2 {#introduction-to-libxml2}

The <span class="application">libxml2</span> package contains libraries and utilities used for parsing XML files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.3.tar.xz">https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.3.tar.xz</a>

-   Download MD5 sum: b7b0123654f86ebf630a5cbedaafdece

-   Download size: 3.1 MB

-   Estimated disk space required: 64 MB (add 27 MB for documentation and 17 MB for tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests and documentation)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional Test Suite: <a class="ulink" href="https://www.w3.org/XML/Test/xmlts20130923.tar.gz">https://www.w3.org/XML/Test/xmlts20130923.tar.gz</a> - This enables <span class="command"><strong>make check</strong></span> to do complete testing.
</div>

### libxml2 Dependencies

#### Recommended

<a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>

#### Optional (for generating the documentation)

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
## Installation of libxml2 {#installation-of-libxml2}

First, remove an unnecessary call to <span class="command"><strong>git</strong></span> in <code class="filename">meson.build</code>:

```bash
sed -i "/'git'/,+3d" meson.build
```

Install <span class="application">libxml2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D history=enabled  \
      -D icu=enabled      &&
ninja
```

If you wish to build and install the manual pages and the documentation, you should have <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed, and run:

```bash
sed -e "/^dir_doc/s/\$/ + '-' + meson.project_version()/" \
    -i ../meson.build                                     &&
meson configure -D docs=enabled                           &&
ninja
```

If you downloaded the test suite, issue the following command:

```bash
tar xf ../../xmlts20130923.tar.gz -C ..
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tests use <a class="ulink" href="http://localhost/">http://localhost/</a> to test parsing of external entities. If the machine where you run the tests serves as a web site, the tests may hang, depending on the content of the file served. It is therefore recommended to shut down the server during the tests, as the <code class="systemitem">root</code> user:

```bash
systemctl stop httpd.service
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

The <span class="command"><strong>xml2-config</strong></span> may return flags needed to link against the static library for the project, including the references to the <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a> libraries. That would be pointless because we only install the shared library. To make things worse, that may cause some packages using <span class="application">libxml2</span> to be unnecessarily linked against some <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a> library, then those packages will need a rebuild if ICU is upgraded to a new major version. Fix this by issuing, as <code class="systemitem">root</code>:

```bash
sed "s/--static/--shared/" -i /usr/bin/xml2-config
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D history=enabled`*: This switch enables <span class="application">Readline</span> support when running <span class="command"><strong>xmlcatalog</strong></span> or <span class="command"><strong>xmllint</strong></span> in shell mode.

*`-D icu=enabled`*: This switch enables support for <span class="application">ICU</span>, which provides additional Unicode support. This is needed for some packages in BLFS, such as for QtWebEngine.

<code class="option">-D python=enabled</code>: This switch enables the libxml2 Python bindings. Note that those bindings are deprecated due to flaws in the API design and they will be removed in libxml2-2.16.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xml2-config, xmlcatalog, and xmllint</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxml2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libxml2, /usr/lib/cmake/libxml2, and /usr/share/doc/libxml2-2.15.3,</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
  <a id="xml2-config"></a><span class="command"><span class="term"><strong>xml2-config</strong></span></span>   determines the compile and linker flags that should be used to compile and link programs that use <code class="filename">libxml2</code>
  <a id="xmlcatalog"></a><span class="command"><span class="term"><strong>xmlcatalog</strong></span></span>     is used to monitor and manipulate XML and SGML catalogs
  <a id="xmllint"></a><span class="command"><span class="term"><strong>xmllint</strong></span></span>           parses XML files and outputs reports (based upon options) to detect errors in XML coding
  <a id="libxml2-lib"></a><span class="term"><code class="filename">libxml2.so</code></span>       provides functions for programs to parse files that use the XML format
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxkbcommon.md "libxkbcommon-1.13.2")

    libxkbcommon-1.13.2

-   [Next](libxmlb.md "libxmlb-0.3.27")

    libxmlb-0.3.27

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
