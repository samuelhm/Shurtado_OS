::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](texinfo.md "Texinfo-7.3"){accesskey="p"}

    Texinfo-7.3

-   [Next](markupsafe.md "MarkupSafe-3.0.3"){accesskey="n"}

    MarkupSafe-3.0.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-vim}8.73. Vim-9.2.0567 {#vim-9.2.0567 .sect1}

:::::::::::::::::: {.wrap lang="en"}
:::::::: {.package lang="en"}
The Vim package contains a powerful text editor.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [3.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [217 MB]{.segbody}
:::
:::::
::::::

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Alternatives to Vim

If you prefer another editor---such as Emacs, Joe, or Nano---please refer to [https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/editors.html](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/editors.html){.ulink} for suggested installation instructions.
:::
::::::::

::: {.installation lang="en"}
## 8.73.1. Installation of Vim {#installation-of-vim .sect2}

First, change the default location of the `vimrc`{.filename} configuration file to `/etc`{.filename}:

``` userinput
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
```

Prepare Vim for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

To prepare the tests, ensure that user `tester`{.systemitem} can write to the source tree and exclude one file containing tests requiring [**curl**]{.command} or [**wget**]{.command}:

``` userinput
chown -R tester .
sed '/test_plugin_glvs/d' -i src/testdir/Make_all.mak
```

Now run the tests as user `tester`{.systemitem}:

``` userinput
su tester -c "TERM=xterm-256color LANG=en_US.UTF-8 make -j1 test" \
   &> vim-test.log
```

The test suite outputs a lot of binary data to the screen. This can cause issues with the settings of the current terminal (especially while we are overriding the `TERM`{.envar} variable to satisfy some assumptions of the test suite). The problem can be avoided by redirecting the output to a log file as shown above. A successful test will show `FAILED: 0`{.computeroutput} in the log file at completion.

Two tests, Test_client_server_stopinsert() and Test_popup_setbuf(), are known to fail on some systems.

Install the package:

``` userinput
make install
```

Many users reflexively type [**vi**]{.command} instead of [**vim**]{.command}. To allow execution of [**vim**]{.command} when users habitually enter [**vi**]{.command}, create a symlink for both the binary and the man page in the provided languages:

``` userinput
ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done
```

By default, Vim\'s documentation is installed in `/usr/share/vim`{.filename}. The following symlink allows the documentation to be accessed via `/usr/share/doc/vim-9.2.0567`{.filename}, making it consistent with the location of documentation for other packages:

``` userinput
ln -sv ../vim/vim92/doc /usr/share/doc/vim-9.2.0567
```

If an X Window System is going to be installed on the LFS system, it may be necessary to recompile Vim after installing X. Vim comes with a GUI version of the editor that requires X and some additional libraries to be installed. For more information on this process, refer to the Vim documentation and the Vim installation page in the BLFS book at [https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/vim.html](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/vim.html){.ulink}.
:::

:::: {.configuration lang="en"}
## []{#conf-vim}8.73.2. Configuring Vim {#configuring-vim .sect2}

By default, [**vim**]{.command} runs in vi-incompatible mode. This may be new to users who have used other editors in the past. The ["[nocompatible]{.quote}"]{.quote} setting is included below to highlight the fact that a new behavior is being used. It also reminds those who would change to ["[compatible]{.quote}"]{.quote} mode that it should be the first setting in the configuration file. This is necessary because it changes other settings, and overrides must come after this setting. Create a default [**vim**]{.command} configuration file by running the following:

``` userinput
cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1

set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF
```

The *`set nocompatible`* setting makes [**vim**]{.command} behave in a more useful way (the default) than the vi-compatible manner. Remove the ["[no]{.quote}"]{.quote} to keep the old [**vi**]{.command} behavior. The *`set backspace=2`* setting allows backspacing over line breaks, autoindents, and the start of an insert. The *`syntax on`* parameter enables vim\'s syntax highlighting. The *`set mouse=`* setting enables proper pasting of text with the mouse when working in chroot or over a remote connection. Finally, the [*if*]{.emphasis} statement with the *`set background=dark`* setting corrects [**vim**]{.command}\'s guess about the background color of some terminal emulators. This gives the highlighting a better color scheme for use on the black background of these programs.

Documentation for other available options can be obtained by running the following command:

``` userinput
vim -c ':options'
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

By default, vim only installs spell-checking files for the English language. To install spell-checking files for your preferred language, copy the `.spl`{.filename} and optionally, the `.sug`{.filename} files for your language and character encoding from `runtime/spell`{.filename} into `/usr/share/vim/vim92/spell/`{.filename}.

To use these spell-checking files, some configuration in `/etc/vimrc`{.filename} is needed, e.g.:

``` screen
set spelllang=en,ru
set spell
```

For more information, see `runtime/spell/README.txt`{.filename}.
:::
::::

:::::::: {.content lang="en"}
## []{#contents-vim}8.73.3. Contents of Vim {#contents-of-vim .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [ex (link to vim), rview (link to vim), rvim (link to vim), vi (link to vim), view (link to vim), vim, vimdiff (link to vim), vimtutor, and xxd]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/vim]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------
  []{#ex}[[**ex**]{.command}]{.term}               Starts [**vim**]{.command} in ex mode
  []{#rview}[[**rview**]{.command}]{.term}         Is a restricted version of [**view**]{.command}; no shell commands can be started and [**view**]{.command} cannot be suspended
  []{#rvim}[[**rvim**]{.command}]{.term}           Is a restricted version of [**vim**]{.command}; no shell commands can be started and [**vim**]{.command} cannot be suspended
  []{#vi}[[**vi**]{.command}]{.term}               Link to [**vim**]{.command}
  []{#view}[[**view**]{.command}]{.term}           Starts [**vim**]{.command} in read-only mode
  []{#vim}[[**vim**]{.command}]{.term}             Is the editor
  []{#vimdiff}[[**vimdiff**]{.command}]{.term}     Edits two or three versions of a file with [**vim**]{.command} and shows differences
  []{#vimtutor}[[**vimtutor**]{.command}]{.term}   Teaches the basic keys and commands of [**vim**]{.command}
  []{#xxd}[[**xxd**]{.command}]{.term}             Creates a hex dump of the given file; it can also perform the inverse operation, so it can be used for binary patching
  ------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::::

::: navfooter
-   [Prev](texinfo.md "Texinfo-7.3"){accesskey="p"}

    Texinfo-7.3

-   [Next](markupsafe.md "MarkupSafe-3.0.3"){accesskey="n"}

    MarkupSafe-3.0.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
