<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mailx.md "mailx-12.5")

    mailx-12.5

-   [Next](procmail.md "Procmail-3.24")

    Procmail-3.24

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Mutt-2.3.2 {#mutt-2.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Mutt {#introduction-to-mutt}

The <span class="application">Mutt</span> package contains a Mail User Agent. This is useful for reading, writing, replying to, saving, and deleting your email.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://ftp.mutt.org/pub/mutt/mutt-2.3.2.tar.gz">http://ftp.mutt.org/pub/mutt/mutt-2.3.2.tar.gz</a>

-   Download MD5 sum: 50f395705c3da65d4592119e982a7a23

-   Download size: 5.3 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: 0.2 SBU
</div>

### Mutt Dependencies

#### Recommended (for a text version of the manual)

<a class="xref" href="lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>, or <a class="xref" href="links.md" title="Links-2.30">Links-2.30</a> (or <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a>, or <a class="ulink" href="http://elinks.or.cz">ELinks</a>) - please read the Note.

#### Optional

<a class="xref" href="../general/aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a>, <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>, <a class="xref" href="../general/gdb.md" title="GDB-17.2">GDB-17.2</a>, <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../postlfs/gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>, <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command), <a class="xref" href="../general/slang.md" title="slang-2.3.3">slang-2.3.3</a>, <a class="ulink" href="http://www.citi.umich.edu/projects/nfsv4/linux/">libgssapi</a>, <a class="ulink" href="https://mixmaster.sourceforge.net/">Mixmaster</a>, <a class="ulink" href="https://dbmx.net/qdbm/">QDBM</a> or <a class="ulink" href="https://dbmx.net/tokyocabinet/">Tokyo Cabinet</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/mutt">https://wiki.linuxfromscratch.org/blfs/wiki/mutt</a>
</div>

<div class="installation" lang="en">
## Installation of Mutt {#installation-of-mutt}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">Mutt</span> ships with an HTML version of its manual, but the text version is no longer provided because differences in the formatting from different text browsers compared to the shipped version caused complaints. To get a text file, the following are used in order of preference: <span class="application">lynx</span> with overstriking (backspaces) for emphasis, <span class="application">w3m</span> or <span class="application">elinks</span>: the latter two apparently provide plain text. Plain text is generally preferred unless reading the HTML manual, so the instructions below use <span class="application">lynx</span> if available, or else <span class="application">links</span> to produce plain text.
</div>

<span class="application">Mutt</span> requires a group named <code class="systemitem">mail</code>. You can add this group, if it does not exist, with this command (as the <code class="systemitem">root</code> user):

```bash
groupadd -g 34 mail
```

If you did not install an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>, you need to modify the ownership of <code class="filename">/var/mail</code> with this command:

```bash
chgrp -v mail /var/mail
```

Install <span class="application">Mutt</span> by running the following commands:

To ensure that a plain text manual is created when using <span class="application">lynx</span> or to otherwise use <span class="application">links</span> to produce it (instead of <span class="application">elinks</span>), run the following command:

```bash
sed  -e 's/ -with_backspaces//' \
     -e 's/elinks/links/'       \
     -e 's/-no-numbering -no-references//' \
     -i doc/Makefile.in
```

Now configure and build the application:

```bash
./configure --prefix=/usr                           \
            --sysconfdir=/etc                       \
            --with-docdir=/usr/share/doc/mutt-2.3.2 \
            --with-ssl                              \
            --enable-external-dotlock               \
            --enable-pop                            \
            --enable-imap                           \
            --enable-hcache                         \
            --enable-sidebar                        &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you used a DESTDIR method to only install to a temporary location as a regular user (as part of a package management process), you will need to run the following as the <code class="systemitem">root</code> user after completing the real install:

```bash
chown root:mail /usr/bin/mutt_dotlock &&
chmod -v 2755 /usr/bin/mutt_dotlock
```

An info file is now installed, so you will also need to recreate the <code class="filename">/usr/share/info/dir</code> as described when <span class="application">Texinfo</span> was installed in LFS.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... -e 's/ -with_backspaces//' ...</strong></span>: This turns off the backspaces used for overstriking when <span class="application">lynx</span> is used, resulting in readable plain text when using <span class="command"><strong>view</strong></span>.

<span class="command"><strong>sed ... -e 's/elinks/links/' ...</strong></span>: This allows <span class="command"><strong>links</strong></span> to be run instead of <span class="command"><strong>elinks</strong></span> which is not in the book.

<span class="command"><strong>sed ... -e 's/-no-numbering -no-references//' ...</strong></span>: This removes switches which are not understood by <span class="command"><strong>links</strong></span>.

*`--enable-external-dotlock`*: In some circumstances the mutt-dotlock program is not created. This switch ensures it is always created.

*`--enable-pop`*: This switch enables POP3 support.

*`--enable-imap`*: This switch enables IMAP support.

*`--enable-hcache`*: This switch enables header caching.

*`--enable-sidebar`*: This switch enables support for the sidebar (a list of mailboxes). It is off by default, but can be turned on by <span class="command"><strong>:set sidebar_visible</strong></span> in mutt (and off again with ':unset'), or it can be enabled in <code class="filename">~/.muttrc</code>.

*`--with-ssl`*: This parameter adds SSL/TLS support from openssl in POP3/IMAP/SMTP.

<code class="option">--enable-autocrypt --with-sqlite3</code>: These two switches add support for passive protection against data collection, using gnupg and gpgme (gpgme is enabled by autocrypt). See <a class="ulink" href="http://www.mutt.org/doc/manual/#autocryptdoc">The Manual</a>.

<code class="option">--enable-gpgme</code>: This switch enables GPG support through the GPGME package. Use this switch if you want GPG support in Mutt.

<code class="option">--enable-smtp</code>: This switch enables SMTP relay support.

<code class="option">--with-idn2</code>: Use this parameter if both libidn and libidn2 have been installed, and you wish to use libidn2 here.

<code class="option">--with-sasl</code>: This parameter adds authentication support from <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a> in POP3/IMAP/SMTP if they are enabled. Depending on the server configuration, this may not be needed for POP3 or IMAP. However, it is needed for SMTP authentication.

<code class="option">--with-gss</code>: This parameter adds authentication support for Kerberos. If you need to use this support, make sure that <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> is installed and configured correctly, and then use this option while building this package.
</div>

<div class="configuration" lang="en">
## Configuring Mutt {#configuring-mutt}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/Muttrc</code>, <code class="filename">~/.muttrc</code>, <code class="filename">/etc/mime.types</code>, and <code class="filename">~/.mime.types</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

No changes in these files are necessary to begin using <span class="application">Mutt</span>. When you are ready to make changes, the man page for <code class="filename">muttrc</code> is a good starting place.

In order to utilize <span class="application">GnuPG</span>, use the following command:

```bash
cat /usr/share/doc/mutt-2.3.2/samples/gpg.rc >> ~/.muttrc
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">flea, mutt, mutt_dotlock, muttbug, pgpewrap, mutt_pgpring, and smime_keys</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/mutt-2.3.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="flea"></a><span class="command"><span class="term"><strong>flea</strong></span></span>                   is a script showing where to report bugs
  <a id="mutt-prog"></a><span class="command"><span class="term"><strong>mutt</strong></span></span>              is a Mail User Agent (MUA) which enables you to read, write and delete your email
  <a id="mutt_dotlock"></a><span class="command"><span class="term"><strong>mutt_dotlock</strong></span></span>   implements the mail spool file lock
  <a id="muttbug"></a><span class="command"><span class="term"><strong>muttbug</strong></span></span>             is a script identical to <span class="command"><strong>flea</strong></span>
  <a id="pgpewrap"></a><span class="command"><span class="term"><strong>pgpewrap</strong></span></span>           prepares a command line for the <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> utilities
  <a id="mutt_pgpring"></a><span class="command"><span class="term"><strong>pgpring</strong></span></span>        is a key ring dumper for <a class="ulink" href="https://www.openpgp.org/about/">PGP</a>. It is not needed for <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>
  <a id="smime_keys"></a><span class="command"><span class="term"><strong>smime_keys</strong></span></span>       manages a keystore for S/MIME certificates
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mailx.md "mailx-12.5")

    mailx-12.5

-   [Next](procmail.md "Procmail-3.24")

    Procmail-3.24

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
