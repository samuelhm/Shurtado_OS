<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](boost.md "boost-1.91.0-1")

    boost-1.91.0-1

-   [Next](clucene.md "CLucene-2.3.3.4")

    CLucene-2.3.3.4

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# brotli-1.2.0 {#brotli-1.2.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Brotli {#introduction-to-brotli}

<span class="application">Brotli</span> provides a general-purpose lossless compression algorithm that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling. Its libraries are particularly used for WOFF2 fonts on webpages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/google/brotli/archive/v1.2.0/brotli-1.2.0.tar.gz">https://github.com/google/brotli/archive/v1.2.0/brotli-1.2.0.tar.gz</a>

-   Download MD5 sum: 8fbfae9a5ecbc278ae7f761ecb6d1285

-   Download size: 632 KB

-   Estimated disk space required: 33 MB (with python3 bindings)

-   Estimated build time: 0.3 SBU (with python3 bindings; parallelism=4)
</div>

### Brotli Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for testing Python3 bindings)
</div>

<div class="installation" lang="en">
## Installation of Brotli {#installation-of-brotli}

Install <span class="application">brotli</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If desired, build the <span class="application">Python3</span> bindings:

```bash
cd .. &&

sed -e '/libraries +=/s/=.*/= [required_system_library[3:]]/' \
    -e '/package_configuration/d'                             \
    -e '/pkgconfig/d'                                         \
    -i setup.py                                               &&

USE_SYSTEM_BROTLI=1 \
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

Install the <span class="application">Python3</span> bindings as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user Brotli
```

To test the <span class="application">Python3</span> binding, issue: <span class="command"><strong>pytest</strong></span>.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... -i setup.py</strong></span>: Allow building the <span class="application">Python3</span> binding with <code class="envar">USE_SYSTEM_BROTLI=1</code> but without the Python 3 pkgconfig module (that BLFS does not provide) installed.

<code class="envar">USE_SYSTEM_BROTLI=1</code>: Stop <code class="filename">setup.py</code> from rebuilding the entire package all over again, use the already installed libraries for the <span class="application">Python3</span> binding instead.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">brotli</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbrotlicommon.so, libbrotlidec.so, and libbrotlienc.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/brotli and /usr/lib/python3.14/site-packages/Brotli-1.2.0.dist-info (if you built and installed the Python3 bindings)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- -----------------------------------------------------------------------------
  <a id="brotli-prog"></a><span class="command"><span class="term"><strong>brotli</strong></span></span>                            can compress or decompress files, or test the integrity of compressed files
  <a id="libbrotlicommon"></a><span class="term"><code class="filename">libbrotlicommon{-static.a,.so}</code></span>   is the Brotli common dictionary library
  <a id="libbrotlidec"></a><span class="term"><code class="filename">libbrotlidec{-static.a,.so}</code></span>         is the Brotli decoder library
  <a id="libbrotlienc"></a><span class="term"><code class="filename">libbrotlienc{-static.a,.so}</code></span>         is the Brotli common encoder library
  -------------------------------------------------------------------------- -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](boost.md "boost-1.91.0-1")

    boost-1.91.0-1

-   [Next](clucene.md "CLucene-2.3.3.4")

    CLucene-2.3.3.4

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
