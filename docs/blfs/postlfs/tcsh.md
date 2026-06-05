<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](dash.md "Dash-0.5.13.4")

    Dash-0.5.13.4

-   [Next](zsh.md "zsh-5.9.1")

    zsh-5.9.1

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tcsh-6.24.16 {#tcsh-6.24.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tcsh {#introduction-to-tcsh}

The <span class="application">Tcsh</span> package contains <span class="command">“<span class="quote">an enhanced but completely compatible version of the Berkeley Unix C shell (<span class="quote"><strong>csh</strong></span>).</span>”</span> This is useful as an alternative shell for those who prefer C syntax to that of the <span class="command"><strong>bash</strong></span> shell, and also because some programs require the C shell in order to perform installation tasks.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://astron.com/pub/tcsh/tcsh-6.24.16.tar.gz">https://astron.com/pub/tcsh/tcsh-6.24.16.tar.gz</a>

-   Download MD5 sum: 448f53f12544abb627c9f078373b8ff5

-   Download size: 936 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of Tcsh {#installation-of-tcsh}

Install <span class="application">Tcsh</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install install.man &&

ln -v -sf tcsh   /bin/csh &&
ln -v -sf tcsh.1 /usr/share/man/man1/csh.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>ln -v -sf tcsh /bin/csh</strong></span>: The FHS states that if there is a <span class="application">C</span> shell installed, there should be a symlink from <code class="filename">/bin/csh</code> to it. This creates that symlink.
</div>

<div class="configuration" lang="en">
## Configuring Tcsh {#configuring-tcsh}

<div class="sect3" lang="en">
### Config Files {#config-files}

There are numerous configuration files for the C shell. Examples of these are <code class="filename">/etc/csh.cshrc</code>, <code class="filename">/etc/csh.login</code>, <code class="filename">/etc/csh.logout</code>, <code class="filename">~/.tcshrc</code>, <code class="filename">~/.cshrc</code>, <code class="filename">~/.history</code>, <code class="filename">~/.cshdirs</code>, <code class="filename">~/.login</code>, and <code class="filename">~/.logout</code>. More information on these files can be found in the <a class="ulink" href="https://man.archlinux.org/man/tcsh.1">tcsh(1)</a> man page.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Update <code class="filename">/etc/shells</code> to include the C shell program names (as the <code class="systemitem">root</code> user):

```bash
cat >> /etc/shells << "EOF"
/bin/tcsh
/bin/csh
EOF
```

The following <code class="filename">~/.cshrc</code> provides two alternative colour prompts and coloured <span class="command"><strong>ls</strong></span> output. If you prefer a global modification, issue the command as the <code class="systemitem">root</code> user, replacing <code class="filename">~/.cshrc</code> by <code class="filename">/etc/csh.cshrc</code>.

```bash
cat > ~/.cshrc << "EOF"
# Original at:
# https://www.cs.umd.edu/~srhuang/teaching/code_snippets/prompt_color.tcsh.md

# Modified by the BLFS Development Team.

# Add these lines to your ~/.cshrc (or to /etc/csh.cshrc).

# Colors!
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end...

# Setting the actual prompt.  Two separate versions for you to try, pick
# whichever one you like better, and change the colors as you want.
# Just don't mess with the $ guy in either line...  Comment out or
# delete the prompt you don't use.

set prompt="${green}%n${blue}@%m ${white}%~ ${green}%%${end} "
set prompt="[${green}%n${blue}@%m ${white}%~ ]${end} "

# This was not in the original URL above
# Provides coloured ls
alias ls ls --color=always

# Clean up after ourselves...
unset red green yellow blue magenta cyan yellow white end
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">tcsh</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="tcsh-prog"></a><span class="command"><span class="term"><strong>tcsh</strong></span></span>   is an enhanced but completely compatible version of the Berkeley Unix C shell, <span class="command"><strong>csh</strong></span>. It is usable as both an interactive shell and a script processor
  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dash.md "Dash-0.5.13.4")

    Dash-0.5.13.4

-   [Next](zsh.md "zsh-5.9.1")

    zsh-5.9.1

-   [Up](shells.md "Chapter 7. Shells")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
