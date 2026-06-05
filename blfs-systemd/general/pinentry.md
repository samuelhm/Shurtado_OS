::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](lsof.md "lsof-4.99.6"){accesskey="p"}

    lsof-4.99.6

-   [Next](screen.md "Screen-5.0.1"){accesskey="n"}

    Screen-5.0.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pinentry}pinentry-1.3.2 {#pinentry-1.3.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to PIN-Entry {#introduction-to-pin-entry .sect2}

The [PIN-Entry]{.application} package contains a collection of simple PIN or pass-phrase entry dialogs which utilize the Assuan protocol as described by the [Ägypten project](https://www.gnupg.org/aegypten/){.ulink}. [PIN-Entry]{.application} programs are usually invoked by the [**gpg-agent**]{.command} daemon, but can be run from the command line as well. There are programs for various text-based and GUI environments, including interfaces designed for [Ncurses]{.application} (text-based), and for the common [GTK]{.application} and [Qt]{.application} toolkits.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.3.2.tar.bz2](https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.3.2.tar.bz2){.ulink}

-   Download MD5 sum: 5247373d2e9ac73b1ea662bd270e58a4

-   Download size: 600 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.2 SBU
:::

### PIN-Entry Dependencies

#### Required

[libassuan-3.0.2](libassuan.md "libassuan-3.0.2"){.xref} and [libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}

#### Optional

[Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref}, [FLTK-1.4.5](../x/fltk.md "FLTK-1.4.5"){.xref}, [Gcr-4.4.0.1](../gnome/gcr4.md "Gcr-4.4.0.1"){.xref} (or [Gcr-3.41.2](../gnome/gcr.md "Gcr-3.41.2"){.xref}), [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [libsecret-0.21.7](../gnome/libsecret.md "libsecret-0.21.7"){.xref}, and [efl](https://www.enlightenment.org/about-efl){.ulink}
:::::

::: {.installation lang="en"}
## Installation of PIN-Entry {#installation-of-pin-entry .sect2}

First, make [**configure**]{.command} consistent with fltk-1.4.1:

``` userinput
sed -i "/FLTK 1/s/3/4/" configure   &&
sed -i '14456 s/1.3/1.4/' configure
```

Install [PIN-Entry]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr          \
            --enable-pinentry-tty  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-inside-emacs=yes/no`{.option}: Default is no.

`--enable-pinentry-qt=yes/no`{.option}: Default is yes.

`--enable-pinentry-gnome3=yes/no`{.option}: Default is yes. This option uses [Gcr-4.4.0.1](../gnome/gcr4.md "Gcr-4.4.0.1"){.xref} (or [Gcr-3.41.2](../gnome/gcr.md "Gcr-3.41.2"){.xref} if the former is not installed) for the pinentry dialog.

*`--enable-pinentry-tty`*: Default is 'maybe'.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pinentry (symlink), pinentry-curses, pinentry-emacs, pinentry-fltk, pinentry-gnome3, pinentry-qt, and pinentry-tty]{.segbody}
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

  -------------------------------------------------------------- -------------------------------------------------------------------------------------
  []{#pinentry-prog}[[**pinentry**]{.command}]{.term}            is a symbolic link to the default [PIN-Entry]{.application} program
  []{#pinentry-curses}[[**pinentry-curses**]{.command}]{.term}   is an [Ncurses]{.application} text-based [PIN-Entry]{.application} helper program
  []{#pinentry-emacs}[[**pinentry-emacs**]{.command}]{.term}     is an [Emacs]{.application} version of the [PIN-Entry]{.application} helper program
  []{#pinentry-fltk}[[**pinentry-fltk**]{.command}]{.term}       is a [FLTK]{.application} [PIN-Entry]{.application} helper program
  []{#pinentry-gnome3}[[**pinentry-gnome3**]{.command}]{.term}   is a [GNOME-3]{.application} [PIN-Entry]{.application} helper program
  []{#pinentry-qt}[[**pinentry-qt**]{.command}]{.term}           is a [Qt4 or 5]{.application} [PIN-Entry]{.application} helper program
  []{#pinentry-tty}[[**pinentry-tty**]{.command}]{.term}         is a [tty]{.application} [PIN-Entry]{.application} helper program
  -------------------------------------------------------------- -------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lsof.md "lsof-4.99.6"){accesskey="p"}

    lsof-4.99.6

-   [Next](screen.md "Screen-5.0.1"){accesskey="n"}

    Screen-5.0.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
