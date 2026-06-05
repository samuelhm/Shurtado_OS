::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](nano.md "Nano-9.0"){accesskey="p"}

    Nano-9.0

-   [Next](shells.md "Shells"){accesskey="n"}

    Shells

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vim}Vim-9.2.0567 {#vim-9.2.0567 .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Vim {#introduction-to-vim .sect2}

The [Vim]{.application} package, which is an abbreviation for VI IMproved, contains a [**vi**]{.command} clone with extra features as compared to the original [**vi**]{.command}.

The default LFS instructions install [vim]{.application} as a part of the base system. If you would prefer to link [vim]{.application} against [X]{.application}, you should recompile [vim]{.application} to enable GUI mode. There is no need for special instructions since [X]{.application} support is automatically detected.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The version of vim changes daily. To get the latest version, go to [https://github.com/vim/vim/releases](https://github.com/vim/vim/releases){.ulink}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/vim/vim/archive/v9.2.0567/vim-9.2.0567.tar.gz](https://github.com/vim/vim/archive/v9.2.0567/vim-9.2.0567.tar.gz){.ulink}

-   Download MD5 sum: 21f8aec8ca0422156ac7de1a92a49901

-   Download size: 19 MB

-   Estimated disk space required: 156 MB (add 82 MB for tests)

-   Estimated build time: 0.3 SBU (with parallelism=4; add 5.6 SBU for tests)
:::

### Vim Dependencies

#### Recommended

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} (or [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, required by some tests), [GPM-1.20.7](../general/gpm.md "GPM-1.20.7"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref}, [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref}, and [libsodium](https://libsodium.gitbook.io/doc/){.ulink}
::::::

:::::::: {.installation lang="en"}
## Installation of Vim {#installation-of-vim .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you recompile [Vim]{.application} to link against [X]{.application} and your [X]{.application} libraries are not on the root partition, you will no longer have vim for use in emergencies. You may choose to install an additional editor, not link [Vim]{.application} against [X]{.application}, or move the current [**vim**]{.command} executable to the `/bin`{.filename} directory under a different name such as `vi`{.filename}.
:::

Install [Vim]{.application} by running the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you intend to run the tests and have not installed Xorg in /usr, append LDFLAGS='-L\$XORG_PREFIX/lib' to the configure line below.
:::

``` userinput
echo '#define SYS_VIMRC_FILE  "/etc/vimrc"' >>  src/feature.h &&
echo '#define SYS_GVIMRC_FILE "/etc/gvimrc"' >> src/feature.h &&

./configure --prefix=/usr        \
            --with-features=huge \
            --enable-gui=gtk3    \
            --with-tlib=ncursesw &&
make
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the global configuration file `/etc/vimrc`{.filename} references the `VIMRUNTIME`{.envar} environment variable, some tests may complain about being unable to find the corresponding directory and wait for user input. If this is the case, this file should be saved and removed before running the tests. Or if [bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref} is installed, it's also possible to create a lightweight container environment where this file is hidden and run the tests in the container.
:::

To test the results, issue: [**make -j1 test**]{.command}. Test failures, if any, will produce the file `test.log`{.filename} in `src/testdir`{.filename}. The remaining tests will still be executed. Two tests, Test_client_server_stopinsert() and Test_popup_setbuf(), are known to fail on some systems. Some tests labelled as [“[flaky]{.quote}”]{.quote} may fail occasionally and can be ignored. Several tests are known to fail if the output is redirected to a file, and also if they are run in a 'screen' session.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If running the tests with [bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref} and `/etc/vimrc`{.filename} hidden, use [**bwrap --dev-bind / / --dev-bind /dev/null /etc/vimrc make -j1 test**]{.command}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some color tests expect to be executed under the [**xterm**]{.command} terminal emulator.
:::

Now, as the `root`{.systemitem} user:

``` root
make install
```

By default, Vim's documentation is installed in `/usr/share/vim`{.filename}. The following symlink allows the documentation to be accessed via `/usr/share/doc/vim-9.2.0567`{.filename}, making it consistent with the location of documentation for other packages:

``` root
ln -snfv ../vim/vim92/doc /usr/share/doc/vim-9.2.0567
```

[**If**]{.bold} you wish to update the runtime files, issue the following command (requires [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref}) to download it:

``` userinput
rsync -avzcP --exclude="/dos/" --exclude="/spell/" \
    ftp.nluug.nl::Vim/runtime/ ./runtime/
```

And then install the updated runtime files and regenerate the `tags`{.filename} file, as the `root`{.systemitem} user issue:

``` userinput
make -C src installruntime &&
vim -c ":helptags /usr/share/doc/vim-9.2.0567" -c ":q"
```
::::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-features=huge`*: This switch enables all the additional features available in [Vim]{.application}, including support for multibyte characters.

*`--with-tlib=ncursesw`*: This switch forces Vim to link against the `libncursesw`{.filename} library.

`--enable-gui=no`{.option}: This will prevent compilation of the GUI. [Vim]{.application} will still link against [X]{.application}, so that some features such as the client-server model or the x11-selection (clipboard) are still available.

`--without-x`{.option}: If you prefer not to link [Vim]{.application} against [X]{.application}, use this switch.

`--enable-luainterp`{.option}, `--enable-perlinterp`{.option}, `--enable-python3interp=dynamic`{.option}, `--enable-tclinterp --with-tclsh=tclsh`{.option}, `--enable-rubyinterp`{.option}: These options include the Lua, Perl, Python3, Tcl, or Ruby interpreters that allow using other application code in [vim]{.application} scripts. All the `--enable-*`{.option} options can accept `=dynamic`{.option} to dynamically load the interpreter when needed. This is required for [Python 3]{.application} to prevent segmentation faults. For [tcl]{.application}, it is necessary to indicate the name of the [**tclsh**]{.command} executable, since [**configure**]{.command} only searches versioned names with old versions.
:::

::::: {.configuration lang="en"}
## Configuring Vim {#configuring-vim .sect2}

::: {.sect3 lang="en"}
### []{#vim-config}Config Files {#config-files .sect3}

`/etc/vimrc`{.filename} and `~/.vimrc`{.filename}
:::

::: {.sect3 lang="en"}
### []{#vim-init}Configuration Information {#configuration-information .sect3}

[Vim]{.application} has an integrated spell checker which you can enable by issuing the following in a vim window:

``` screen
:setlocal spell spelllang=ru
```

This setting will enable spell checking for the Russian language for the current session.

By default, [Vim]{.application} only installs spell files for the English language. If a spell file is not available for a language, then [Vim]{.application} will call the `$VIMRUNTIME/plugin/spellfile.vim`{.filename} plugin and will try to obtain the \*.spl and optionally \*.sug from the vim ftp server, by using the `$VIMRUNTIME/plugin/netrwPlugin.vim`{.filename} plugin.

Alternatively you can manually download the \*.spl and \*.sug files from: [https://github.com/vim/vim/tree/master/runtime/spell](https://github.com/vim/vim/tree/master/runtime/spell){.ulink} and save them to `~/.vim/spell`{.filename} or in `/usr/share/vim/vim92/spell/`{.filename}.

To find out what's new in [Vim-9.2.0567]{.application} issue the following command:

``` screen
:help version-9.2.0567
```

For additional information on setting up [Vim]{.application} configuration files, see [The vimrc Files](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){.xref} and [https://vim.fandom.com/wiki/Example_vimrc](https://vim.fandom.com/wiki/Example_vimrc){.ulink}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

A list of the reinstalled files, along with their short descriptions can be found in the [LFS Vim Installation Instructions](../../../../lfs/view/systemd/chapter08/vim.md#contents-vim){.ulink}.

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gview, gvim, gvimdiff, gvimtutor, rgview, and rgvim]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/vim]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------------------------
  []{#gview}[[**gview**]{.command}]{.term}           starts [**gvim**]{.command} in read-only mode
  []{#gvim}[[**gvim**]{.command}]{.term}             is the editor that runs under [X]{.application} and includes a GUI
  []{#gvimdiff}[[**gvimdiff**]{.command}]{.term}     edits two or three versions of a file with [**gvim**]{.command} and shows the differences
  []{#gvimtutor}[[**gvimtutor**]{.command}]{.term}   teaches the basic keys and commands of [**gvim**]{.command}
  []{#rgview}[[**rgview**]{.command}]{.term}         is a restricted version of [**gview**]{.command}
  []{#rgvim}[[**rgvim**]{.command}]{.term}           is a restricted version of [**gvim**]{.command}
  -------------------------------------------------- -------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](nano.md "Nano-9.0"){accesskey="p"}

    Nano-9.0

-   [Next](shells.md "Shells"){accesskey="n"}

    Shells

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
