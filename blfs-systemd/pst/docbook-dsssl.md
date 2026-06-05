<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](openjade.md "OpenJade-1.3.2")

    OpenJade-1.3.2

-   [Next](docbook-utils.md "DocBook-utils-0.6.14")

    DocBook-utils-0.6.14

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-dsssl-1.79 {#docbook-dsssl-1.79}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook DSSSL Stylesheets {#introduction-to-docbook-dsssl-stylesheets}

The <span class="application">DocBook DSSSL Stylesheets</span> package contains DSSSL stylesheets. These are used by <span class="application">OpenJade</span> or other tools to transform SGML and XML DocBook files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2">https://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2</a>

-   Download (FTP): [](){.ulink}

-   Download MD5 sum: bc192d23266b9a664ca0aba4a7794c7c

-   Download size: 277 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
**Documentation and test data**

-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/docbook/docbook-dsssl-doc-1.79.tar.bz2">https://downloads.sourceforge.net/docbook/docbook-dsssl-doc-1.79.tar.bz2</a>

-   Download MD5 sum: 9a7b809a21ab7d2749bb328334c380f2

-   Download size: 142 KB
</div>

### DocBook DSSSL Stylesheets Dependencies

#### Required

<a class="xref" href="sgml-common.md" title="sgml-common-0.6.3">sgml-common-0.6.3</a>

#### Required (to Test the DocBook SGML Toolchain)

<a class="xref" href="docbook-3.1-dtd.md" title="docbook-3.1-dtd">docbook-3.1-dtd</a>, <a class="xref" href="docbook-4.5-dtd.md" title="docbook-4.5-dtd">docbook-4.5-dtd</a>, <a class="xref" href="opensp.md" title="OpenSP-1.5.2">OpenSP-1.5.2</a>, and <a class="xref" href="openjade.md" title="OpenJade-1.3.2">OpenJade-1.3.2</a>
</div>

<div class="installation" lang="en">
## Installation of DocBook DSSSL Stylesheets {#installation-of-docbook-dsssl-stylesheets}

If you downloaded the documentation, run:

```bash
tar -xf ../docbook-dsssl-doc-1.79.tar.bz2 --strip-components=1
```

Install <span class="application">DocBook DSSSL Stylesheets</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 bin/collateindex.pl /usr/bin                      &&
install -v -m644 bin/collateindex.pl.1 /usr/share/man/man1         &&
install -v -d -m755 /usr/share/sgml/docbook/dsssl-stylesheets-1.79 &&
cp -v -R * /usr/share/sgml/docbook/dsssl-stylesheets-1.79          &&

install-catalog --add /etc/sgml/dsssl-docbook-stylesheets.cat \
    /usr/share/sgml/docbook/dsssl-stylesheets-1.79/catalog         &&

install-catalog --add /etc/sgml/dsssl-docbook-stylesheets.cat \
    /usr/share/sgml/docbook/dsssl-stylesheets-1.79/common/catalog  &&

install-catalog --add /etc/sgml/sgml-docbook.cat              \
    /etc/sgml/dsssl-docbook-stylesheets.cat
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

The above commands create an installation script for this package.
</div>

<div class="testing" lang="en">
## Testing the DocBook SGML Toolchain (Optional) {#testing-the-docbook-sgml-toolchain-optional}

The following commands will perform the necessary tests to confirm that your installed DocBook SGML toolchain will produce desired results. You must have the <a class="xref" href="docbook-3.1-dtd.md" title="docbook-3.1-dtd">docbook-3.1-dtd</a>, <a class="xref" href="docbook-4.5-dtd.md" title="docbook-4.5-dtd">docbook-4.5-dtd</a>, <a class="xref" href="opensp.md" title="OpenSP-1.5.2">OpenSP-1.5.2</a>, and <a class="xref" href="openjade.md" title="OpenJade-1.3.2">OpenJade-1.3.2</a> packages installed, and perform the tests as the <code class="systemitem">root</code> user.

All tests will be performed from the <code class="filename">/usr/share/sgml/docbook/dsssl-stylesheets-1.79/doc/testdata</code> directory as the <code class="systemitem">root</code> user:

```bash
cd /usr/share/sgml/docbook/dsssl-stylesheets-1.79/doc/testdata
```

The first test should produce no output to stdout (your screen) and create a file named <code class="filename">jtest.rtf</code> in the current directory:

```bash
openjade -t rtf -d jtest.dsl jtest.sgm
```

The next test should return only the following line to stdout: <code class="computeroutput">onsgmls:I: "OpenSP" version "1.5.2"</code>

```bash
onsgmls -sv test.sgm
```

The next test should produce no output to stdout and create a file named <code class="filename">test.rtf</code> in the current directory:

```bash
openjade -t rtf \
    -d /usr/share/sgml/docbook/dsssl-stylesheets-1.79/print/docbook.dsl \
    test.sgm
```

The last test should produce no output to stdout and create a file named <code class="filename">c1.htm</code> in the current directory:

```bash
openjade -t sgml \
    -d /usr/share/sgml/docbook/dsssl-stylesheets-1.79/html/docbook.dsl \
    test.sgm
```

Finally, clean up:

```bash
rm jtest.rtf test.rtf c1.htm
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">collateindex.pl</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Files:** <span class="segbody">DSSSL stylesheets</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/sgml/docbook/dsssl-stylesheets-1.79</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------
  <a id="collateindex.pl"></a><span class="command"><span class="term"><strong>collateindex.pl</strong></span></span>   is a <span class="application">Perl</span> script that creates a DocBook index from raw index data
  -------------------------------------------------------------- -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](openjade.md "OpenJade-1.3.2")

    OpenJade-1.3.2

-   [Next](docbook-utils.md "DocBook-utils-0.6.14")

    DocBook-utils-0.6.14

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
