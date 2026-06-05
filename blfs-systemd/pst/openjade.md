<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](opensp.md "OpenSP-1.5.2")

    OpenSP-1.5.2

-   [Next](docbook-dsssl.md "docbook-dsssl-1.79")

    docbook-dsssl-1.79

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenJade-1.3.2 {#openjade-1.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenJade {#introduction-to-openjade}

The <span class="application">OpenJade</span> package contains a DSSSL engine. This is useful for SGML and XML transformations into RTF, TeX, SGML and XML.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz">https://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz</a>

-   Download MD5 sum: 7df692e3186109cc00db6825b777201e

-   Download size: 880 KB

-   Estimated disk space required: 19.2 MB

-   Estimated build time: 0.7 SBU
</div>

### Additional Download

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/openjade-1.3.2-upstream-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/openjade-1.3.2-upstream-1.patch</a>
</div>

### OpenJade Dependencies

#### Required

<a class="xref" href="opensp.md" title="OpenSP-1.5.2">OpenSP-1.5.2</a>
</div>

<div class="installation" lang="en">
## Installation of OpenJade {#installation-of-openjade}

First fix problems when building with newer compilers:

```bash
patch -Np1 -i ../openjade-1.3.2-upstream-1.patch
```

Now fix a compilation problem with perl-5.16 and later:

```bash
sed -i -e '/getopts/{N;s#&G#g#;s#do .getopts.pl.;##;}' \
       -e '/use POSIX/ause Getopt::Std;' msggen.pl
```

Install <span class="application">OpenJade</span> by running the following commands:

```bash
export CXXFLAGS="${CXXFLAGS:--O2 -g} -fno-lifetime-dse"            &&
./configure --prefix=/usr                                \
            --mandir=/usr/share/man                      \
            --enable-http                                \
            --disable-static                             \
            --enable-default-catalog=/etc/sgml/catalog   \
            --enable-default-search-path=/usr/share/sgml \
            --datadir=/usr/share/sgml/openjade-1.3.2   &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                                   &&
make install-man                                               &&
ln -v -sf openjade /usr/bin/jade                               &&
ln -v -sf libogrove.so /usr/lib/libgrove.so                    &&
ln -v -sf libospgrove.so /usr/lib/libspgrove.so                &&
ln -v -sf libostyle.so /usr/lib/libstyle.so                    &&

install -v -m644 dsssl/catalog /usr/share/sgml/openjade-1.3.2/ &&

install -v -m644 dsssl/*.{dtd,dsl,sgm}              \
    /usr/share/sgml/openjade-1.3.2                             &&

install-catalog --add /etc/sgml/openjade-1.3.2.cat  \
    /usr/share/sgml/openjade-1.3.2/catalog                     &&

install-catalog --add /etc/sgml/sgml-docbook.cat    \
    /etc/sgml/openjade-1.3.2.cat
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>export CXXFLAGS=...</strong></span>: This command prevents segmentation faults when the package is compiled with <span class="application">gcc-6.1</span>.

<span class="command"><strong>make install-man</strong></span>: This command installs the <span class="command"><strong>openjade</strong></span> man page.

*`--disable-static`*: This switch prevents the building of the static library.

*`--enable-http`*: This switch adds support for HTTP.

*`--enable-default-catalog=/etc/sgml/catalog`*: This switch sets the path to the centralized catalog.

*`--enable-default-search-path`*: This switch sets the default value of <code class="envar">SGML_SEARCH_PATH</code>.

*`--datadir=/usr/share/sgml/openjade-1.3.2`*: This switch puts data files in <code class="filename">/usr/share/sgml/openjade-1.3.2</code> instead of <code class="filename">/usr/share</code>.

<span class="command"><strong>ln -v -sf ...</strong></span>: These commands create the <span class="application">Jade</span> equivalents of <span class="application">OpenJade</span> executables and libraries.
</div>

<div class="configuration" lang="en">
## Configuring OpenJade {#configuring-openjade}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

As the <code class="systemitem">root</code> user:

```bash
echo "SYSTEM \"http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd\" \
    \"/usr/share/xml/docbook/xml-dtd-4.5/docbookx.dtd\"" >> \
    /usr/share/sgml/openjade-1.3.2/catalog
```

This configuration is only necessary if you intend to use <span class="application">OpenJade</span> to process the BLFS XML files through DSSSL Stylesheets.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="application">openjade and the <span class="segbody">Jade</span> equivalent symlink, jade</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="application">libogrove.so, libospgrove.so, libostyle.so, and the <span class="segbody">Jade</span> equivalent symlinks: libgrove.so, libspgrove.so, and libstyle.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/sgml/openjade-1.3.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------
  <a id="openjade-prog"></a><span class="command"><span class="term"><strong>openjade</strong></span></span>   is a DSSSL engine used for transformations
  <a id="jade"></a><span class="command"><span class="term"><strong>jade</strong></span></span>                is a symlink to <span class="command"><strong>openjade</strong></span>
  ----------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](opensp.md "OpenSP-1.5.2")

    OpenSP-1.5.2

-   [Next](docbook-dsssl.md "docbook-dsssl-1.79")

    docbook-dsssl-1.79

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
