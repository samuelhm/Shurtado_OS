<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](shells.md "Shells")

    Shells

-   [Next](tcsh.md "Tcsh-6.24.16")

    Tcsh-6.24.16

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Dash-0.5.13.4 {#dash-0.5.13.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Dash {#introduction-to-dash}

<span class="application">Dash</span> is a POSIX compliant shell. It can be installed as /bin/sh or as the default shell for either <code class="systemitem">root</code> or a second user with a userid of 0. It depends on fewer libraries than the <span class="application">Bash</span> shell and is therefore less likely to be affected by an upgrade problem or disk failure. <span class="application">Dash</span> is also useful for checking that a script is completely compatible with POSIX syntax.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.13.4.tar.gz">http://gondor.apana.org.au/\~herbert/dash/files/dash-0.5.13.4.tar.gz</a>

-   Download MD5 sum: 73542f54554f478ed1d1470c262706a4

-   Download size: 256 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Dash Dependencies

#### Optional

<a class="ulink" href="https://www.thrysoee.dk/editline/">libedit</a> (command line editor library)
</div>

<div class="installation" lang="en">
## Installation of Dash {#installation-of-dash}

Install <span class="application">Dash</span> by running the following commands:

```bash
./configure --bindir=/bin --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you would like to make <span class="command"><strong>dash</strong></span> the default <span class="command"><strong>sh</strong></span>, recreate the <code class="filename">/bin/sh</code> symlink as the <code class="systemitem">root</code> user:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you create the symbolic link from <span class="command"><strong>dash</strong></span> to <span class="command"><strong>sh</strong></span>, you will need to reset the link to <span class="command"><strong>bash</strong></span> to build LFS.
</div>

```bash
ln -svf dash /bin/sh
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--bindir=/bin`*: This parameter places the <span class="command"><strong>dash</strong></span> binary into the root filesystem.

<code class="option">--with-libedit</code>: Use this switch if you want to compile <span class="application">Dash</span> with libedit support.
</div>

<div class="configuration" lang="en">
## Configuring Dash {#configuring-dash}

<div class="sect3" lang="en">
### Config Files {#config-files}

<span class="application">Dash</span> sources <code class="filename">/etc/profile</code> and <code class="filename">~/.profile</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Update <code class="filename">/etc/shells</code> to include the <span class="application">Dash</span> shell by issuing the following command as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/shells << "EOF"
/bin/dash
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">dash</span>
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
### Short Description

  --------------------------------------------- ----------------------------
  <a id="dash-prog"></a><span class="command"><span class="term"><strong>dash</strong></span></span>   is a POSIX compliant shell
  --------------------------------------------- ----------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](shells.md "Shells")

    Shells

-   [Next](tcsh.md "Tcsh-6.24.16")

    Tcsh-6.24.16

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
