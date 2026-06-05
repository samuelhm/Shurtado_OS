::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](twm.md "twm-1.0.13.1"){accesskey="p"}

    twm-1.0.13.1

-   [Next](xclock.md "xclock-1.1.1"){accesskey="n"}

    xclock-1.1.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xterm2}xterm-410 {#xterm-410 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xterm {#introduction-to-xterm .sect2}

[xterm]{.application} is a terminal emulator for the X Window System.

This package is provided for testing the completed Xorg installation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://invisible-mirror.net/archives/xterm/xterm-410.tgz](https://invisible-mirror.net/archives/xterm/xterm-410.tgz){.ulink}

-   Download MD5 sum: 29b43931004f812483db02964865cbc9

-   Download size: 1.6 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU (with parallelism=4)
:::

### xterm Dependencies

#### Required

[luit-20250912](luit.md "luit-20250912"){.xref}

#### Required (at runtime)

A monospace TTF or OTF font such as [Dejavu fonts](TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref}

#### Optional

[Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} and [man2html](https://www.nongnu.org/man2html/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of xterm {#installation-of-xterm .sect2}

Install [xterm]{.application} by running the following commands:

``` userinput
sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
printf '\tkbs=\\177,\n' >> terminfo &&

TERMINFO=/usr/share/terminfo \
./configure $XORG_CONFIG     \
            --with-app-defaults=/etc/X11/app-defaults &&

make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&

mkdir -pv /usr/share/applications &&
cp -v *.desktop /usr/share/applications/
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i ... termcap**]{.command}, [**printf ... \>\> terminfo**]{.command}: These commands modify the terminal description so that the Backspace key is expected to send the character with ASCII code 127. This is done for consistency with the Linux console.

`TERMINFO=/usr/share/terminfo`{.envar}: This ensures that the [**xterm**]{.command} terminfo files are installed to the system terminfo database.

*`--with-app-defaults=...`*: Sets the location for the `app-defaults`{.filename} directory.
:::

::: {.configuration lang="en"}
## Configuring xterm {#configuring-xterm .sect2}

There are two ways to configure xterm. You can add the X resource definitions to the user's `~/.Xresources`{.filename} file, or add them to the system-wide `$XORG_PREFIX/share/X11/app-defaults/Xterm`{.filename} file.

In order for xterm to follow the locale settings in the environment, use TrueType fonts, and follow the Linux convention about the code sent by the Backspace key, add the following definitions as the `root`{.systemitem} user:

``` root
cat >> /etc/X11/app-defaults/XTerm << "EOF"
*VT100*locale: true
*VT100*faceName: Monospace
*VT100*faceSize: 10
*backarrowKeyIsErase: true
*ptyInitialErase: true
EOF
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [koi8rxterm, resize, uxterm, and xterm]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
  []{#koi8rxterm}[[**koi8rxterm**]{.command}]{.term}   is a wrapper script to set up xterm with a KOI8-R locale
  []{#resize}[[**resize**]{.command}]{.term}           prints a shell command for setting the TERM and TERMCAP environment variables to indicate the current size of xterm window
  []{#uxterm}[[**uxterm**]{.command}]{.term}           is a wrapper script that modifies the current locale to use UTF-8 and starts xterm with the proper settings
  []{#xterm-bin}[[**xterm**]{.command}]{.term}         is a terminal emulator for the X Window System
  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](twm.md "twm-1.0.13.1"){accesskey="p"}

    twm-1.0.13.1

-   [Next](xclock.md "xclock-1.1.1"){accesskey="n"}

    xclock-1.1.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
