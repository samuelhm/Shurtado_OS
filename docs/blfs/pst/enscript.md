<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](ps.md "PostScript")

    PostScript

-   [Next](epdfview.md "ePDFView-gtk3-20200814")

    ePDFView-gtk3-20200814

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Enscript-1.6.6 {#enscript-1.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Enscript {#introduction-to-enscript}

<span class="application">Enscript</span> converts ASCII text files to PostScript, HTML, RTF, ANSI and overstrikes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

<span class="application">Enscript</span> cannot convert UTF-8 encoded text to PostScript. The issue is discussed in detail in the <a class="xref" href="../introduction/locale-issues.md#locale-not-valid-option" title="The Needed Encoding is Not a Valid Option in the Program">Needed Encoding Not a Valid Option</a> section of the <a class="xref" href="../introduction/locale-issues.md" title="Locale Related Issues">Locale Related Issues</a> page. The solution is to use <a class="xref" href="paps.md" title="paps-0.8.0">paps-0.8.0</a>, instead of <span class="application">Enscript</span>, for converting UTF-8 encoded text to PostScript.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/enscript/enscript-1.6.6.tar.gz">https://ftpmirror.gnu.org/enscript/enscript-1.6.6.tar.gz</a>

-   Download MD5 sum: 3acc242b829adacabcaf28533f049afd

-   Download size: 1.3 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
</div>

### Enscript Dependencies

#### Optional

<a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of Enscript {#installation-of-enscript}

Install <span class="application">Enscript</span> by running the following commands:

```bash
./configure --prefix=/usr              \
            --sysconfdir=/etc/enscript \
            --localstatedir=/var       \
            --with-media=Letter        &&
make CC="gcc -std=gnu17"               &&

pushd docs &&
  makeinfo --plaintext -o enscript.txt enscript.texi &&
popd
```

If you have <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed, you can create Postscript and PDF documentation by issuing (does not support parallel make):

```bash
make -j1 -C docs ps pdf
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755 -d /usr/share/doc/enscript-1.6.6 &&
install -v -m644    README* *.txt docs/*.txt \
                    /usr/share/doc/enscript-1.6.6
```

If you built Postscript and PDF documentation, install it using the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 docs/*.{dvi,pdf,ps} \
                 /usr/share/doc/enscript-1.6.6
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc/enscript`*: This switch puts configuration data in <code class="filename">/etc/enscript</code> instead of <code class="filename">/usr/etc</code>.

*`--localstatedir=/var`*: This switch sets the directory for runtime data to <code class="filename">/var</code> instead of <code class="filename">/usr/var</code>.

*`--with-media=Letter`*: This switch sets the medium format to letter size instead of the A4 default.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">diffpp, enscript, mkafmmap, over, sliceprint, and states</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/enscript, /usr/share/doc/enscript-1.6.6, and /usr/share/enscript</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="diffpp"></a><span class="command"><span class="term"><strong>diffpp</strong></span></span>            converts <span class="command"><strong>diff</strong></span> output files to a format suitable to be printed with <span class="command"><strong>enscript</strong></span>
  <a id="enscript-prog"></a><span class="command"><span class="term"><strong>enscript</strong></span></span>   is a filter, used primarily by printing scripts, that converts ASCII text files to PostScript, HTML, RTF, ANSI and overstrikes
  <a id="mkafmmap"></a><span class="command"><span class="term"><strong>mkafmmap</strong></span></span>        creates a font map from a given file
  <a id="over"></a><span class="command"><span class="term"><strong>over</strong></span></span>                is a script which calls <span class="command"><strong>enscript</strong></span> and passes the correct parameters to create overstriked fonts
  <a id="sliceprint"></a><span class="command"><span class="term"><strong>sliceprint</strong></span></span>    slices documents with long lines
  <a id="states"></a><span class="command"><span class="term"><strong>states</strong></span></span>            is an <span class="command"><strong>awk</strong></span>-like text processing tool with some state machine extensions. It is designed for program source code highlighting and for similar tasks where state information helps input processing
  ----------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ps.md "PostScript")

    PostScript

-   [Next](epdfview.md "ePDFView-gtk3-20200814")

    ePDFView-gtk3-20200814

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
