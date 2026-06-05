<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](fetchmail.md "Fetchmail-6.6.3")

    Fetchmail-6.6.3

-   [Next](mutt.md "Mutt-2.3.2")

    Mutt-2.3.2

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mailx-12.5 {#mailx-12.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Heirloom mailx {#introduction-to-heirloom-mailx}

The <span class="application">Heirloom mailx</span> package (formerly known as the <span class="application">Nail</span> package) contains <span class="command"><strong>mailx</strong></span>, a command-line Mail User Agent derived from Berkeley Mail. It is intended to provide the functionality of the POSIX <span class="command"><strong>mailx</strong></span> command with additional support for MIME messages, IMAP (including caching), POP3, SMTP, S/MIME, message threading/sorting, scoring, and filtering. <span class="application">Heirloom mailx</span> is especially useful for writing scripts and batch processing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/mailx/heirloom-mailx_12.5.orig.tar.gz">https://anduin.linuxfromscratch.org/BLFS/mailx/heirloom-mailx_12.5.orig.tar.gz</a>

-   Download MD5 sum: 29a6033ef1412824d02eb9d9213cb1f2

-   Download size: 317 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/heirloom-mailx-12.5-fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/heirloom-mailx-12.5-fixes-1.patch</a>
</div>

### Heirloom mailx Dependencies

#### Optional

<a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> (for IMAP GSSAPI authentication), and an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>
</div>

<div class="installation" lang="en">
## Installation of Heirloom mailx {#installation-of-heirloom-mailx}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
</div>

Install <span class="application">Heirloom mailx</span> by running the following commands.

```bash
patch -Np1 -i ../heirloom-mailx-12.5-fixes-1.patch &&

sed 's@<openssl@<openssl-1.0/openssl@' \
    -i openssl.c fio.c makeconfig      &&

make -j1 LDFLAGS+="-L /usr/lib/openssl/" \
         SENDMAIL=/usr/sbin/sendmail
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr UCBINSTALL=/usr/bin/install install &&

ln -v -sf mailx /usr/bin/mail &&
ln -v -sf mailx /usr/bin/nail &&

install -v -m755 -d     /usr/share/doc/heirloom-mailx-12.5 &&
install -v -m644 README /usr/share/doc/heirloom-mailx-12.5
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make SENDMAIL=/usr/sbin/sendmail</strong></span>: This changes the default MTA path of sendmail to <code class="filename">/usr/sbin/sendmail</code>, instead of using <code class="filename">/usr/lib/sendmail</code>.

<span class="command"><strong>make PREFIX=/usr UCBINSTALL=/usr/bin/install install</strong></span>: This changes the default installation path from <code class="filename">/usr/local</code> and the default <span class="command"><strong>install</strong></span> command path from <code class="filename">/usr/ucb</code>.
</div>

<div class="configuration" lang="en">
## Configuring Heirloom mailx {#configuring-heirloom-mailx}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/nail.rc</code> and <code class="filename">~/.mailrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

For displaying mail, <span class="application">mailx</span> uses a pager program. Since the default of <span class="command"><strong>pg</strong></span> is not available on a LFS system, you need to specify which pager <span class="command"><strong>mailx</strong></span> is supposed to use. By default, the <span class="command"><strong>more</strong></span> and the more comfortable <span class="command"><strong>less</strong></span> commands are installed. If the <code class="envar">PAGER</code> environment variable is not set in <code class="filename">/etc/profile</code> or <code class="filename">~/.bash_profile</code>, or if it should be set to another pager specifically for reading mails, it can be set system wide in <code class="filename">/etc/nail.rc</code> as the <code class="systemitem">root</code> user:

```bash
echo "set PAGER=<more|less>" >> /etc/nail.rc
```

or for the current user in <code class="filename">~/.mailrc</code>:

```bash
echo "set PAGER=<more|less>" >> ~/.mailrc
```

Other interesting options to set in the config files might be EDITOR and MAILDIR.

If the default editor is not set in the environment for other packages, it can be set by running the following command as the <code class="systemitem">root</code> user:

```bash
echo "set EDITOR=<vim|nano|...>" >> /etc/nail.rc
```

Depending on which kind of <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> is installed, it might be necessary to set the MAILDIR variable so that <span class="application">mailx</span> is able to find mail as the <code class="systemitem">root</code> user:

```bash
echo "set MAILDIR=Maildir" >> /etc/nail.rc
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mail, mailx and nail</span>
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

  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  <a id="mailx-prog"></a><span class="command"><span class="term"><strong>mailx</strong></span></span>   is a command-line mail user agent compatible with the <span class="command"><strong>mailx</strong></span> command found on commercial UNIX variants
  <a id="mail-mailx"></a><span class="command"><span class="term"><strong>mail</strong></span></span>    is a symbolic link to <span class="command"><strong>mailx</strong></span>
  <a id="nail-mailx"></a><span class="command"><span class="term"><strong>nail</strong></span></span>    is a symbolic link to <span class="command"><strong>mailx</strong></span>
  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fetchmail.md "Fetchmail-6.6.3")

    Fetchmail-6.6.3

-   [Next](mutt.md "Mutt-2.3.2")

    Mutt-2.3.2

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
