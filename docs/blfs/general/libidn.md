<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libical.md "libical-4.0.2")

    libical-4.0.2

-   [Next](libidn2.md "libidn2-2.3.8")

    libidn2-2.3.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libidn-1.43 {#libidn-1.43}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libidn {#introduction-to-libidn}

<span class="application">libidn</span> is a package designed for internationalized string handling based on the <a class="ulink" href="https://www.ietf.org/rfc/rfc3454.txt">Stringprep</a>, <a class="ulink" href="https://www.ietf.org/rfc/rfc3492.txt">Punycode</a> and <a class="ulink" href="https://www.ietf.org/rfc/rfc3490.txt">IDNA</a> specifications defined by the Internet Engineering Task Force (IETF) Internationalized Domain Names (IDN) working group, used for internationalized domain names. This is useful for converting data from the system's native representation into UTF-8, transforming Unicode strings into ASCII strings, allowing applications to use certain ASCII name labels (beginning with a special prefix) to represent non-ASCII name labels, and converting entire domain names to and from the ASCII Compatible Encoding (ACE) form.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libidn/libidn-1.43.tar.gz">https://ftpmirror.gnu.org/libidn/libidn-1.43.tar.gz</a>

-   Download MD5 sum: 4a32cafa4e9de86943fbae9a75c41f01

-   Download size: 2.4 MB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libidn Dependencies

#### Optional

<a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://www.mono-project.com/">Mono</a>
</div>

<div class="installation" lang="en">
## Installation of libidn {#installation-of-libidn}

Install <span class="application">libidn</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, run:

```bash
pushd tests  &&
  make check &&
popd 
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

find doc -name "Makefile*" -delete            &&
rm -rf -v doc/{gdoc,idn.1,stamp-vti,man,texi} &&
mkdir -v       /usr/share/doc/libidn-1.43     &&
cp -r -v doc/* /usr/share/doc/libidn-1.43
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.

<code class="option">--enable-java</code>: Use this switch to enable building the Java implementation of <span class="application">libidn</span>. Note that <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a> must be installed to use this option.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">idn</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libidn.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/libidn-1.43 and /usr/share/gtk-doc/html/libidn</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="idn"></a><span class="command"><span class="term"><strong>idn</strong></span></span>             is a command line interface to the internationalized domain name library
  <a id="libidn-lib"></a><span class="term"><code class="filename">libidn.so</code></span>   contains a generic Stringprep implementation that does Unicode 3.2 NFKC normalization, mapping and prohibition of characters, and bidirectional character handling. Profiles for Nameprep, iSCSI, SASL and XMPP are included as well as support for Punycode and ASCII Compatible Encoding (ACE) via IDNA. A mechanism to define Top-Level Domain (TLD) specific validation tables, and to compare strings against those tables, as well as default tables for some TLDs are included
  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libical.md "libical-4.0.2")

    libical-4.0.2

-   [Next](libidn2.md "libidn2-2.3.8")

    libidn2-2.3.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
