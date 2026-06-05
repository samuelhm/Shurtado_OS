<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](samba.md "Samba-4.24.0")

    Samba-4.24.0

-   [Next](wireless-kernel.md "Configuring the Linux Kernel for Wireless")

    Configuring the Linux Kernel for Wireless

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wget-1.25.0 {#wget-1.25.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wget {#introduction-to-wget}

The <span class="application">Wget</span> package contains a utility useful for non-interactive downloading of files from the Web.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz">https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz</a>

-   Download MD5 sum: c70ba58b36f944e8ba1d655ace552881

-   Download size: 5.0 MB

-   Estimated disk space required: 38 MB (add 27 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.4 SBU for tests)
</div>

### Wget Dependencies

#### Recommended

<a class="xref" href="libpsl.md" title="libpsl-0.21.5">libpsl-0.21.5</a>

#### Recommended at runtime

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>

#### Optional

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/perl-modules.md#perl-http-daemon" title="HTTP::Daemon-6.17">HTTP-Daemon-6.17</a> (for the test suite), <a class="xref" href="../general/perl-modules.md#perl-io-socket-ssl" title="IO::Socket::SSL-2.098">IO-Socket-SSL-2.098</a> (for the test suite), <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for the test suite)
</div>

<div class="installation" lang="en">
## Installation of Wget {#installation-of-wget}

First, make a fix to make the package compatible with OpenSSL 4. The bash variable is for presentation purposes due to the long line.

```bash
NEW_LINE='#if !defined OPENSSL_NO_SSL3_METHOD '
NEW_LINE+='&& OPENSSL_VERSION_NUMBER < 0x40000000L'

sed -i "/SSL3/c $NEW_LINE" src/openssl.c

unset NEW_LINE 
```

Install <span class="application">Wget</span> by running the following commands:

```bash
./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc`*: This relocates the configuration file from <code class="filename">/usr/etc</code> to <code class="filename">/etc</code>.

*`--with-ssl=openssl`*: This allows the program to use openssl instead of <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>.

<code class="option">--enable-libproxy</code>: This switch allows wget to use libproxy for proxy configuration. Use it if you have the <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a> package installed and wish to use a proxy server.

<code class="option">--enable-valgrind-tests</code>: This allows the tests to be run under valgrind.
</div>

<div class="configuration" lang="en">
## Configuring Wget {#configuring-wget}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/wgetrc</code> and <code class="filename">~/.wgetrc</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">wget</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="wget-prog"></a><span class="command"><span class="term"><strong>wget</strong></span></span>   retrieves files from the Web using the HTTP, HTTPS and FTP protocols. It is designed to be non-interactive, for background or unattended operations
  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](samba.md "Samba-4.24.0")

    Samba-4.24.0

-   [Next](wireless-kernel.md "Configuring the Linux Kernel for Wireless")

    Configuring the Linux Kernel for Wireless

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
