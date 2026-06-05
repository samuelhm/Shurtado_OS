::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](tcsh.md "Tcsh-6.24.16"){accesskey="p"}

    Tcsh-6.24.16

-   [Next](virtualization.md "Virtualization"){accesskey="n"}

    Virtualization

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#zsh}zsh-5.9.1 {#zsh-5.9.1 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to zsh {#introduction-to-zsh .sect2}

The [zsh]{.application} package contains a command interpreter (shell) usable as an interactive login shell and as a shell script command processor. Of the standard shells, [zsh]{.application} most closely resembles [ksh]{.application} but includes many enhancements.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.zsh.org/pub/zsh-5.9.1.tar.xz](https://www.zsh.org/pub/zsh-5.9.1.tar.xz){.ulink}

-   Download MD5 sum: 5492bfe9a4afacdb2d1d81c27a1d44fa

-   Download size: 3.3 MB

-   Estimated disk space required: 48 MB (includes documentation and tests)

-   Estimated build time: 1.6 SBU (Using parallelism=4; includes documentation and tests)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When there is a new [zsh]{.application} release, the old files shown above are moved to a new server directory: [https://www.zsh.org/pub/old/](https://www.zsh.org/pub/old/){.ulink}.
:::

### zsh Dependencies

#### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} and [yodl](https://fbb-git.gitlab.io/yodl/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of zsh {#installation-of-zsh .sect2}

The documentation files contain references to zsh configuration files in `/etc`{.filename}, but we'll use `/etc/zsh`{.filename} to hold these configuration files instead. The build system will update those references if the [yodl]{.application} package is available, but it's out of the scope of BLFS. As a result, we need to fix the references manually:

``` userinput
sed -e 's|/etc/z|/etc/zsh/z|g' \
    -i Doc/*.*
```

Install [zsh]{.application} by running the following commands:

``` userinput
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

If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed, you can build the documentation in PDF format by issuing the following command:

``` userinput
texi2pdf  Doc/zsh.texi -o Doc/zsh.pdf
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install                                                    &&
make infodir=/usr/share/info install.info                       &&
make htmldir=/usr/share/doc/zsh-5.9.1/html install.md         &&
install -v -m644 zsh.{html,txt} Etc/FAQ /usr/share/doc/zsh-5.9.1
```

If you built the PDF format of the documentation, install it by issuing the following command as the `root`{.systemitem} user:

``` root
install -v -m644 Doc/zsh.pdf /usr/share/doc/zsh-5.9.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc/zsh`* and *`--enable-etcdir=/etc/zsh`*: These parameters are used so that all the [zsh]{.application} configuration files are consolidated into the `/etc/zsh`{.filename} directory. Omit these parameters if you wish to retain historical compatibility by having all the files located in the `/etc`{.filename} directory.

*`--enable-cap`*: This option enables POSIX capabilities.

*`--enable-gdbm`*: This option enables the use of the [GDBM]{.application} library.

*`--enable-pcre`*: This option allows zsh to use the [PCRE2]{.application} regular expression library in shell builtins.
:::

::::: {.configuration lang="en"}
## Configuring zsh {#configuring-zsh .sect2}

::: {.sect3 lang="en"}
### []{#zsh-config}Config Files {#config-files .sect3}

There are a whole host of configuration files for [zsh]{.application} including `/etc/zsh/zshenv`{.filename}, `/etc/zsh/zprofile`{.filename}, `/etc/zsh/zshrc`{.filename}, `/etc/zsh/zlogin`{.filename} and `/etc/zsh/zlogout`{.filename}. You can find more information on these in the [zsh(1)](https://man.archlinux.org/man/zsh.1){.ulink} and related manual pages.

The first time zsh is executed, you will be prompted by messages asking several questions. The answers will be used to create a `~/.zshrc`{.filename} file. If you wish to run these questions again, run [**zsh /usr/share/zsh/5.9.1/functions/zsh-newuser-install -f**]{.command}.

There are several built-in advanced prompts. In the [**zsh**]{.command} shell, start advanced prompt support with [**autoload -U promptinit**]{.command}, then [**promptinit**]{.command}. Available prompt names are listed with [**prompt -l**]{.command}. Select a particular one with [**prompt `<prompt-name>`{.literal}**]{.command}. Display all available prompts with [**prompt -p**]{.command}. Except for the list and display commands above, you can insert the other ones in `~/.zshrc`{.filename} to be automatically executed when the shell starts, with the prompt you chose.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Update `/etc/shells`{.filename} to include the [zsh]{.application} shell program names (as the `root`{.systemitem} user):

``` root
cat >> /etc/shells << "EOF"
/bin/zsh
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [zsh and zsh-5.9.1 (hardlinked to each other)]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous plugin helper modules under /usr/lib/zsh/5.9.1/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,share}/zsh and /usr/share/doc/zsh-5.9.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Description

  ------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#zsh-prog}[[**zsh**]{.command}]{.term}   is a shell which has command-line editing, built-in spelling correction, programmable command completion, shell functions (with autoloading), a history mechanism, and a host of other features
  ------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](tcsh.md "Tcsh-6.24.16"){accesskey="p"}

    Tcsh-6.24.16

-   [Next](virtualization.md "Virtualization"){accesskey="n"}

    Virtualization

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
