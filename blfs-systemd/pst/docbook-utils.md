<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](docbook-dsssl.md "docbook-dsssl-1.79")

    docbook-dsssl-1.79

-   [Next](xml.md "Extensible Markup Language (XML)")

    Extensible Markup Language (XML)

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# DocBook-utils-0.6.14 {#docbook-utils-0.6.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook-utils {#introduction-to-docbook-utils}

The <span class="application">DocBook-utils</span> package is a collection of utility scripts used to convert and analyze SGML documents in general, and DocBook files in particular. The scripts are used to convert from DocBook or other SGML formats into <span class="quote">“<span class="quote">classical</span>”</span> file formats like HTML, man, info, RTF and many more. There's also a utility to compare two SGML files and only display the differences in markup. This is useful for comparing documents prepared for different languages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz">https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz</a>

-   Download MD5 sum: 6b41b18c365c01f225bc417cf632d81c

-   Download size: 124 KB

-   Estimated disk space required: 1.44 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/docbook-utils-0.6.14-grep_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/docbook-utils-0.6.14-grep_fix-1.patch</a>
</div>

### DocBook-utils Dependencies

#### Required

<a class="xref" href="openjade.md" title="OpenJade-1.3.2">OpenJade-1.3.2</a>, <a class="xref" href="docbook-dsssl.md" title="docbook-dsssl-1.79">docbook-dsssl-1.79</a>, and <a class="xref" href="docbook-3.1-dtd.md" title="docbook-3.1-dtd">docbook-3.1-dtd</a>

#### Recommended (Runtime Dependencies Only)

<a class="xref" href="../general/perl-modules.md#perl-sgmlspm" title="SGMLSpm-1.1">SGMLSpm-1.1</a> (for conversion to man and texinfo), and <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> or <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a> or <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a> (for conversion to ASCII text)
</div>

<div class="installation" lang="en">
## Installation of DocBook-utils {#installation-of-docbook-utils}

Install <span class="application">DocBook-utils</span> by running the following commands:

```bash
patch -Np1 -i ../docbook-utils-0.6.14-grep_fix-1.patch &&
sed -i 's:/html::' doc/HTML/Makefile.in                &&

./configure --prefix=/usr --mandir=/usr/share/man      &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc install
```

Many packages use an alternate name for the <span class="application">DocBook-utils</span> scripts. If you wish to create these alternate names, use the following command as the <code class="systemitem">root</code> user:

```bash
for doctype in html ps dvi man pdf rtf tex texi txt
do
    ln -svf docbook2$doctype /usr/bin/db2$doctype
done
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="command"><strong>jw</strong></span> script uses the <span class="command"><strong>which</strong></span> command to locate required utilities. You must install <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a> before attempting to use any of the <span class="application">DocBook-utils</span> programs.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>patch -Np1 -i ../docbook-utils-0.6.14-grep_fix-1.patch</strong></span>: This patch corrects the syntax in the jw (Jade Wrapper) script which is at the heart of much db2\* processing, so that the current version of <span class="application">grep</span> will not reject it.

<span class="command"><strong>sed -i 's:/html::' doc/HTML/Makefile.in</strong></span>: This command changes the installation directory of the HTML documents.

*`docdir=/usr/share/doc`*: This option is placed on the <span class="command"><strong>make install</strong></span> line because it is not recognized by <span class="command"><strong>configure</strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">docbook2dvi, docbook2html, docbook2man, docbook2pdf, docbook2ps, docbook2rtf, docbook2tex, docbook2texi, docbook2txt, jw, and sgmldiff</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/docbook-utils-0.6.14 and /usr/share/sgml/docbook/utils-0.6.14</span>
</div>

<div class="seg">
**Installed Symlinks:** <span class="segbody">db2dvi, db2html, db2man, db2pdf, db2ps, db2rtf, db2tex, db2texi, and db2txt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="docbook2"></a><span class="command"><span class="term"><strong>docbook2\</strong>*</span></span>   are simple one-line wrapper scripts to <span class="command"><strong>jw</strong></span>. They are provided as easy-to-remember names used to convert DocBook or other SGML files to the respective format
  <a id="db2"></a><span class="command"><span class="term"><strong>db2\</strong>*</span></span>             are symlinks pointing at the respectively named <span class="command"><strong>docbook2\</strong>*</span> commands, created to satisfy some program's use of these names
  <a id="jw"></a><span class="command"><span class="term"><strong>jw</strong></span></span>                 is a script used to convert DocBook or other SGML files to various output formats. It hides most of <span class="application">OpenJade</span>'s complexity and adds comfortable features
  <a id="sgmldiff"></a><span class="command"><span class="term"><strong>sgmldiff</strong></span></span>     is used to compare two SGML files and only return the differences in the markup. This is especially useful to compare files that should be identical except for language differences in the content
  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook-dsssl.md "docbook-dsssl-1.79")

    docbook-dsssl-1.79

-   [Next](xml.md "Extensible Markup Language (XML)")

    Extensible Markup Language (XML)

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
