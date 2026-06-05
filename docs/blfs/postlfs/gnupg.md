<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cyrus-sasl.md "Cyrus SASL-2.1.28")

    Cyrus SASL-2.1.28

-   [Next](gnutls.md "GnuTLS-3.8.13")

    GnuTLS-3.8.13

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GnuPG-2.5.20 {#gnupg-2.5.20}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GnuPG {#introduction-to-gnupg}

The <span class="application">GnuPG</span> package is GNU's tool for secure communication and data storage. It can be used to encrypt data and to create digital signatures. It includes an advanced key management facility and is compliant with the proposed OpenPGP Internet standard as described in RFC2440 and the S/MIME standard as described by several RFCs. GnuPG 2 is the stable version of GnuPG integrating support for OpenPGP and S/MIME.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.5.20.tar.bz2">https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.5.20.tar.bz2</a>

-   Download MD5 sum: 93d6d891254b43138bb9a2a777dc2de7

-   Download size: 8.0 MB

-   Estimated disk space required: 180 MB (with tests)

-   Estimated build time: 0.7 SBU (with tests; both using parallelism=4)
</div>

### GnuPG 2 Dependencies

#### Required

<a class="xref" href="../general/libassuan.md" title="libassuan-3.0.2">libassuan-3.0.2</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/libksba.md" title="libksba-1.8.0">libksba-1.8.0</a>, <a class="xref" href="../general/npth.md" title="npth-1.8">npth-1.8</a>, and <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>

#### Recommended

<a class="xref" href="gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> (required to communicate with keyservers using https or hkps protocol) and <a class="xref" href="../general/pinentry.md" title="pinentry-1.3.2">pinentry-1.3.2</a> (Run-time requirement for most of the package's functionality)

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> (for the <span class="command"><strong>convert</strong></span> utility, used for generating the documentation), <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), <a class="ulink" href="https://mcj.sourceforge.net/">fig2dev</a> (for generating documentation), and <a class="ulink" href="https://www.chiark.greenend.org.uk/~ian/adns/">GNU adns</a>
</div>

<div class="installation" lang="en">
## Installation of GnuPG {#installation-of-gnupg}

Install <span class="application">GnuPG</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

../configure --prefix=/usr        \
             --localstatedir=/var \
             --sysconfdir=/etc    \
             --docdir=/usr/share/doc/gnupg-2.5.20 &&
make &&

makeinfo --html --no-split -I doc -o doc/gnupg_nochunks.md ../doc/gnupg.texi &&
makeinfo --plaintext       -I doc -o doc/gnupg.txt           ../doc/gnupg.texi &&
make -C doc html
```

If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed and you wish to create documentation in the pdf format, issue the following command:

```bash
make -C doc pdf
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755 -d /usr/share/doc/gnupg-2.5.20/html            &&
install -v -m644    doc/gnupg_nochunks.md \
                    /usr/share/doc/gnupg-2.5.20/html/gnupg.md &&
