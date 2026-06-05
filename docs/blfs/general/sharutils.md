<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](shared-mime-info.md "shared-mime-info-2.4")

    shared-mime-info-2.4

-   [Next](tidy-html5.md "tidy-html5-5.8.0")

    tidy-html5-5.8.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Sharutils-4.15.2 {#sharutils-4.15.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Sharutils {#introduction-to-sharutils}

The <span class="application">Sharutils</span> package contains utilities that can create 'shell' archives.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/sharutils/sharutils-4.15.2.tar.xz">https://ftpmirror.gnu.org/sharutils/sharutils-4.15.2.tar.xz</a>

-   Download MD5 sum: 5975ce21da36491d7aa6dc2b0d9788e0

-   Download size: 1.1 MB

-   Estimated disk space required: 22 MB (with the test suite)

-   Estimated build time: 0.4 SBU (with the test suite)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/sharutils-4.15.2-consolidated-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/sharutils-4.15.2-consolidated-1.patch</a>
</div>
</div>

<div class="installation" lang="en">
## Installation of Sharutils {#installation-of-sharutils}

First, fix issues exposed by current GCC versions:

```bash
patch -Np1 -i ../sharutils-4.15.2-consolidated-1.patch
```

Install <span class="application">Sharutils</span> by running the following commands:

```bash
autoreconf -fiv                                         &&
./configure --prefix=/usr --disable-dependency-tracking &&
make
```

To test the results, issue <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-dependency-tracking`*: This switch is used to disable unneeded code in the build system.

*`--with-openssl`*: This optional switch is used to enable incorporation of integrity checks into the package's executable programs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">shar, unshar, uudecode, and uuencode</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="shar"></a><span class="command"><span class="term"><strong>shar</strong></span></span>           creates "shell archives" (or shar files) which are in text format and can be mailed
  <a id="unshar"></a><span class="command"><span class="term"><strong>unshar</strong></span></span>       unpacks a shar file
  <a id="uudecode"></a><span class="command"><span class="term"><strong>uudecode</strong></span></span>   reads a file (or by default the standard input) and writes an encoded version to the standard output. The encoding uses only printing ASCII characters
  <a id="uuencode"></a><span class="command"><span class="term"><strong>uuencode</strong></span></span>   reads a file (or by default the standard input) and decodes the uuencoded version to the standard output
  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](shared-mime-info.md "shared-mime-info-2.4")

    shared-mime-info-2.4

-   [Next](tidy-html5.md "tidy-html5-5.8.0")

    tidy-html5-5.8.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
