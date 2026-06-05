<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](tcsh.md "Tcsh-6.24.16")

    Tcsh-6.24.16

-   [Next](virtualization.md "Virtualization")

    Virtualization

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# zsh-5.9.1 {#zsh-5.9.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to zsh {#introduction-to-zsh}

The <span class="application">zsh</span> package contains a command interpreter (shell) usable as an interactive login shell and as a shell script command processor. Of the standard shells, <span class="application">zsh</span> most closely resembles <span class="application">ksh</span> but includes many enhancements.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.zsh.org/pub/zsh-5.9.1.tar.xz">https://www.zsh.org/pub/zsh-5.9.1.tar.xz</a>

-   Download MD5 sum: 5492bfe9a4afacdb2d1d81c27a1d44fa

-   Download size: 3.3 MB

-   Estimated disk space required: 48 MB (includes documentation and tests)

-   Estimated build time: 1.6 SBU (Using parallelism=4; includes documentation and tests)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When there is a new <span class="application">zsh</span> release, the old files shown above are moved to a new server directory: <a class="ulink" href="https://www.zsh.org/pub/old/">https://www.zsh.org/pub/old/</a>.
</div>

### zsh Dependencies

#### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> and <a class="ulink" href="https://fbb-git.gitlab.io/yodl/">yodl</a>
</div>

<div class="installation" lang="en">
## Installation of zsh {#installation-of-zsh}

The documentation files contain references to zsh configuration files in <code class="filename">/etc</code>, but we'll use <code class="filename">/etc/zsh</code> to hold these configuration files instead. The build system will update those references if the <span class="application">yodl</span> package is available, but it's out of the scope of BLFS. As a result, we need to fix the references manually:

```bash
sed -e 's|/etc/z|/etc/zsh/z|g' \
    -i Doc/*.*
```

Install <span class="application">zsh</span> by running the following commands:

```bash
./configure --prefix=/usr            \
            --sysconfdir=/etc/zsh    \
            --enable-etcdir=/etc/zsh \
            --enable-cap             \
            --enable-gdbm            \
            --enable-pcre            &&
make                                 &&

makeinfo  Doc/zsh.texi --html      -o Doc/html &&
makeinfo  Doc/zsh.texi --plaintext -o zsh.txt  &&
makeinfo  Doc/zsh.texi --html --no-split --no-headers -o zsh.md
```

If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed, you can build the documentation in PDF format by issuing the following command:

```bash
texi2pdf  Doc/zsh.texi -o Doc/zsh.pdf
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                                    &&
make infodir=/usr/share/info install.info                       &&
make htmldir=/usr/share/doc/zsh-5.9.1/html install.md         &&
install -v -m644 zsh.{html,txt} Etc/FAQ /usr/share/doc/zsh-5.9.1
```

If you built the PDF format of the documentation, install it by issuing the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 Doc/zsh.pdf /usr/share/doc/zsh-5.9.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc/zsh`* and *`--enable-etcdir=/etc/zsh`*: These parameters are used so that all the <span class="application">zsh</span> configuration files are consolidated into the <code class="filename">/etc/zsh</code> directory. Omit these parameters if you wish to retain historical compatibility by having all the files located in the <code class="filename">/etc</code> directory.

*`--enable-cap`*: This option enables POSIX capabilities.

*`--enable-gdbm`*: This option enables the use of the <span class="application">GDBM</span> library.

*`--enable-pcre`*: This option allows zsh to use the <span class="application">PCRE2</span> regular expression library in shell builtins.
</div>

<div class="configuration" lang="en">
## Configuring zsh {#configuring-zsh}

<div class="sect3" lang="en">
### Config Files {#config-files}

There are a whole host of configuration files for <span class="application">zsh</span> including <code class="filename">/etc/zsh/zshenv</code>, <code class="filename">/etc/zsh/zprofile</code>, <code class="filename">/etc/zsh/zshrc</code>, <code class="filename">/etc/zsh/zlogin</code> and <code class="filename">/etc/zsh/zlogout</code>. You can find more information on these in the <a class="ulink" href="https://man.archlinux.org/man/zsh.1">zsh(1)</a> and related manual pages.

The first time zsh is executed, you will be prompted by messages asking several questions. The answers will be used to create a <code class="filename">~/.zshrc</code> file. If you wish to run these questions again, run <span class="command"><strong>zsh /usr/share/zsh/5.9.1/functions/zsh-newuser-install -f</strong></span>.

There are several built-in advanced prompts. In the <span class="command"><strong>zsh</strong></span> shell, start advanced prompt support with <span class="command"><strong>autoload -U promptinit</strong></span>, then <span class="command"><strong>promptinit</strong></span>. Available prompt names are listed with <span class="command"><strong>prompt -l</strong></span>. Select a particular one with <span class="command"><strong>prompt <code class="literal"><prompt-name></code></strong></span>. Display all available prompts with <span class="command"><strong>prompt -p</strong></span>. Except for the list and display commands above, you can insert the other ones in <code class="filename">~/.zshrc</code> to be automatically executed when the shell starts, with the prompt you chose.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Update <code class="filename">/etc/shells</code> to include the <span class="application">zsh</span> shell program names (as the <code class="systemitem">root</code> user):

```bash
cat >> /etc/shells << "EOF"
/bin/zsh
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">zsh and zsh-5.9.1 (hardlinked to each other)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Numerous plugin helper modules under /usr/lib/zsh/5.9.1/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,share}/zsh and /usr/share/doc/zsh-5.9.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Description

  ------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="zsh-prog"></a><span class="command"><span class="term"><strong>zsh</strong></span></span>   is a shell which has command-line editing, built-in spelling correction, programmable command completion, shell functions (with autoloading), a history mechanism, and a host of other features
  ------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tcsh.md "Tcsh-6.24.16")

    Tcsh-6.24.16

-   [Next](virtualization.md "Virtualization")

    Virtualization

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