install -v -m644    ../doc/*.texi doc/gnupg.txt \
                    /usr/share/doc/gnupg-2.5.20 &&
install -v -m644    doc/gnupg.html/* \
                    /usr/share/doc/gnupg-2.5.20/html
```

If you created the pdf format of the documentation, install them using the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 doc/gnupg.pdf \
                 /usr/share/doc/gnupg-2.5.20
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>mkdir build && cd build</strong></span>: the GnuPG developers recommend building the package in a dedicated directory.

*`--docdir=/usr/share/doc/gnupg-2.5.20`*: This switch changes the default docdir to <code class="filename">/usr/share/doc/gnupg-2.5.20</code>.

<code class="option">--enable-all-tests</code>: This switch allows more tests to be run with <span class="command"><strong>make check</strong></span>.

<code class="option">--enable-g13</code>: This switch enables building the g13 program.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">addgnupghome, applygnupgdefaults, dirmngr, dirmngr-client, g13 (optional), gpg-agent, gpg-card, gpg-connect-agent, gpg, gpgconf, gpgparsemail, gpgscm, gpgsm, gpgsplit, gpgtar, gpgv, gpg-wks-client, gpg-wks-server, kbxutil, and watchgnupg</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/gnupg-2.5.20 and /usr/share/gnupg</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="addgnupghome"></a><span class="command"><span class="term"><strong>addgnupghome</strong></span></span>               is used to create and populate a user's <code class="filename">~/.gnupg</code> directories
  <a id="applygnupgdefaults"></a><span class="command"><span class="term"><strong>applygnupgdefaults</strong></span></span>   is a wrapper script used to run <span class="command"><strong>gpgconf</strong></span> with the *`--apply-defaults`* parameter on all user's GnuPG home directories
  <a id="dirmngr"></a><span class="command"><span class="term"><strong>dirmngr</strong></span></span>                         is a tool that takes care of accessing the OpenPGP keyservers
  <a id="dirmngr-client"></a><span class="command"><span class="term"><strong>dirmngr-client</strong></span></span>           is a tool to contact a running dirmngr and test whether a certificate has been revoked
  <a id="g13"></a><span class="command"><span class="term"><strong>g13</strong></span></span>                                 is a tool to create, mount or unmount an encrypted file system container (optional)
  <a id="gpg-agent"></a><span class="command"><span class="term"><strong>gpg-agent</strong></span></span>                     is a daemon used to manage secret (private) keys independently from any protocol. It is used as a backend for <span class="command"><strong>gpg</strong></span> and <span class="command"><strong>gpgsm</strong></span> as well as for a couple of other utilities
  <a id="gpg-card"></a><span class="command"><span class="term"><strong>gpg-card</strong></span></span>                       is a tool to manage smart cards and tokens
  <a id="gpg-connect-agent"></a><span class="command"><span class="term"><strong>gpg-connect-agent</strong></span></span>     is a utility used to communicate with a running <span class="command"><strong>gpg-agent</strong></span>
  <a id="gpg"></a><span class="command"><span class="term"><strong>gpg</strong></span></span>                                 is the OpenPGP part of the GNU Privacy Guard (GnuPG). It is a tool used to provide digital encryption and signing services using the OpenPGP standard
  <a id="gpgconf"></a><span class="command"><span class="term"><strong>gpgconf</strong></span></span>                         is a utility used to automatically and reasonably safely query and modify configuration files in the <code class="filename">~/.gnupg</code> home directory. It is designed not to be invoked manually by the user, but automatically by graphical user interfaces
  <a id="gpgparsemail"></a><span class="command"><span class="term"><strong>gpgparsemail</strong></span></span>               is a utility currently only useful for debugging. Run it with *`--help`* for usage information
  <a id="gpgscm"></a><span class="command"><span class="term"><strong>gpgscm</strong></span></span>                           executes the given scheme program or spawns an interactive shell
  <a id="gpgsm"></a><span class="command"><span class="term"><strong>gpgsm</strong></span></span>                             is a tool similar to <span class="command"><strong>gpg</strong></span> used to provide digital encryption and signing services on X.509 certificates and the CMS protocol. It is mainly used as a backend for S/MIME mail processing
  <a id="gpgsplit"></a><span class="command"><span class="term"><strong>gpgsplit</strong></span></span>                       splits an OpenPGP message into packets
  <a id="gpgtar"></a><span class="command"><span class="term"><strong>gpgtar</strong></span></span>                           is a tool to encrypt or sign files into an archive
  <a id="gpgv"></a><span class="command"><span class="term"><strong>gpgv</strong></span></span>                               is a verify only version of <span class="command"><strong>gpg</strong></span>
  <a id="gpg-wks-client"></a><span class="command"><span class="term"><strong>gpg-wks-client</strong></span></span>           is a client for the <span class="application">Web Key Service</span> protocol
  <a id="gpg-wks-server"></a><span class="command"><span class="term"><strong>gpg-wks-server</strong></span></span>           provides a server for the <span class="application">Web Key Service</span> protocol
  <a id="kbxutil"></a><span class="command"><span class="term"><strong>kbxutil</strong></span></span>                         is used to list, export and import Keybox data
  <a id="watchgnupg"></a><span class="command"><span class="term"><strong>watchgnupg</strong></span></span>                   is used to listen to a Unix Domain socket created by any of the GnuPG tools
  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cyrus-sasl.md "Cyrus SASL-2.1.28")

    Cyrus SASL-2.1.28

-   [Next](gnutls.md "GnuTLS-3.8.13")

    GnuTLS-3.8.13

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
