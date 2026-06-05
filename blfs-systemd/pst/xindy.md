<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](dvisvgm.md "dvisvgm-3.6")

    dvisvgm-3.6

-   [Next](../appendices/creat-comm.md "Creative Commons License")

    Creative Commons License

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xindy-2.5.1 {#xindy-2.5.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xindy {#introduction-to-xindy}

<span class="application">Xindy</span> is an index processor that can be used to generate book-like indexes for arbitrary document-preparation systems. This includes systems such as TeX and LaTeX, the roff-family, and SGML/XML-based systems (e.g., HTML) that process some kind of text and generate indexing information.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://tug.ctan.org/support/xindy/base/xindy-2.5.1.tar.gz">https://tug.ctan.org/support/xindy/base/xindy-2.5.1.tar.gz</a>

-   Download MD5 sum: 221acfeeb0f6f8388f89a59c56491041

-   Download size: 506 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Required Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/xindy-2.5.1-upstream_fixes-2.patch">https://www.linuxfromscratch.org/patches/blfs/svn/xindy-2.5.1-upstream_fixes-2.patch</a>
</div>

### Xindy Dependencies

#### Required

<a class="xref" href="../general/clisp.md" title="Clisp-2.49.95">Clisp-2.49.95</a> and <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a>
</div>

<div class="installation" lang="en">
## Installation of xindy {#installation-of-xindy}

Install <span class="application">xindy</span> by running the following commands:

```bash
export TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

sed -i "s/ grep -v '^;'/ awk NF/" make-rules/inputenc/Makefile.in &&

sed -i 's%\(indexentry\)%\1\\%' make-rules/inputenc/make-inp-rules.pl &&

patch -Np1 -i ../xindy-2.5.1-upstream_fixes-2.patch &&

./configure --prefix=$TEXLIVE_PREFIX              \
            --bindir=$TEXLIVE_PREFIX/bin/$TEXARCH \
            --datarootdir=$TEXLIVE_PREFIX         \
            --includedir=/usr/include             \
            --libdir=$TEXLIVE_PREFIX/texmf-dist   \
            --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man &&

make LC_ALL=POSIX
```

This package does not have a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i "s/ grep -v '\^;'/ awk NF/" ...</strong></span>: The build sorts files in latin{1..3} encodings to create latin.xdy, and unicode versions of these to create utf8.xdy after using <span class="command"><strong>grep -v '\^;'</strong></span> to remove blank lines. With <span class="application">grep-2.23</span> any data not in the expected encoding is treated as binary, resulting in a useless file. This command uses an alternative way of removing blank lines.

<span class="command"><strong>sed -i 's%\\(indexentry\\)%\\1\\\\%' ...</strong></span>: A regexp contains <code class="literal">indexentry{</code> - perl has warned about the unescaped left brace for some time and now treats it as illegal. Change it to <code class="literal">indexentry\{</code>, doubling the backslash for <span class="command"><strong>sed</strong></span>.

<span class="command"><strong>patch -Np1 -i ../xindy-2.5.1-upstream_fixes-2.patch</strong></span>: <span class="application">Xindy</span> is now maintained at CTAN. This patch updates the source with some of the changes made there (but ignoring changes which were only made to allow for spaces in pathnames and some trivial recent changes).

*`--prefix=`*, *`--bindir=`*, *`--datarootdir=`*, and other <span class="quote">“<span class="quote">dir</span>”</span> switches: these switches ensure that the files installed from source will overwrite any corresponding files previously installed by <span class="application">install-tl-unx</span> so that the alternative methods of installing <span class="application">texlive</span> are consistent.

*`--includedir=/usr/include`*: This parameter ensures that the <code class="filename">kpathsea</code> headers from <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> will be found.

<span class="command"><strong>make LC_ALL=POSIX</strong></span>: with the current version of <span class="application">coreutils</span> it is essential to build <span class="application">xindy</span> in the POSIX (or C) locale because in a UTF-8 locale the file <code class="filename">latin.xdy</code> will contain only a heading and then a line '<code class="literal">Binary file (standard input) matches</code>' instead of the many lines of <span class="application">lisp</span> merge-rule commands it ought to contain.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">tex2xindy, texindy, xindy</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$TEXLIVE_PREFIX/texmf-dist/xindy</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  <a id="tex2xindy"></a><span class="command"><span class="term"><strong>tex2xindy</strong></span></span>   transforms a LaTeX index file into a xindy raw index file
  <a id="texindy"></a><span class="command"><span class="term"><strong>texindy</strong></span></span>       is a wrapper for xindy that turns on many LaTeX conventions by default
  <a id="xindy-prog"></a><span class="command"><span class="term"><strong>xindy</strong></span></span>      creates a sorted and tagged index from a raw LaTeX index
  -------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dvisvgm.md "dvisvgm-3.6")

    dvisvgm-3.6

-   [Next](../appendices/creat-comm.md "Creative Commons License")

    Creative Commons License

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
