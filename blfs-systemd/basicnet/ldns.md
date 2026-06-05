<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0")

    kdsoap-ws-discovery-client-0.4.0

-   [Next](libevent.md "libevent-2.1.12")

    libevent-2.1.12

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ldns-1.9.0 {#ldns-1.9.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ldns {#introduction-to-ldns}

<span class="application">ldns</span> is a fast DNS library with the goal to simplify DNS programming and to allow developers to easily create software conforming to current RFCs and Internet drafts. This packages also includes the <span class="command"><strong>drill</strong></span> tool.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.nlnetlabs.nl/downloads/ldns/ldns-1.9.0.tar.gz">https://www.nlnetlabs.nl/downloads/ldns/ldns-1.9.0.tar.gz</a>

-   Download MD5 sum: 895ccabbeadf67fe72fdf07c6a5e2a1a

-   Download size: 1.2 MB

-   Estimated disk space required: 31 MB (with docs)

-   Estimated build time: 0.2 SBU (with docs)
</div>

### ldns Dependencies

#### Optional

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> and <a class="xref" href="libpcap.md" title="libpcap-1.10.6">libpcap-1.10.6</a> (for example programs), <a class="xref" href="../general/swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a> (for Python bindings), and <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for html documentation)
</div>

<div class="installation" lang="en">
## Installation of ldns {#installation-of-ldns}

Install <span class="application">ldns</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --with-drill      &&
make
```

If you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and want to build html documentation, run the following command:

```bash
make doc
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built html documentation, install it by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/doc/ldns-1.9.0 &&
install -v -m644 doc/html/* /usr/share/doc/ldns-1.9.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-drill`*: This option enables building of the <span class="command"><strong>drill</strong></span> tool (used for obtaining debug information from DNS(SEC))

<code class="option">--with-examples</code>: This option enables building of the example programs.

<code class="option">--with-pyldns</code>: This option enables building of the Python bindings. If you use this option, you will need to add PYTHON=/usr/bin/python3 to the configure line as well.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">drill and ldns-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libldns.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ldns and /usr/share/doc/ldns-1.9.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="drill"></a><span class="command"><span class="term"><strong>drill</strong></span></span>               is a tool which is similar to <span class="command"><strong>dig</strong></span> from <a class="xref" href="bind-utils.md" title="BIND Utilities-9.20.20">BIND Utilities-9.20.20</a> that queries extensive information from DNS servers
  <a id="ldns-config"></a><span class="command"><span class="term"><strong>ldns-config</strong></span></span>   shows the compiler and linker flags needed to link to ldns
  <a id="libldns"></a><span class="term"><code class="filename">libldns.so</code></span>           provides the <span class="application">ldns</span> API functions to programs
  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0")

    kdsoap-ws-discovery-client-0.4.0

-   [Next](libevent.md "libevent-2.1.12")

    libevent-2.1.12

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
