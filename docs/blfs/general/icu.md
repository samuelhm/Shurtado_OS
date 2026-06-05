<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](highway.md "highway-1.4.0")

    highway-1.4.0

-   [Next](inih.md "inih-62")

    inih-62

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# icu-78.3 {#icu-78.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ICU {#introduction-to-icu}

The <span class="application">International Components for Unicode</span> (ICU) package is a mature, widely used set of C/C++ libraries providing Unicode and Globalization support for software applications. <span class="application">ICU</span> is widely portable and gives applications the same results on all platforms.

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

Upgrading this package to a new major version (for example, from 72.1 to 78.3) will require rebuilding many other packages. If some packages that use the libraries built by icu4c-78 are rebuilt, they will use the new libraries while current packages will use the previous libraries. If the Linux application loader (<code class="filename">/usr/lib/ld-linux-x86-64.so.2</code>) determines that both the old and new libraries are needed, and a symbol (name of data or function) exists in both versions of the library, all references to the symbol will be resolved to the version appearing earlier in the breadth-first sequence of the dependency graph. This may result in the application failing if the definition of the data or the behavior of the function referred by the symbol differs between two versions. To avoid the issue, users will need to rebuild every package linked to an ICU library as soon as possible once ICU is updated to a new major version.

To determine what external libraries are needed (directly or indirectly) by an application or a library, run:

```bash
ldd <application or library> 
```

or to see only programs and libraries that directly use a library:

```bash
readelf -d  <application or library> | grep NEEDED
```
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz">https://github.com/unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz</a>

-   Download MD5 sum: a7b736b570ef0e180c96a31715a00c78

-   Download size: 27 MB

-   Estimated disk space required: 362 MB (add 48 MB for tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; add 2.1 SBU for tests)
</div>

### ICU Dependencies

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of ICU {#installation-of-icu}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package expands to the directory <code class="filename">icu</code>.
</div>

A part of a test cannot be run on <code class="literal">i686</code>. Avoid executing it when building for that platform:

```bash
case $(uname -m) in
  i?86) sed -e "s/U_PLATFORM_IS_LINUX_BASED/__X86_64__ \&\& &/" \
            -i source/test/intltest/ustrtest.cpp ;;
esac
```

Install <span class="application">ICU</span> by running the following commands:

```bash
cd source                 &&
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. One test (intltest) still fails for unknown reasons on <code class="literal">i686</code> checking some thai conversions.

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
**Installed Programs:** <span class="segbody">derb, escapesrc, genbrk, genccode, gencfu, gencmn, gencnval, gendict, gennorm2, genrb, gensprep, icu-config, icuexportdata, icuinfo, icupkg, makeconv, pkgdata, and uconv</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libicudata.so, libicui18n.so, libicuio.so, libicutest.so, libicutu.so, and libicuuc.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/unicode, /usr/lib/icu, and /usr/share/icu</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------------------------
  <a id="derb"></a><span class="command"><span class="term"><strong>derb</strong></span></span>               disassembles a resource bundle
  <a id="escapesrc"></a><span class="command"><span class="term"><strong>escapesrc</strong></span></span>     converts <span class="quote">“<span class="quote">\\u</span>”</span> escaped characters into unicode characters
  <a id="genbrk"></a><span class="command"><span class="term"><strong>genbrk</strong></span></span>           compiles ICU break iteration rules source files into binary data files
  <a id="genccode"></a><span class="command"><span class="term"><strong>genccode</strong></span></span>       generates C or platform specific assembly code from an ICU data file
  <a id="gencfu"></a><span class="command"><span class="term"><strong>gencfu</strong></span></span>           reads in Unicode confusable character definitions and writes out the binary data
  <a id="gencmn"></a><span class="command"><span class="term"><strong>gencmn</strong></span></span>           generates an ICU memory-mappable data file
  <a id="gencnval"></a><span class="command"><span class="term"><strong>gencnval</strong></span></span>       compiles the converter's aliases file
  <a id="gendict"></a><span class="command"><span class="term"><strong>gendict</strong></span></span>         compiles word lists into ICU string trie dictionaries
  <a id="gennorm2"></a><span class="command"><span class="term"><strong>gennorm2</strong></span></span>       builds binary data files with Unicode normalization data
  <a id="genrb"></a><span class="command"><span class="term"><strong>genrb</strong></span></span>             compiles a resource bundle
  <a id="gensprep"></a><span class="command"><span class="term"><strong>gensprep</strong></span></span>       compiles StringPrep data from filtered RFC 3454 files
  <a id="icu-config"></a><span class="command"><span class="term"><strong>icu-config</strong></span></span>   outputs ICU build options
  <a id="icuinfo"></a><span class="command"><span class="term"><strong>icuinfo</strong></span></span>         outputs configuration information about the current ICU
  <a id="icupkg"></a><span class="command"><span class="term"><strong>icupkg</strong></span></span>           extracts or modifies an ICU .dat archive
  <a id="makeconv"></a><span class="command"><span class="term"><strong>makeconv</strong></span></span>       compiles a converter table
  <a id="pkgdata"></a><span class="command"><span class="term"><strong>pkgdata</strong></span></span>         packages data for use by ICU
  <a id="uconv"></a><span class="command"><span class="term"><strong>uconv</strong></span></span>             converts data from one encoding to another
  <a id="libicudata"></a><span class="term"><code class="filename">libicudata.so</code></span>   is the data library
  <a id="libicui18n"></a><span class="term"><code class="filename">libicui18n.so</code></span>   is the internationalization (i18n) library
  <a id="libicuio"></a><span class="term"><code class="filename">libicuio.so</code></span>       is the ICU I/O (unicode stdio) library
  <a id="libicutest"></a><span class="term"><code class="filename">libicutest.so</code></span>   is the test library
  <a id="libicutu"></a><span class="term"><code class="filename">libicutu.so</code></span>       is the tool utility library
  <a id="libicuuc"></a><span class="term"><code class="filename">libicuuc.so</code></span>       is the common library
  ---------------------------------------------------- ----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](highway.md "highway-1.4.0")

    highway-1.4.0

-   [Next](inih.md "inih-62")

    inih-62

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
