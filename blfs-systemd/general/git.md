<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gdb.md "GDB-17.2")

    GDB-17.2

-   [Next](gitserver.md "Running a Git Server")

    Running a Git Server

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Git-2.54.0 {#git-2.54.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Git {#introduction-to-git}

<span class="application">Git</span> is a free and open source, distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Every <span class="application">Git</span> clone is a full-fledged repository with complete history and full revision tracking capabilities, not dependent on network access or a central server. Branching and merging are fast and easy to do. <span class="application">Git</span> is used for version control of files, much like tools such as <a class="xref" href="mercurial.md" title="Mercurial-7.2.2">mercurial-7.2.2</a>, <span class="application">Bazaar</span>, <a class="xref" href="subversion.md" title="Subversion-1.14.5">Subversion-1.14.5</a>, <a class="ulink" href="https://www.nongnu.org/cvs/">CVS</a>, <span class="application">Perforce</span>, and <span class="application">Team Foundation Server</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/software/scm/git/git-2.54.0.tar.xz">https://www.kernel.org/pub/software/scm/git/git-2.54.0.tar.xz</a>

-   Download MD5 sum: eb1137f556bd67cb4cea974275e51297

-   Download size: 7.7 MB

-   Estimated disk space required: 379 MB (with downloaded documentation; add 22 MB for building docs)

-   Estimated build time: 0.4 SBU (add 2.2 SBU (disk speed dependent) for tests and 1.0 SBU for building docs (all with parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   <a class="ulink" href="https://www.kernel.org/pub/software/scm/git/git-manpages-2.54.0.tar.xz">https://www.kernel.org/pub/software/scm/git/git-manpages-2.54.0.tar.xz</a> (not needed if you've installed <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, and prefer to rebuild them)

-   <a class="ulink" href="https://www.kernel.org/pub/software/scm/git/git-htmldocs-2.54.0.tar.xz">https://www.kernel.org/pub/software/scm/git/git-htmldocs-2.54.0.tar.xz</a> and other docs (not needed if you've installed <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> and want to rebuild the documentation).
</div>

### Git Dependencies

#### Recommended

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> (needed to use <span class="application">Git</span> over http, https, ftp or ftps)

#### Optional

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a> (for some tests), <a class="xref" href="fcron.md" title="Fcron-3.4.0">Fcron-3.4.0</a> (runtime, for scheduling <span class="command"><strong>git maintenance</strong></span> jobs), <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (runtime, may be used to sign <span class="application">Git</span> commits or tags, or verify the signatures of them), <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> (runtime, needed to use <span class="application">Git</span> over ssh), <a class="xref" href="subversion.md" title="Subversion-1.14.5">Subversion-1.14.5</a> with Perl bindings (runtime, for <span class="command"><strong>git svn</strong></span>), <a class="xref" href="tk.md" title="Tk-8.6.18">Tk-8.6.18</a> (gitk, a simple <span class="application">Git</span> repository viewer, uses <span class="application">Tk</span> at runtime), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://metacpan.org/pod/Authen::SASL">Authen::SASL</a> (runtime, for <span class="command"><strong>git send-email</strong></span>), <a class="xref" href="perl-modules.md#perl-io-socket-ssl" title="IO::Socket::SSL-2.098">IO-Socket-SSL-2.098</a> (runtime, for <span class="command"><strong>git send-email</strong></span> to connect to a SMTP server with SSL encryption)<a class="xref" href="systemd.md" title="Systemd-260.2">, and <span class="command">Systemd-260.2</a> (runtime, rebuilt with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, for scheduling <span class="phrase"><strong>git maintenance</strong></span> jobs)</span>

#### Optional (to create the man pages, html docs and other docs)

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> and <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, and also <a class="ulink" href="https://dblatex.sourceforge.net/">dblatex</a> (for the PDF version of the user manual), and <a class="ulink" href="https://docbook2x.sourceforge.net/">docbook2x</a> to create info pages
</div>

<div class="installation" lang="en">
## Installation of Git {#installation-of-git}

Install <span class="application">Git</span> by running the following commands:

```bash
./configure --prefix=/usr                   \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3           \
            --with-libpcre2                 &&
make
```

You can build the man pages and/or html docs, or use downloaded ones. If you choose to build them, use the next two instructions.

If you have installed <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> you can create the html version of the man pages and other docs:

```bash
make html
```

If you have installed <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> and <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> you can create the man pages:

```bash
make man
```

The test suite can be run in parallel mode. To run the test suite, issue: <span class="command"><strong>GIT_UNZIP=nonexist make test -k</strong></span>. The <code class="envar">GIT_UNZIP</code> setting prevents the test suite from using <span class="command"><strong>unzip</strong></span>, we need it because in BLFS <span class="command"><strong>unzip</strong></span> is a symlink to <span class="command"><strong>bsdunzip</strong></span> which does not satisfy the assumption of some tests cases. If any test case fails, the list of failed tests can be shown via <span class="command"><strong>make -C t aggregate-results</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make perllibdir=/usr/lib/perl5/5.42/site_perl install
```

### If you created the man pages and/or html docs

Install the man pages as the <code class="systemitem">root</code> user:

```bash
make install-man
```

Install the html docs as the <code class="systemitem">root</code> user:

```bash
make htmldir=/usr/share/doc/git-2.54.0 install-html
```

### If you downloaded the man pages and/or html docs

If you downloaded the man pages untar them as the <code class="systemitem">root</code> user:

```bash
tar -xf ../git-manpages-2.54.0.tar.xz \
    -C /usr/share/man --no-same-owner --no-overwrite-dir
```

If you downloaded the html docs untar them as the <code class="systemitem">root</code> user:

```bash
mkdir -vp   /usr/share/doc/git-2.54.0 &&
tar   -xf   ../git-htmldocs-2.54.0.tar.xz \
      -C    /usr/share/doc/git-2.54.0 --no-same-owner --no-overwrite-dir &&

find        /usr/share/doc/git-2.54.0 -type d -exec chmod 755 {} \; &&
find        /usr/share/doc/git-2.54.0 -type f -exec chmod 644 {} \;
```

### Reorganize text and html in the html-docs (both methods)

For both methods, the html-docs include a lot of plain text files. Reorganize the files as the <code class="systemitem">root</code> user:

```bash
mkdir -vp /usr/share/doc/git-2.54.0/man-pages/{html,text}         &&
mv        /usr/share/doc/git-2.54.0/{git*.adoc,man-pages/text}     &&
mv        /usr/share/doc/git-2.54.0/{git*.,index.,man-pages/}html &&

mkdir -vp /usr/share/doc/git-2.54.0/technical/{html,text}         &&
mv        /usr/share/doc/git-2.54.0/technical/{*.adoc,text}        &&
mv        /usr/share/doc/git-2.54.0/technical/{*.,}html           &&

mkdir -vp /usr/share/doc/git-2.54.0/howto/{html,text}             &&
mv        /usr/share/doc/git-2.54.0/howto/{*.adoc,text}            &&
mv        /usr/share/doc/git-2.54.0/howto/{*.,}html               &&

sed -i '/^<a href=/s|howto/|&html/|' /usr/share/doc/git-2.54.0/howto-index.md &&
sed -i '/^\* link:/s|howto/|&html/|' /usr/share/doc/git-2.54.0/howto-index.adoc
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-gitconfig=/etc/gitconfig`*: This sets <code class="filename">/etc/gitconfig</code> as the file that stores the default, system wide, <span class="application">Git</span> settings.

*`--with-python=python3`*: Use this switch to use <span class="application">Python 3</span>, instead of the EOL'ed <span class="application">Python 2</span>. Python is used for the <span class="command"><strong>git p4</strong></span> interface to Perforce repositories, and also used in some tests.

*`--with-libpcre2`*: This ensures building <span class="command"><strong>git grep</strong></span> with the <span class="application">PCRE2</span> library installed in LFS, so <span class="command"><strong>git grep</strong></span> will support the <code class="option">--perl-regexp</code> option.

<span class="command"><strong>tar -xf ../git-manpages-2.54.0.tar.gz -C /usr/share/man --no-same-owner</strong></span>: This untars <code class="filename">git-manpages-2.54.0.tar.gz</code>. The <code class="option">-C</code> option makes tar change directory to <code class="filename">/usr/share/man</code> before it starts to decompress the docs. The <code class="option">--no-same-owner</code> option stops tar from preserving the user and group details of the files. This is useful as that user or group may not exist on your system; this could (potentially) be a security risk.

<span class="command"><strong>mv /usr/share/doc/git-2.54.0 ...</strong></span>: These commands move some of the files into subfolders to make it easier to sort through the docs and find what you're looking for.

<span class="command"><strong>find ... chmod ...</strong></span>: These commands correct the permissions in the shipped documentation tar file.
</div>

<div class="configuration" lang="en">
## Configuring Git {#configuring-git}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.gitconfig</code> and <code class="filename">/etc/gitconfig</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">git, git-receive-pack, git-upload-archive, and git-upload-pack (hardlinked to each other), git-cvsserver, git-shell, gitk, and scalar</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/libexec/git-core, /usr/lib/perl5/5.42/site_perl/Git, and /usr/share/{doc/git-2.54.0,git-core,git-gui,gitk,gitweb}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  <a id="git-prog"></a><span class="command"><span class="term"><strong>git</strong></span></span>                            is the stupid content tracker
  <a id="git-cvsserver"></a><span class="command"><span class="term"><strong>git-cvsserver</strong></span></span>             is a CVS server emulator for <span class="application">Git</span>
  <a id="gitk"></a><span class="command"><span class="term"><strong>gitk</strong></span></span>                               is a graphical <span class="application">Git</span> repository browser (needs <a class="xref" href="tk.md" title="Tk-8.6.18">Tk-8.6.18</a>)
  <a id="git-receive-pack"></a><span class="command"><span class="term"><strong>git-receive-pack</strong></span></span>       is invoked by <span class="command"><strong>git send-pack</strong></span> and updates the repository with the information fed from the remote end
  <a id="git-shell"></a><span class="command"><span class="term"><strong>git-shell</strong></span></span>                     is a login shell for SSH accounts to provide restricted Git access
  <a id="git-upload-archive"></a><span class="command"><span class="term"><strong>git-upload-archive</strong></span></span>   is invoked by <span class="command"><strong>git archive --remote</strong></span> and sends a generated archive to the other end over the git protocol
  <a id="git-upload-pack"></a><span class="command"><span class="term"><strong>git-upload-pack</strong></span></span>         is invoked by <span class="command"><strong>git fetch-pack</strong></span>, it discovers what objects the other side is missing, and sends them after packing
  <a id="scalar"></a><span class="command"><span class="term"><strong>scalar</strong></span></span>                           is a repository management tool that optimizes Git for use in large repositories
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gdb.md "GDB-17.2")

    GDB-17.2

-   [Next](gitserver.md "Running a Git Server")

    Running a Git Server

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
