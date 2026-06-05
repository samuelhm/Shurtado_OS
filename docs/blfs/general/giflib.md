<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](gegl.md "gegl-0.4.70")

    gegl-0.4.70

-   [Next](glad.md "Glad-2.0.8")

    Glad-2.0.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# giflib-6.1.3 {#giflib-6.1.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to giflib {#introduction-to-giflib}

The <span class="application">giflib</span> package contains libraries for reading and writing GIFs as well as programs for converting and working with GIF files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sourceforge.net/projects/giflib/files/giflib-6.1.3.tar.gz">https://sourceforge.net/projects/giflib/files/giflib-6.1.3.tar.gz</a>

-   Download MD5 sum: a70e90ff780e9ebee9cb84b82bbd46a7

-   Download size: 460 KB

-   Estimated disk space required: 4.2 MB (with documentation)

-   Estimated build time: less than 0.1 SBU (with documentation)
</div>

### giflib Dependencies

#### Optional

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (required if you run <span class="command"><strong>make</strong></span> after <span class="command"><strong>make clean</strong></span>) [^\[1\]^](#ftn.idm140011183394576){#idm140011183394576 .footnote}
</div>

<div class="installation" lang="en">
## Installation of giflib {#installation-of-giflib}

Install <span class="application">giflib</span> by running the following commands:

```bash
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr \
     DOCDIR=/usr/share/doc/giflib-6.1.3 install &&

rm -fv /usr/lib/libgif.a
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>rm -fv /usr/lib/libgif.a</strong></span>: This command removes a static library which is not used by any BLFS package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gifbuild, gifclrmp, giffix, giftext, and giftool</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgif.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/giflib-6.1.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gifbuild"></a><span class="command"><span class="term"><strong>gifbuild</strong></span></span>   dumps GIF data in a textual format, or undumps it to a GIF
  <a id="gifclrmp"></a><span class="command"><span class="term"><strong>gifclrmp</strong></span></span>   modifies GIF image colormaps
  <a id="giffix"></a><span class="command"><span class="term"><strong>giffix</strong></span></span>       clumsily attempts to fix truncated GIF images
  <a id="giftext"></a><span class="command"><span class="term"><strong>giftext</strong></span></span>     prints (text only) general information about a GIF file
  <a id="giftool"></a><span class="command"><span class="term"><strong>giftool</strong></span></span>     is a GIF transformation tool
  <a id="libgif"></a><span class="term"><code class="filename">libgif.so</code></span>       contains API functions required by the <span class="application">giflib</span> programs and any other programs needing library functionality to read, write and manipulate GIF images
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>

<div class="footnotes">
\

------------------------------------------------------------------------

<div class="footnote">
[^\[1\]^](#idm140011183394576){.para} Pre-built documentation is present in this tarball. <span class="command"><strong>make</strong></span> will detect that documentation already exists in the distribution if <span class="command"><strong>make clean</strong></span> was not run, and will not require the <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> dependency. However, running <span class="command"><strong>make clean</strong></span> will result in the pre-built documentation being deleted, thus requiring <span class="command"><strong>xmlto</strong></span> to build the documentation if <span class="command"><strong>make</strong></span> is run afterwards.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gegl.md "gegl-0.4.70")

    gegl-0.4.70

-   [Next](glad.md "Glad-2.0.8")

    Glad-2.0.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
