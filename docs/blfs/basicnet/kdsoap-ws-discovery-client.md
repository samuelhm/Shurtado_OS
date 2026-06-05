<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](kdsoap.md "kdsoap-2.3.0")

    kdsoap-2.3.0

-   [Next](ldns.md "ldns-1.9.0")

    ldns-1.9.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kdsoap-ws-discovery-client-0.4.0 {#kdsoap-ws-discovery-client-0.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kdsoap-ws-discovery-client {#introduction-to-kdsoap-ws-discovery-client}

The <span class="application">kdsoap-ws-discovery-client</span> package contains a library that provides support for the WS-Discovery protocol, a recent protocol used to discover services available on a local network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/kdsoap-ws-discovery-client/kdsoap-ws-discovery-client-0.4.0.tar.xz">https://download.kde.org/stable/kdsoap-ws-discovery-client/kdsoap-ws-discovery-client-0.4.0.tar.xz</a>

-   Download MD5 sum: 6d653d927efac8296662bc92784f2fe5

-   Download size: 32 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.2 SBU
</div>

### kdsoap-ws-discovery-client Dependencies

#### Required

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, and <a class="xref" href="kdsoap.md" title="kdsoap-2.3.0">kdsoap-2.3.0</a>
</div>

<div class="installation" lang="en">
## Installation of kdsoap-ws-discovery-client {#installation-of-kdsoap-ws-discovery-client}

Install <span class="application">kdsoap-ws-discovery-client</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D QT_MAJOR_VERSION=6           \
      -W no-dev .. &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
mv -v /usr/share/doc/KDSoapWSDiscoveryClient{,-0.4.0}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

[**mv -v /usr/share/doc/KDSoapWSDiscoveryClient\[...\]:**]{.command}: This command moves the documentation to a versioned directory.

*`-D QT_MAJOR_VERSION=6`*: This parameter tells the build system to build the Qt6 version of this package instead of the Qt5 version.

<code class="option">-D BUILD_QCH=ON</code>: This option tells the build system to create documentation that can be used with QtCreator, QtAssistant, or KDevelop.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libKDSoapWSDiscoveryClient.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KDSoapWSDiscoveryClient, /usr/lib/cmake/KDSoapWSDiscoveryClient, and /usr/share/doc/KDSoapWSDiscoveryClient-0.4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------ ----------------------------------------------------------------------
  <a id="libKDSoapWSDiscoveryClient"></a><span class="term"><code class="filename">libKDSoapWSDiscoveryClient.so</code></span>   provides an implementation of the WS-Discovery protocol using KDSoap
  ------------------------------------------------------------------------------------ ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kdsoap.md "kdsoap-2.3.0")

    kdsoap-2.3.0

-   [Next](ldns.md "ldns-1.9.0")

    ldns-1.9.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
