<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](nettle.md "Nettle-4.0")

    Nettle-4.0

-   [Next](openssh.md "OpenSSH-10.3p1")

    OpenSSH-10.3p1

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NSS-3.124 {#nss-3.124}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NSS {#introduction-to-nss}

The Network Security Services (<span class="application">NSS</span>) package is a set of libraries designed to support cross-platform development of security-enabled client and server applications. Applications built with NSS can support SSL v2 and v3, TLS, PKCS #5, PKCS #7, PKCS #11, PKCS #12, S/MIME, X.509 v3 certificates, and other security standards. This is useful for implementing SSL and S/MIME or other Internet security standards into an application.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.mozilla.org/pub/security/nss/releases/NSS_3_124_RTM/src/nss-3.124.tar.gz">https://archive.mozilla.org/pub/security/nss/releases/NSS_3_124_RTM/src/nss-3.124.tar.gz</a>

-   Download MD5 sum: 7b6b89b1271721b3694d1a2646a4e69c

-   Download size: 75 MB

-   Estimated disk space required: 319 MB (sdd 72 MB for tests)

-   Estimated build time: 0.8 SBU (with parallelism=4, add 8.4 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch</a>
</div>

### NSS Dependencies

#### Required

<a class="xref" href="../general/nspr.md" title="NSPR-4.39">NSPR-4.39</a>

#### Recommended

<a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> (runtime)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/nss">https://wiki.linuxfromscratch.org/blfs/wiki/nss</a>
</div>

<div class="installation" lang="en">
## Installation of NSS {#installation-of-nss}

Install <span class="application">NSS</span> by running the following commands:

```bash
patch -Np1 -i ../nss-standalone-1.patch &&

cd nss &&

make BUILD_OPT=1                      \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  USE_SYSTEM_ZLIB=1                   \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
  NSS_USE_SYSTEM_SQLITE=1             \
  $([ $(uname -m) = x86_64 ] && echo USE_64=1)
```

To run the tests, execute the following commands:

```bash
cd tests &&
HOST=localhost DOMSUF=localdomain ./all.sh
cd ../
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Some information about the tests:

<div class="itemizedlist">
-   HOST=localhost and DOMSUF=localdomain are required. Without these variables, a FQDN is required to be specified and this generic way should work for everyone, provided <code class="systemitem">localhost.localdomain</code> is defined <a class="ulink" href="../../../../lfs/view/systemd/chapter08/glibc.md#conf-glibc">by the <code class="systemitem">myhostname</code> Name Service Switch module, as specified in <span class="phrase">the LFS book</a>.</span>

-   The tests take a long time to run. If desired there is information in the all.sh script about running subsets of the total test suite.

-   When interrupting the tests, the test suite fails to spin down test servers that are run. This leads to an infinite loop in the tests where the test suite tries to kill a server that doesn't exist anymore because it pulls the wrong PID.

-   Test suite results (in HTML format!) can be found at ../../test_results/security/localhost.1/results.md

-   A few tests might fail on some Intel machines for unknown reasons.
</div>
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
cd ../dist                                         &&

install -v -m755 Linux*/lib/*.so  /usr/lib         &&
install -v -m644 Linux*/lib/*.chk /usr/lib         &&

install -v -m755 -d               /usr/include/nss &&
cp -v -RL {public,private}/nss/*  /usr/include/nss &&

install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin &&

install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`BUILD_OPT=1`*: This option is passed to <span class="command"><strong>make</strong></span> so that the build is performed with no debugging symbols built into the binaries and the default compiler optimizations are used.

*`NSPR_INCLUDE_DIR=/usr/include/nspr`*: This option sets the location of the nspr headers.

*`USE_SYSTEM_ZLIB=1`*: This option is passed to <span class="command"><strong>make</strong></span> to ensure that the <code class="filename">libssl3.so</code> library is linked to the system installed <span class="application">zlib</span> instead of the in-tree version.

*`ZLIB_LIBS=-lz`*: This option provides the linker flags needed to link to the system <span class="application">zlib</span>.

[**\$(\[ \$(uname -m) = x86_64 \] && echo USE_64=1)**]{.command}: The *`USE_64=1`* option is <span class="emphasis"><em>required on x86_64</em></span>, otherwise <span class="command"><strong>make</strong></span> will try (and fail) to create 32-bit objects. The \[ \$(uname -m) = x86_64 \] test ensures it has no effect on a 32 bit system.

<code class="option">NSS_DISABLE_GTESTS=1</code>: If you don't need to run NSS test suite, append this option to <span class="command"><strong>make</strong></span> command, to prevent the compilation of tests and save some build time.
</div>

<div class="configuration" lang="en">
## Configuring NSS {#configuring-nss}

If <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> is installed, the <span class="application">p11-kit</span> trust module (<code class="filename">/usr/lib/pkcs11/p11-kit-trust.so</code>) can be used as a drop-in replacement for <code class="filename">/usr/lib/libnssckbi.so</code> to transparently make the system CAs available to <span class="application">NSS</span> aware applications, rather than the static library provided by <code class="filename">/usr/lib/libnssckbi.so</code>. As the <code class="systemitem">root</code> user, execute the following command:

```bash
ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
```

Additionally, for dependent applications that do not use the internal database (<code class="filename">/usr/lib/libnssckbi.so</code>), the <code class="filename">/usr/sbin/make-ca</code> script included on the <a class="xref" href="make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> page can generate a system wide NSS DB with the *`-n`* switch, or by modifying the <code class="filename">/etc/make-ca/make-ca.conf</code> file.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">certutil, nss-config, and pk12util</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfreebl3.so, libfreeblpriv3.so, libnss3.so, libnssckbi.so, libnssckbi-testlib.so, libnssdbm3.so, libnsssysinit.so, libnssutil3.so, libpkcs11testmodule.so, libsmime3.so, libsoftokn3.so, and libssl3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/nss</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="certutil"></a><span class="command"><span class="term"><strong>certutil</strong></span></span>       is the Mozilla Certificate Database Tool. It is a command-line utility that can create and modify the Netscape Communicator cert8.db and key3.db database files. It can also list, generate, modify, or delete certificates within the cert8.db file and create or change the password, generate new public and private key pairs, display the contents of the key database, or delete key pairs within the key3.db file
  <a id="nss-config"></a><span class="command"><span class="term"><strong>nss-config</strong></span></span>   is used to determine the NSS library settings of the installed NSS libraries
  <a id="pk12util"></a><span class="command"><span class="term"><strong>pk12util</strong></span></span>       is a tool for importing certificates and keys from pkcs #12 files into NSS or exporting them. It can also list certificates and keys in such files
  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nettle.md "Nettle-4.0")

    Nettle-4.0

-   [Next](openssh.md "OpenSSH-10.3p1")

    OpenSSH-10.3p1

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
