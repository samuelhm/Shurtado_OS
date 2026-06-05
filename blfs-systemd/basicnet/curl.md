<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](c-ares.md "c-ares-1.34.6")

    c-ares-1.34.6

-   [Next](geoclue2.md "GeoClue-2.8.1")

    GeoClue-2.8.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cURL-8.20.0 {#curl-8.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cURL {#introduction-to-curl}

The <span class="application">cURL</span> package contains a utility and a library used for transferring files with URL syntax to any of the following protocols: DICT, FILE, FTP, FTPS, GOPHER, GOPHERS, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, MQTT, POP3, POP3S, RTSP, SMB, SMBS, SMTP, SMPTS, TELNET, and TFTP. Its ability to both download and upload files can be incorporated into other programs to support functions like streaming media.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://curl.se/download/curl-8.20.0.tar.xz">https://curl.se/download/curl-8.20.0.tar.xz</a>

-   Download MD5 sum: b91d9edf299e693ced85db203206e1d4

-   Download size: 2.7 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: 0.4 SBU (add 4.5 SBU for tests (without valgrind, add 17 SBU with valgrind) all using parallelism=4)
</div>

### cURL Dependencies

#### Recommended

<a class="xref" href="libpsl.md" title="libpsl-0.21.5">libpsl-0.21.5</a> and <a class="xref" href="nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a> (required to use the system cURL in <span class="application">Rustc</span>)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

While there is an option to build the package without libpsl, both the upstream developers and the BLFS editors alike highly recommend not disabling support for libpsl due to severe security implications.
</div>

#### Recommended at runtime

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>

#### Optional

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="c-ares.md" title="c-ares-1.34.6">c-ares-1.34.6</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="samba.md" title="Samba-4.24.0">Samba-4.24.0</a> (runtime, for NTLM authentication), <a class="ulink" href="https://www.gnu.org/software/gsasl/">gsasl</a>, <a class="ulink" href="https://www.secureauth.com/labs/open-source-tools/impacket/">impacket</a>, <a class="ulink" href="https://launchpad.net/libmetalink/">libmetalink</a>, <a class="ulink" href="https://rtmpdump.mplayerhq.hu/">librtmp</a>, <a class="ulink" href="https://github.com/ngtcp2/ngtcp2/">ngtcp2</a>, <a class="ulink" href="https://github.com/cloudflare/quiche">quiche</a>, and <a class="ulink" href="https://spnego.sourceforge.net/">SPNEGO</a>

#### Optional if Running the Test Suite

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a> and <a class="xref" href="../postlfs/stunnel.md" title="stunnel-5.78">stunnel-5.78</a> (for the HTTPS and FTPS tests), <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (this will slow the tests down and may cause failures)
</div>

<div class="installation" lang="en">
## Installation of cURL {#installation-of-curl}

Install <span class="application">cURL</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --with-openssl   \
            --with-ca-path=/etc/ssl/certs &&
make
```

To run the test suite, issue: <span class="command"><strong>make test</strong></span>. Some tests are flaky, so if some tests have failed it's possible to run a test again with: <span class="command"><strong>(cd tests; ./runtests.pl <em>`<test ID>`</em>)</strong></span> (the ID of failed tests are shown in the <span class="quote">“<span class="quote"><code class="computeroutput">These test cases failed:</code></span>”</span> message). If you run the tests after the package has been installed, some tests may fail because the man pages were deleted by the 'find' command in the installation instructions below.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

rm -rf docs/examples/.deps &&

find docs \( -name Makefile\* -o  \
             -name \*.1       -o  \
             -name \*.3       -o  \
             -name CMakeLists.txt \) -delete &&

cp -v -R docs -T /usr/share/doc/curl-8.20.0
```

To run some simple verification tests on the newly installed <span class="command"><strong>curl</strong></span>, issue the following commands: <span class="command"><strong>curl --trace-ascii debugdump.txt https://www.example.com/</strong></span> and <span class="command"><strong>curl --trace-ascii d.txt --trace-time https://example.com/</strong></span>. Inspect the locally created trace files <code class="filename">debugdump.txt</code> and <code class="filename">d.txt</code>, which contains version information, downloaded files information, etc. One file has the time for each action logged.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-ca-path=/etc/ssl/certs`*: This switch sets the location of the BLFS Certificate Authority store.

*`--with-openssl`*: This parameter chooses <span class="application">OpenSSL</span> as SSL/TLS implementation. This option is not needed if <code class="option">--with-gnutls</code> is selected instead.

<code class="option">--with-gssapi</code>: This parameter adds <span class="application">Kerberos 5</span> support to <code class="filename">libcurl</code>.

<code class="option">--with-gnutls</code>: Use this switch to build with <span class="application">GnuTLS</span> support instead of <span class="application">OpenSSL</span> for SSL/TLS.

<code class="option">--with-ca-bundle=/etc/pki/tls/certs/ca-bundle.crt</code>: Use this switch instead of *`--with-ca-path`* if building with <span class="application">GnuTLS</span> support instead of <span class="application">OpenSSL</span> for SSL/TLS.

<code class="option">--with-libssh2</code>: This parameter adds <span class="application">SSH</span> support to cURL. This is disabled by default.

<code class="option">--enable-ares</code>: This parameter adds support for DNS resolution through the c-ares library.

<span class="command"><strong>find docs ... -exec rm {} \\;</strong></span>: This command removes <code class="filename">Makefiles</code> and man files from the documentation directory that would otherwise be installed by the commands that follow.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">curl, curl-config, and wcurl</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libcurl.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/curl and /usr/share/doc/curl-8.20.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------
  <a id="curl-prog"></a><span class="command"><span class="term"><strong>curl</strong></span></span>            is a command line tool for transferring files with URL syntax
  <a id="curl-config"></a><span class="command"><span class="term"><strong>curl-config</strong></span></span>   prints information about the last compile, like libraries linked to and prefix setting
  <a id="wcurl"></a><span class="command"><span class="term"><strong>wcurl</strong></span></span>               is a simple wrapper around curl to easily download files
  <a id="libcurl"></a><span class="term"><code class="filename">libcurl.so</code></span>           provides the API functions required by <span class="command"><strong>curl</strong></span> and other programs
  ------------------------------------------------------ ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](c-ares.md "c-ares-1.34.6")

    c-ares-1.34.6

-   [Next](geoclue2.md "GeoClue-2.8.1")

    GeoClue-2.8.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
