<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](rust-bindgen.md "rust-bindgen-0.72.1")

    rust-bindgen-0.72.1

-   [Next](slang.md "slang-2.3.3")

    slang-2.3.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SCons-4.10.1 {#scons-4.10.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SCons {#introduction-to-scons}

<span class="application">SCons</span> is a tool for building software (and other files) implemented in <span class="application">Python</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When expanding the tarball the package expands to scons-4.10.1, not the expected SCons-4.10.1.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/scons/SCons-4.10.1.tar.gz">https://downloads.sourceforge.net/scons/SCons-4.10.1.tar.gz</a>

-   Download MD5 sum: 8decd1df686532bc0bf7d50c5f12a678

-   Download size: 3.1 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of SCons {#installation-of-scons}

Build the package:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

As the <code class="systemitem">root</code> user, install the package:

```bash
pip3 install --no-index --find-links dist --no-user SCons &&
install -v -m664 *.1 /usr/share/man/man1
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">scons, scons-configure-cache, and sconsign</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/python3.14/site-packages/SCons{,-4.10.1.dist-info}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- ---------------------------------------------------------------------------------
  <a id="scons-prog"></a><span class="command"><span class="term"><strong>scons</strong></span></span>                              is a software construction tool
  <a id="scons-configure-cache"></a><span class="command"><span class="term"><strong>scons-configure-cache</strong></span></span>   shows or converts the configuration of an <span class="application">SCons</span> cache directory
  <a id="sconsign"></a><span class="command"><span class="term"><strong>sconsign</strong></span></span>                             prints <span class="application">SCons</span> <code class="filename">.sconsign</code> file information
  -------------------------------------------------------------------------- ---------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rust-bindgen.md "rust-bindgen-0.72.1")

    rust-bindgen-0.72.1

-   [Next](slang.md "slang-2.3.3")

    slang-2.3.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
