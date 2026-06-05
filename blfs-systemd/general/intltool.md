<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](imagemagick.md "ImageMagick-7.1.2-13")

    ImageMagick-7.1.2-13

-   [Next](iso-codes.md "ISO Codes-4.20.1")

    ISO Codes-4.20.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Intltool-0.51.0 {#intltool-0.51.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Intltool {#introduction-to-intltool}

The <span class="application">Intltool</span> package provides an internationalization tool used for extracting translatable strings from source files, collecting the extracted strings with messages from traditional source files (<code class="filename"><source directory>/<package>/po</code>) and merging the translations into <code class="filename">.xml</code>, <code class="filename">.desktop</code> and <code class="filename">.oaf</code> files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz">http://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz</a>

-   Download MD5 sum: 12e517cac2b57a0121cda351570f1e63

-   Download size: 159 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Intltool Dependencies

#### Required

<a class="xref" href="perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a>
</div>

<div class="installation" lang="en">
## Installation of Intltool {#installation-of-intltool}

First fix a warning that is caused by perl-5.22 and later:

```bash
sed -i 's:\\\${:\\\$\\{:' intltool-update.in
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The above regular expression looks unusual because of all the backslashes. What it does is add a backslash before the right brace character in the sequence '\\\${' resulting in '\\\$\\{'.
</div>

Install <span class="application">Intltool</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 -D doc/I18N-HOWTO -t /usr/share/doc/intltool-0.51.0
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">intltool-extract, intltool-merge, intltool-prepare, intltool-update, and intltoolize</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/intltool-0.51.0 and /usr/share/intltool</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------------------
  <a id="intltoolize"></a><span class="command"><span class="term"><strong>intltoolize</strong></span></span>             prepares a package to use <span class="application">intltool</span>.
  <a id="intltool-extract"></a><span class="command"><span class="term"><strong>intltool-extract</strong></span></span>   generates header files that can be read by <span class="command"><strong>gettext</strong></span>.
  <a id="intltool-merge"></a><span class="command"><span class="term"><strong>intltool-merge</strong></span></span>       merges translated strings into various file types.
  <a id="intltool-prepare"></a><span class="command"><span class="term"><strong>intltool-prepare</strong></span></span>   updates pot files and merges them with translation files.
  <a id="intltool-update"></a><span class="command"><span class="term"><strong>intltool-update</strong></span></span>     updates the <code class="filename">po</code> template files and merges them with the translations.
  ---------------------------------------------------------------- -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](imagemagick.md "ImageMagick-7.1.2-13")

    ImageMagick-7.1.2-13

-   [Next](iso-codes.md "ISO Codes-4.20.1")

    ISO Codes-4.20.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
