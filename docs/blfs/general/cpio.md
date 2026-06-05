<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](colord.md "Colord-1.4.8")

    Colord-1.4.8

-   [Next](cups-pk-helper.md "cups-pk-helper-0.2.7")

    cups-pk-helper-0.2.7

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cpio-2.15 {#cpio-2.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cpio {#introduction-to-cpio}

The <span class="application">cpio</span> package contains tools for archiving.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/cpio/cpio-2.15.tar.bz2">https://ftpmirror.gnu.org/cpio/cpio-2.15.tar.bz2</a>

-   Download MD5 sum: 3394d444ca1905ea56c94b628b706a0b

-   Download size: 1.6 MB

-   Estimated disk space required: 21 MB (with tests and docs)

-   Estimated build time: 0.3 SBU (with tests and docs)
</div>

### CPIO Dependencies

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of cpio {#installation-of-cpio}

Add a workaround for an issue shown by gcc15:

```bash
sed -e "/^extern int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
    -i src/extern.h
sed -e "/^int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
    -i src/global.c
```

Install <span class="application">cpio</span> by running the following commands:

```bash
./configure --prefix=/usr \
            --enable-mt   \
            --with-rmt=/usr/libexec/rmt &&
make &&
makeinfo --html            -o doc/html      doc/cpio.texi &&
makeinfo --html --no-split -o doc/cpio.md doc/cpio.texi &&
makeinfo --plaintext       -o doc/cpio.txt  doc/cpio.texi
```

If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed and wish to create PDF or Postscript documentation, issue one or both of the following commands:

```bash
make -C doc pdf &&
make -C doc ps
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755 -d /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/cpio-2.15/html &&
install -v -m644    doc/cpio.{html,txt} \
                    /usr/share/doc/cpio-2.15
```

If you built PDF or Postscript documentation, install it by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m644 doc/cpio.{pdf,ps,dvi} \
                 /usr/share/doc/cpio-2.15
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-mt`*: This parameter forces the building and installation of the <span class="command"><strong>mt</strong></span> program.

*`--with-rmt=/usr/libexec/rmt`*: This parameter inhibits building the <span class="command"><strong>rmt</strong></span> program as it is already installed by the <span class="application">Tar</span> package in LFS.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cpio and mt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/cpio-2.15</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- -----------------------------------------
  <a id="cpio-prog"></a><span class="command"><span class="term"><strong>cpio</strong></span></span>   copies files to and from archives
  <a id="mt"></a><span class="command"><span class="term"><strong>mt</strong></span></span>            controls magnetic tape drive operations
  --------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](colord.md "Colord-1.4.8")

    Colord-1.4.8

-   [Next](cups-pk-helper.md "cups-pk-helper-0.2.7")

    cups-pk-helper-0.2.7

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
