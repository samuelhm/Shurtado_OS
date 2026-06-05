<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](glib-networking.md "glib-networking-2.80.1")

    glib-networking-2.80.1

-   [Next](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0")

    kdsoap-ws-discovery-client-0.4.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kdsoap-2.3.0 {#kdsoap-2.3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kdsoap {#introduction-to-kdsoap}

The <span class="application">kdsoap</span> is Qt-based client-side and server-side SOAP component. It can be used to create client applications for web services and also provides the means to create web services without the need for any further component such as a dedicated web server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KDAB/KDSoap/releases/download/kdsoap-2.3.0/kdsoap-2.3.0.tar.gz">https://github.com/KDAB/KDSoap/releases/download/kdsoap-2.3.0/kdsoap-2.3.0.tar.gz</a>

-   Download MD5 sum: fba550a6bd3b7f2e5da606f039e3e470

-   Download size: 1.1 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
</div>

### kdsoap Dependencies

#### Required

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of kdsoap {#installation-of-kdsoap}

Install <span class="application">kdsoap</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/kdsoap-2.3.0 \
      .. &&
make
```

The package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">kdwsdl2cpp-qt6</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkdsoap-qt6.so and libkdsoap-server-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/KDSoap-Qt6, /usr/share/doc/kdsoap-2.3.0-qt6, /usr/include/KDSoapClient-Qt6. and /usr/include/KDSoapServer-Qt6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glib-networking.md "glib-networking-2.80.1")

    glib-networking-2.80.1

-   [Next](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0")

    kdsoap-ws-discovery-client-0.4.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
