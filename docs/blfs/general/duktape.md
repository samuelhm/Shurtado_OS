<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](double-conversion.md "Double-conversion-3.4.0")

    Double-conversion-3.4.0

-   [Next](enchant.md "enchant-2.8.16")

    enchant-2.8.16

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# duktape-2.7.0 {#duktape-2.7.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to duktape {#introduction-to-duktape}

<span class="application">duktape</span> is an embeddable Javascript engine, with a focus on portability and compact footprint.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://duktape.org/duktape-2.7.0.tar.xz">https://duktape.org/duktape-2.7.0.tar.xz</a>

-   Download MD5 sum: b3200b02ab80125b694bae887d7c1ca6

-   Download size: 1003 KB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.3 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of duktape {#installation-of-duktape}

Install <span class="application">duktape</span> by running the following commands:

```bash
sed -i 's/-Os/-O2/' Makefile.sharedlibrary
make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr
```

Now, as the <code class="systemitem">root</code> user:

```bash
make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libduktape.so and libduktaped.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------
  <a id="libduktape"></a><span class="term"><code class="filename">libduktape.so</code></span>     is an embeddable Javascript engine
  <a id="libduktaped"></a><span class="term"><code class="filename">libduktaped.so</code></span>   is a debug version of <code class="filename">libduktape.so</code>
  ------------------------------------------------------ --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](double-conversion.md "Double-conversion-3.4.0")

    Double-conversion-3.4.0

-   [Next](enchant.md "enchant-2.8.16")

    enchant-2.8.16

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
