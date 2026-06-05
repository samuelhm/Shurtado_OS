<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](texlive.md "texlive-20250308-source")

    texlive-20250308-source

-   [Next](biber.md "biber-2.21")

    biber-2.21

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# asymptote-3.10 {#asymptote-3.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to asymptote {#introduction-to-asymptote}

<span class="application">Asymptote</span> is a powerful descriptive vector graphics language that provides a natural coordinate-based framework for technical drawing. Labels and equations can be typeset with LaTeX. As well as EPS, PDF, and PNG output, it can produce WebGL 3D HTML rendering and (using <span class="application">dvisvgm</span>) SVG output.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/asymptote/asymptote-3.10.src.tgz">https://downloads.sourceforge.net/asymptote/asymptote-3.10.src.tgz</a>

-   Download MD5 sum: b89cc85a4621fa4afedcb5e988c625c7

-   Download size: 25 MB

-   Estimated disk space required: 335 MB (62 MB installed after overwriting files in \$TEXLIVE_PREFIX/texmf-dist/, with all the dependencies which are in BLFS)

-   Estimated build time: 0.8 SBU (using parallelism=4)
</div>

### asymptote Dependencies

#### Required

<a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> and <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a>

#### Recommended

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a>, <a class="xref" href="../general/gc.md" title="GC-8.2.12">GC-8.2.12</a>, <a class="xref" href="../x/glew.md" title="GLEW-2.3.1">GLEW-2.3.1</a>, <a class="xref" href="../general/glm.md" title="GLM-1.0.3">GLM-1.0.3</a> and <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>

#### Recommended at runtime

<a class="xref" href="dvisvgm.md" title="dvisvgm-3.6">dvisvgm-3.6</a> to allow svg output

#### Optional

<a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="../general/gsl.md" title="gsl-2.8">gsl-2.8</a>, <a class="xref" href="../general/libsigsegv.md" title="libsigsegv-2.15">libsigsegv-2.15</a>, <a class="ulink" href="https://github.com/Tencent/rapidjson/releases/">rapidjson</a> to use <a class="ulink" href="https://microsoft.github.io/language-server-protocol/implementors/tools/">LSP</a> which can be used with <a class="ulink" href="https://asymptote.sourceforge.io/doc/Language-server-protocol.md#index-LSP/">emacs</a>, <a class="ulink" href="https://pypi.org/project/click/">click</a>, and <a class="ulink" href="https://eigen.tuxfamily.org/">eigen</a>

#### Optional (at runtime)

<a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> to convert output to other formats such as JPEG or to create animated GIFs, <a class="ulink" href="https://pypi.org/project/PyQt5/">PyQt5</a> (not tested, has a build dependency of Qt5) to use xasy

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/asymptote">https://wiki.linuxfromscratch.org/blfs/wiki/asymptote</a>
</div>

<div class="installation" lang="en">
## Installation of asymptote {#installation-of-asymptote}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Certain 3D PDF scripts may not work when invoked from pdflatex on some zen+ amdgpu APU machines.
</div>

Install <span class="application">asymptote</span> by running the following commands:

```bash
export TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

./configure --prefix=$TEXLIVE_PREFIX                          \
            --bindir=$TEXLIVE_PREFIX/bin/$TEXARCH             \
            --datarootdir=$TEXLIVE_PREFIX/texmf-dist          \
            --infodir=$TEXLIVE_PREFIX/texmf-dist/doc/info     \
            --libdir=$TEXLIVE_PREFIX/texmf-dist               \
            --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man       \
            --disable-lsp                                     \
            --enable-gc=system                                \
            --with-latex=$TEXLIVE_PREFIX/texmf-dist/tex/latex \
            --with-context=$TEXLIVE_PREFIX/texmf-dist/tex/context/third &&

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

*`--prefix=`*, *`--bindir=`*, *`--datarootdir=`*, and other <span class="quote">“<span class="quote">dir</span>”</span> switches: these switches ensure that the files installed from source will overwrite any corresponding files previously installed by <span class="application">install-tl-unx</span> so that the alternative methods of installing <span class="application">texlive</span> are consistent.

*`--libdir=$TEXLIVE_PREFIX/texmf-dist`*: This parameter ensures that the <code class="filename">asymptote</code> directory will similarly overwrite any files installed by install-tl-unx.

*`--disable-lsp`*: The Language Server Protocol is enabled by default, with several third-party sources included, but it does not build unless boost and rapidjson have been installed.

*`--enable-gc=system`*: this ensures that the system version of <code class="filename">libgc.so</code> will be used instead of the version shipped with this package.

*`--with-latex=`* *`--with-context=`*: These switches ensure that style files and a tex file will be installed into the <span class="application">texlive</span> directories instead of creating a <code class="filename">texmf-local</code> directory for them.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">asy and xasy</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$TEXLIVE_PREFIX/texmf-dist/asymptote, \$TEXLIVE_PREFIX/doc/asymptote, and \$TEXLIVE_PREFIX/info/asymptote</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------- -------------------------------------------------
  <a id="asy"></a><span class="command"><span class="term"><strong>asy</strong></span></span>     is a vector graphics program
  <a id="xasy"></a><span class="command"><span class="term"><strong>xasy</strong></span></span>   is a Python3 script providing a Qt5 GUI for asy
  ---------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](texlive.md "texlive-20250308-source")

    texlive-20250308-source

-   [Next](biber.md "biber-2.21")

    biber-2.21

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
