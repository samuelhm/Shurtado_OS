<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](fontconfig.md "Fontconfig-2.18.1")

    Fontconfig-2.18.1

-   [Next](gegl.md "gegl-0.4.70")

    gegl-0.4.70

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FriBidi-1.0.16 {#fribidi-1.0.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FriBidi {#introduction-to-fribidi}

The <span class="application">FriBidi</span> package is an implementation of the <a class="ulink" href="https://www.unicode.org/reports/tr9/">Unicode Bidirectional Algorithm (BIDI)</a>. This is useful for supporting Arabic and Hebrew alphabets in other packages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fribidi/fribidi/releases/download/v1.0.16/fribidi-1.0.16.tar.xz">https://github.com/fribidi/fribidi/releases/download/v1.0.16/fribidi-1.0.16.tar.xz</a>

-   Download MD5 sum: 333ad150991097a627755b752b87f9ff

-   Download size: 1.1 MB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### FriBidi Dependencies

#### Optional

<a class="ulink" href="https://www.ciselant.de/c2man/c2man.md">c2man (to build man pages)</a>
</div>

<div class="installation" lang="en">
## Installation of FriBidi {#installation-of-fribidi}

Install <span class="application">FriBidi</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">fribidi</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfribidi.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/fribidi</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  <a id="fribidi-prog"></a><span class="command"><span class="term"><strong>fribidi</strong></span></span>    is a command-line interface to the <code class="filename">libfribidi</code> library and can be used to convert a logical string to visual output
  <a id="libfribidi"></a><span class="term"><code class="filename">libfribidi.so</code></span>   contains functions used to implement the <a class="ulink" href="https://www.unicode.org/reports/tr9/">Unicode Bidirectional Algorithm</a>
  ---------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fontconfig.md "Fontconfig-2.18.1")

    Fontconfig-2.18.1

-   [Next](gegl.md "gegl-0.4.70")

    gegl-0.4.70

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
