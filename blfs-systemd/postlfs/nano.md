::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](mousepad.md "mousepad-0.7.0"){accesskey="p"}

    mousepad-0.7.0

-   [Next](vim.md "Vim-9.2.0567"){accesskey="n"}

    Vim-9.2.0567

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nano}Nano-9.0 {#nano-9.0 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Nano {#introduction-to-nano .sect2}

The [Nano]{.application} package contains a small, simple text editor which aims to replace [Pico]{.application}, the default editor in the [Pine]{.application} package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.nano-editor.org/dist/v9/nano-9.0.tar.xz](https://www.nano-editor.org/dist/v9/nano-9.0.tar.xz){.ulink}

-   Download MD5 sum: fe956d0e4807a96d9cf78849aaf04d54

-   Download size: 1.7 MB

-   Estimated disk space required: 30 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Nano {#installation-of-nano .sect2}

Install [Nano]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=/usr/share/doc/nano-9.0 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 doc/{nano.html,sample.nanorc} /usr/share/doc/nano-9.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-utf8`*: This switch enables unicode support in [Nano]{.application}.
:::

::::: {.configuration lang="en"}
## Configuring nano {#configuring-nano .sect2}

::: {.sect3 lang="en"}
### []{#nano-config}Config Files {#config-files .sect3}

`/etc/nanorc`{.filename} and `~/.nanorc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Example configuration (create as a system-wide `/etc/nanorc`{.filename} or a personal `~/.nanorc`{.filename} file)

``` screen
set autoindent
set constantshow
set fill 72
set historylog
set multibuffer
set nohelp
set positionlog
set quickblank
set regexp
```

Check the `sample.nanorc`{.filename} file in the installed documentation directory. It includes color configurations and has some documentation included in the comments.

Syntax highlighting is provided for several file types, in `/usr/share/nano/`{.filename} directory. E.g., for shell scripts, you can insert `include /usr/share/nano/sh.nanorc`{.option} in the personal or global configuration file. If you wish highlighting for all supported files, use `include /usr/share/nano/*.nanorc`{.option}. This include does not descend into the `extra`{.filename} directory. Move required files one level up.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nano and rnano (symlink)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/nano and /usr/share/doc/nano-9.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  []{#nano-prog}[[**nano**]{.command}]{.term}     is a small, simple text editor which aims to replace [Pico]{.application}, the default editor in the [Pine]{.application} package
  []{#rnano-prog}[[**rnano**]{.command}]{.term}   is a restricted mode for [**nano**]{.command}
  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](mousepad.md "mousepad-0.7.0"){accesskey="p"}

    mousepad-0.7.0

-   [Next](vim.md "Vim-9.2.0567"){accesskey="n"}

    Vim-9.2.0567

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
