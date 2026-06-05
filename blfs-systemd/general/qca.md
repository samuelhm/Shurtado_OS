<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](protobuf-c.md "Protobuf-c-1.5.2")

    Protobuf-c-1.5.2

-   [Next](qcoro.md "qcoro-0.13.0")

    qcoro-0.13.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Qca-2.3.10 {#qca-2.3.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Qca {#introduction-to-qca}

<span class="application">Qca</span> aims to provide a straightforward and cross-platform crypto API, using <span class="application">Qt</span> datatypes and conventions. <span class="application">Qca</span> separates the API from the implementation, using plugins known as Providers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/qca/2.3.10/qca-2.3.10.tar.xz">https://download.kde.org/stable/qca/2.3.10/qca-2.3.10.tar.xz</a>

-   Download MD5 sum: c3ed3262c83c43bdeb610836769b1534

-   Download size: 748 KB

-   Estimated disk space required: 56 MB (with tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/qca-2.3.10-openssl4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/qca-2.3.10-openssl4_fixes-1.patch</a>
</div>

### Qca Dependencies

#### Required

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, <a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Optional

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="nspr.md" title="NSPR-4.39">NSPR-4.39</a>, <a class="xref" href="../postlfs/p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, and <a class="ulink" href="https://botan.randombit.net/">Botan</a>
</div>

<div class="installation" lang="en">
## Installation of Qca {#installation-of-qca}

First, modify the package to be compatible with OpenSSL4:

```bash
patch -Np1 -i ../qca-2.3.10-openssl4_fixes-1.patch
```

Now, fix the location of the CA certificates:

```bash
sed -i 's@cert.pem@certs/ca-bundle.crt@' CMakeLists.txt
```

Install <span class="application">Qca</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR            \
      -D CMAKE_BUILD_TYPE=Release                \
      -D QT6=ON                                  \
      -D QCA_INSTALL_IN_QT_PREFIX=ON             \
      -D QCA_MAN_INSTALL_DIR:PATH=/usr/share/man \
      .. &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.

*`-D QT6=ON`*: This switch ensures that the package is built with <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>.

*`-D QCA_MAN_INSTALL_DIR:PATH=/usr/share/man`*: This switch installs the qca man page in the normal location.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mozcerts-qt6 and qcatool-qt6</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libqca-qt6.so, libqca-cyrus-sasl.so, libqca-gcrypt.so, libqca-gnupg.so, libqca-logger.so, libqca-nss.so, libqca-ossl.so, and libqca-softstore.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$QT6DIR/include/Qca-qt6, \$QT6DIR/lib/cmake/Qca-qt6, and \$QT6DIR/lib/qca-qt6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------
  <a id="mozcerts"></a><span class="command"><span class="term"><strong>mozcerts-qt6</strong></span></span>   is a command line tool for converting certdata.txt into outfile.pem files
  <a id="qcatool"></a><span class="command"><span class="term"><strong>qcatool-qt6</strong></span></span>     is a command line tool for performing various cryptographic operations with Qca
  <a id="libqca"></a><span class="term"><code class="filename">libqca-qt6.so</code></span>       is the Qt Cryptography Architecture (Qca) library
  ---------------------------------------------------- ---------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](protobuf-c.md "Protobuf-c-1.5.2")

    Protobuf-c-1.5.2

-   [Next](qcoro.md "qcoro-0.13.0")

    qcoro-0.13.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
