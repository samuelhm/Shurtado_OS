<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 18. Text Web Browsers

-   [Prev](links.md "Links-2.30")

    Links-2.30

-   [Next](mailnews.md "Mail/News Clients")

    Mail/News Clients

-   [Up](textweb.md "Chapter 18. Text Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Lynx-2.9.3 {#lynx-2.9.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Lynx {#introduction-to-lynx}

<span class="application">Lynx</span> is a text based web browser.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://invisible-mirror.net/archives/lynx/tarballs/lynx2.9.3.tar.bz2">https://invisible-mirror.net/archives/lynx/tarballs/lynx2.9.3.tar.bz2</a>

-   Download MD5 sum: faedd64b8e3cb87ae41197340cc3016a

-   Download size: 2.7 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.3 SBU
</div>

#### Recommended

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>

#### Optional

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> (experimental, to replace openssl), <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a>, an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command), and <a class="xref" href="../general/sharutils.md" title="Sharutils-4.15.2">Sharutils-4.15.2</a> (for the <span class="command"><strong>uudecode</strong></span> program)
</div>

<div class="installation" lang="en">
## Installation of Lynx {#installation-of-lynx}

Install <span class="application">Lynx</span> by running the following commands:

```bash
./configure --prefix=/usr           \
            --sysconfdir=/etc/lynx  \
            --with-zlib             \
            --with-bzlib            \
            --with-ssl              \
            --with-screen=ncursesw  \
            --enable-ipv6           \
            --enable-locale-charset \
            --enable-nls            \
            --datadir=/usr/share/doc/lynx-2.9.3 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install-full
chgrp -v -R root /usr/share/doc/lynx-2.9.3/lynx_doc
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc/lynx`*: This parameter is used so that the configuration files are located in <code class="filename">/etc/lynx</code> instead of <code class="filename">/usr/etc</code>.

*`--datadir=/usr/share/doc/lynx-2.9.3`*: This parameter is used so that the documentation files are installed into <code class="filename">/usr/share/doc/lynx-2.9.3</code> instead of <code class="filename">/usr/share/lynx_{doc,help}</code>.

*`--with-zlib`*: This enables support for linking <code class="filename">libz</code> into <span class="application">Lynx</span>.

*`--with-bzlib`*: This enables support for linking <code class="filename">libbz2</code> into <span class="application">Lynx</span>.

*`--with-ssl`*: This enables support for linking SSL into <span class="application">Lynx</span>.

*`--with-screen=ncursesw`*: This switch enables the use of advanced wide-character support present in the system <span class="application">NCurses</span> library. This is needed for proper display of characters and line wrapping in multibyte locales.

*`--enable-ipv6`*: This switch allows <span class="application">Lynx</span> to use IPv6, along with IPv4. Use it if your ISP provides an IPv6 configuration.

*`--enable-locale-charset`*: This switch allows <span class="application">Lynx</span> to deduce the proper character encoding for terminal output from the current locale. A configuration step is still needed (see below), but unlike the situation without this switch, the configuration step becomes the same for all users (without the switch one must specify the display character set explicitly). This is important for environments such as a LiveCD, where the amount of system-specific configuration steps has to be reduced to the minimum.

*`--enable-nls`*: This switch allows <span class="application">Lynx</span> to print translated messages (such as questions about cookies and SSL certificates).

<code class="option">--with-gnutls</code>: This enables experimental support for linking <span class="application">GnuTLS</span> into <span class="application">Lynx</span>. Remove the *`--with-ssl`* switch if you want to use gnutls.

<span class="command"><strong>make install-full</strong></span>: In addition to the standard installation, this target installs the documentation and help files.

<span class="command"><strong>chgrp -v -R root /usr/share/doc/lynx-2.9.3/lynx_doc</strong></span> : This command corrects the improper group ownership of installed documentation files.
</div>

<div class="configuration" lang="en">
## Configuring Lynx {#configuring-lynx}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/lynx/lynx.cfg</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The proper way to get the display character set is to examine the current locale. However, <span class="application">Lynx</span> does not do this by default. As the <code class="systemitem">root</code> user, change this setting:

```bash
sed -e '/#LOCALE/     a LOCALE_CHARSET:TRUE'     \
    -i /etc/lynx/lynx.cfg
```

The built-in editor in <span class="application">Lynx</span> <a class="xref" href="../introduction/locale-issues.md#locale-wrong-multibyte-characters" title="The Program Breaks Multibyte Characters or Doesn't Count Character Cells Correctly">Breaks Multibyte Characters</a>. This issue manifests itself in multibyte locales, e.g., as the Backspace key not erasing non-ASCII characters properly, and as incorrect data being sent to the network when one edits the contents of text areas. The only solution to this problem is to configure <span class="application">Lynx</span> to use an external editor (bound to the <span class="quote">“<span class="quote">Ctrl+X e</span>”</span> key combination by default). Still as the <code class="systemitem">root</code> user:

```bash
sed -e '/#DEFAULT_ED/ a DEFAULT_EDITOR:vi'       \
    -i /etc/lynx/lynx.cfg
```

<span class="application">Lynx</span> handles the following values of the DEFAULT_EDITOR option specially by adding cursor-positioning arguments: <code class="literal">emacs</code>, <code class="literal">jed</code>, <code class="literal">jmacs</code>, <code class="literal">joe</code>, <code class="literal">jove</code>, <code class="literal">jpico</code>, <code class="literal">jstar</code>, <code class="literal">nano</code>, <code class="literal">pico</code>, <code class="literal">rjoe</code>, <code class="literal">vi</code> (but not <code class="literal">vim</code>: in order to position the cursor in <a class="xref" href="../postlfs/vim.md" title="Vim-9.2.0567">Vim-9.2.0567</a>, set this option to <code class="literal">vi</code>).

By default, <span class="application">Lynx</span> doesn't save cookies between sessions. Again as the <code class="systemitem">root</code> user, change this setting:

```bash
sed -e '/#PERSIST/    a PERSISTENT_COOKIES:TRUE' \
    -i /etc/lynx/lynx.cfg
```

Many other system-wide settings such as proxies can also be set in the <code class="filename">/etc/lynx/lynx.cfg</code> file.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">lynx</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/lynx and /usr/share/doc/lynx-2.9.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="lynx-prog"></a><span class="command"><span class="term"><strong>lynx</strong></span></span>   is a general purpose, text-based, distributed information browser for the World Wide Web
  --------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](links.md "Links-2.30")

    Links-2.30

-   [Next](mailnews.md "Mail/News Clients")

    Mail/News Clients

-   [Up](textweb.md "Chapter 18. Text Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
