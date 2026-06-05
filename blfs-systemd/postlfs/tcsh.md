::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](dash.md "Dash-0.5.13.4"){accesskey="p"}

    Dash-0.5.13.4

-   [Next](zsh.md "zsh-5.9.1"){accesskey="n"}

    zsh-5.9.1

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tcsh}Tcsh-6.24.16 {#tcsh-6.24.16 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Tcsh {#introduction-to-tcsh .sect2}

The [Tcsh]{.application} package contains [“[an enhanced but completely compatible version of the Berkeley Unix C shell ([**csh**]{.command}).]{.quote}”]{.quote} This is useful as an alternative shell for those who prefer C syntax to that of the [**bash**]{.command} shell, and also because some programs require the C shell in order to perform installation tasks.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://astron.com/pub/tcsh/tcsh-6.24.16.tar.gz](https://astron.com/pub/tcsh/tcsh-6.24.16.tar.gz){.ulink}

-   Download MD5 sum: 448f53f12544abb627c9f078373b8ff5

-   Download size: 936 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of Tcsh {#installation-of-tcsh .sect2}

Install [Tcsh]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install install.man &&

ln -v -sf tcsh   /bin/csh &&
ln -v -sf tcsh.1 /usr/share/man/man1/csh.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**ln -v -sf tcsh /bin/csh**]{.command}: The FHS states that if there is a [C]{.application} shell installed, there should be a symlink from `/bin/csh`{.filename} to it. This creates that symlink.
:::

::::: {.configuration lang="en"}
## Configuring Tcsh {#configuring-tcsh .sect2}

::: {.sect3 lang="en"}
### []{#tcsh-config}Config Files {#config-files .sect3}

There are numerous configuration files for the C shell. Examples of these are `/etc/csh.cshrc`{.filename}, `/etc/csh.login`{.filename}, `/etc/csh.logout`{.filename}, `~/.tcshrc`{.filename}, `~/.cshrc`{.filename}, `~/.history`{.filename}, `~/.cshdirs`{.filename}, `~/.login`{.filename}, and `~/.logout`{.filename}. More information on these files can be found in the [tcsh(1)](https://man.archlinux.org/man/tcsh.1){.ulink} man page.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Update `/etc/shells`{.filename} to include the C shell program names (as the `root`{.systemitem} user):

``` root
cat >> /etc/shells << "EOF"
/bin/tcsh
/bin/csh
EOF
```

The following `~/.cshrc`{.filename} provides two alternative colour prompts and coloured [**ls**]{.command} output. If you prefer a global modification, issue the command as the `root`{.systemitem} user, replacing `~/.cshrc`{.filename} by `/etc/csh.cshrc`{.filename}.

``` userinput
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
# Just don't mess with the ${end} guy in either line...  Comment out or
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
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [tcsh]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#tcsh-prog}[[**tcsh**]{.command}]{.term}   is an enhanced but completely compatible version of the Berkeley Unix C shell, [**csh**]{.command}. It is usable as both an interactive shell and a script processor
  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](dash.md "Dash-0.5.13.4"){accesskey="p"}

    Dash-0.5.13.4

-   [Next](zsh.md "zsh-5.9.1"){accesskey="n"}

    zsh-5.9.1

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
