<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](sharutils.md "Sharutils-4.15.2")

    Sharutils-4.15.2

-   [Next](time.md "Time-1.10")

    Time-1.10

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# tidy-html5-5.8.0 {#tidy-html5-5.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tidy HTML5 {#introduction-to-tidy-html5}

The <span class="application">Tidy HTML5</span> package contains a command line tool and libraries used to read HTML, XHTML and XML files and write cleaned up markup. It detects and corrects many common coding errors and strives to produce visually equivalent markup that is both W3C compliant and compatible with most browsers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/htacg/tidy-html5/archive/5.8.0/tidy-html5-5.8.0.tar.gz">https://github.com/htacg/tidy-html5/archive/5.8.0/tidy-html5-5.8.0.tar.gz</a>

-   Download MD5 sum: 0f6c55ef651e258adbe5750f555af50f

-   Download size: 992 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/tidy-html5-5.8.0-cmake4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/tidy-html5-5.8.0-cmake4_fixes-1.patch</a>
</div>

### Tidy HTML5 Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
## Installation of Tidy HTML5 {#installation-of-tidy-html5}

First, fix a build failure that occurs when using CMake 4.0 and later:

```bash
patch -Np1 -i ../tidy-html5-5.8.0-cmake4_fixes-1.patch
```

Install <span class="application">Tidy HTML5</span> by running the following commands:

```bash
cd build/cmake &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TAB2SPACE=ON        \
      ../..    &&

make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
rm -fv /usr/lib/libtidy.a &&
install -v -m755 tab2space /usr/bin
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to build the release library without any debug \`assert\` in the code.

*`-D BUILD_TAB2SPACE=ON`*: This switch is used to enable building the <span class="command"><strong>tab2space</strong></span> utility.
</div>

<div class="configuration" lang="en">
## Configuring Tidy HTML5 {#configuring-tidy-html5}

<div class="sect3" lang="en">
### Config Files {#config-files}

The absolute path of the file specified in <code class="envar">HTML_TIDY</code>.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The default configuration options can be set in the file defined in <code class="envar">HTML_TIDY</code>. Additional configuration options can be passed to <span class="command"><strong>tidy</strong></span> via command line parameters or the <code class="option">-config <file></code> parameter.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">tab2space and tidy</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libtidy.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/tidy-5.8.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  <a id="tab2space"></a><span class="command"><span class="term"><strong>tab2space</strong></span></span>   is a utility to expand tabs and ensure consistent line endings
  <a id="tidy"></a><span class="command"><span class="term"><strong>tidy</strong></span></span>             validates, corrects, and pretty-prints HTML files
  <a id="libtidy"></a> <span class="term"><code class="filename">libtidy.so</code></span>      library provides the <span class="application">Tidy HTML5</span> API functions to <span class="command"><strong>tidy</strong></span> and can also be called by other programs
  -------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sharutils.md "Sharutils-4.15.2")

    Sharutils-4.15.2

-   [Next](time.md "Time-1.10")

    Time-1.10

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
