<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mutt.md "Mutt-2.3.2")

    Mutt-2.3.2

-   [Next](othermn.md "Other Mail and News Programs")

    Other Mail and News Programs

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Procmail-3.24 {#procmail-3.24}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Procmail {#introduction-to-procmail}

The <span class="application">Procmail</span> package contains an autonomous mail processor. This is useful for filtering and sorting incoming mail.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/BuGlessRB/procmail/archive/v3.24/procmail-3.24.tar.gz">https://github.com/BuGlessRB/procmail/archive/v3.24/procmail-3.24.tar.gz</a>

-   Download MD5 sum: e38b8739e5c6400e3586c5fd9810c1e0

-   Download size: 296 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/procmail-3.24-consolidated_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/procmail-3.24-consolidated_fixes-1.patch</a>
</div>

### Procmail Dependencies

#### Recommended

A <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> that installs sendmail

#### Optional

<a class="xref" href="libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>
</div>

<div class="installation" lang="en">
## Installation of Procmail {#installation-of-procmail}

This package does not come with a test suite.

Install <span class="application">Procmail</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
patch -Np1 -i ../procmail-3.24-consolidated_fixes-1.patch               &&

make CC="gcc -std=gnu17" LOCKINGTEST=/tmp MANDIR=/usr/share/man install &&
make install-suid
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make LOCKINGTEST=/tmp install</strong></span>: This prevents <span class="command"><strong>make</strong></span> from asking you where to test file-locking patterns.

<span class="command"><strong>CC="gcc -std=gnu17"</strong></span>: This sets the C standard to C17 because this package is not compatible with C23, and no fixes are readily available.

<span class="command"><strong>make install-suid</strong></span>: Modifies permissions of the installed files.
</div>

<div class="configuration" lang="en">
## Configuring Procmail {#configuring-procmail}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/procmailrc</code> and <code class="filename">~/.procmailrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Recipes have to be written and placed in <code class="filename">~/.procmailrc</code> for execution. The procmailex man page is the starting place to learn how to write recipes. For additional information, see also <a class="ulink" href="https://pm-doc.sourceforge.net/">https://pm-doc.sourceforge.net/</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">formail, lockfile, mailstat and procmail</span>
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

  ----------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
  <a id="formail"></a><span class="command"><span class="term"><strong>formail</strong></span></span>          is a filter that can be used to format mail into mailbox format
  <a id="lockfile"></a><span class="command"><span class="term"><strong>lockfile</strong></span></span>        is a utility that can lock a file for single use interactively or in a script
  <a id="mailstat"></a><span class="command"><span class="term"><strong>mailstat</strong></span></span>        prints a summary report of mail that has been filtered by <span class="command"><strong>procmail</strong></span> since the last time <span class="command"><strong>mailstat</strong></span> was ran
  <a id="procmail-prog"></a><span class="command"><span class="term"><strong>procmail</strong></span></span>   is an autonomous mail processor. It performs all the functions of an MDA (Mail Delivery Agent)
  ----------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mutt.md "Mutt-2.3.2")

    Mutt-2.3.2

-   [Next](othermn.md "Other Mail and News Programs")

    Other Mail and News Programs

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
