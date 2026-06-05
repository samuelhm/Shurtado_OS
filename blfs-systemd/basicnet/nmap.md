<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](network-manager-applet.md "network-manager-applet-1.34.0")

    network-manager-applet-1.34.0

-   [Next](traceroute.md "Traceroute-2.1.6")

    Traceroute-2.1.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Nmap-7.99 {#nmap-7.99}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Nmap {#introduction-to-nmap}

<span class="application">Nmap</span> is a utility for network exploration and security auditing. It supports ping scanning, port scanning and TCP/IP fingerprinting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://nmap.org/dist/nmap-7.99.tar.bz2">https://nmap.org/dist/nmap-7.99.tar.bz2</a>

-   Download MD5 sum: 187db52073c5a1bcbc579e0efbc2c0bd

-   Download size: 13 MB

-   Estimated disk space required: 190 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/nmap-7.99-openssl4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/nmap-7.99-openssl4_fixes-1.patch</a>
</div>

### Nmap Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a>

#### Recommended

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the <span class="application">PyGObject3</span> module is not installed, you'd have to skip the command making the build system use the LFS <span class="application">Setuptools</span> installation and then an Internet connection would be needed. The other packages are recommended because if they're not installed, the build process will compile and link against its own (often older) version.
</div>

<a class="xref" href="../general/liblinear.md" title="liblinear-250">liblinear-250</a>, <a class="xref" href="libpcap.md" title="libpcap-1.10.6">libpcap-1.10.6</a>, <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, and <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

#### Optional

<a class="ulink" href="http://code.google.com/p/libdnet/">libdnet</a> and <a class="ulink" href="https://pypi.org/project/setuptools-gettext/">setuptools-gettext</a> (currently <a class="ulink" href="https://github.com/pypa/build/issues/729">useless</a>)
</div>

<div class="installation" lang="en">
## Installation of Nmap {#installation-of-nmap}

Make the build system use the <span class="application">Setuptools</span> Python module from LFS instead of downloading a copy from the Internet, and install the Python wheels already created when running the <span class="command"><strong>make</strong></span> instead of rebuilding them again on <span class="command"><strong>make install</strong></span>:

```bash
sed -ri Makefile.in \
    -e 's#-m build#& --no-isolation#'  \
    -e '/pip install/s#(ZENMAP|NDIFF)DIR\)/#&dist/*.whl#'
```

Remove a useless dependency on setuptools-gettext:

```bash
sed 's/, "setuptools-gettext"//' -i zenmap/pyproject.toml
```

Fix a packaging error that makes the build fail:

```bash
sed '/py-modules/s/f"/&, "Version"/' -i ndiff/pyproject.toml
```

Fix compiling this package against OpenSSL-4:

```bash
patch -Np1 -i ../nmap-7.99-openssl4_fixes-1.patch
```

Install <span class="application">Nmap</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

If you wish to run the test suite, run the following command:

```bash
sed -e '/import imp/d'                \
    -e 's/^ndiff = .*$/import ndiff/' \
    -i ndiff/ndifftest.py
```

Tests need a graphical session and to be run as the <code class="systemitem">root</code> user. To test the results, issue:

```bash
make check
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ncat, ndiff, nmap, nping, zenmap, and 2 symlinks to zenmap: nmapfe and xnmap</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/{radialnet,zenmapCore,zenmapGUI,zenmap-7.99.dist-info}, and /usr/share/{ncat,nmap,zenmap}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  <a id="ncat"></a><span class="command"><span class="term"><strong>ncat</strong></span></span>                           is a utility for reading and writing data across networks from the command line
  <a id="ndiff"></a><span class="command"><span class="term"><strong>ndiff</strong></span></span>                         is a tool to aid in the comparison of Nmap scans
  <a id="nmap-prog"></a><span class="command"><span class="term"><strong>nmap</strong></span></span>                      is a utility for network exploration and security auditing. It supports ping scanning, port scanning and TCP/IP fingerprinting
  <a id="nping"></a><span class="command"><span class="term"><strong>nping</strong></span></span>                         is an open-source tool for network packet generation, response analysis and response time measurement
  <a id="uninstall_ndiff"></a><span class="command"><span class="term"><strong>uninstall_ndiff</strong></span></span>     is a Python script to uninstall <span class="command"><strong>ndiff</strong></span>
  <a id="uninstall_zenmap"></a><span class="command"><span class="term"><strong>uninstall_zenmap</strong></span></span>   is a Python script to uninstall <span class="command"><strong>zenmap</strong></span>
  <a id="zenmap"></a><span class="command"><span class="term"><strong>zenmap</strong></span></span>                       is a Python based graphical nmap frontend viewer
  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](network-manager-applet.md "network-manager-applet-1.34.0")

    network-manager-applet-1.34.0

-   [Next](traceroute.md "Traceroute-2.1.6")

    Traceroute-2.1.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
