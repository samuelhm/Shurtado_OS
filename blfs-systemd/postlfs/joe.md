::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](emacs.md "Emacs-30.2"){accesskey="p"}

    Emacs-30.2

-   [Next](kate.md "kate-26.04.1"){accesskey="n"}

    kate-26.04.1

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#joe}JOE-4.6 {#joe-4.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to JOE {#introduction-to-joe .sect2}

[JOE]{.application} (Joe's own editor) is a small text editor capable of emulating WordStar, [Pico]{.application}, and [Emacs]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/joe-editor/joe-4.6.tar.gz](https://downloads.sourceforge.net/joe-editor/joe-4.6.tar.gz){.ulink}

-   Download MD5 sum: 9017484e6116830d846678b625ea5c43

-   Download size: 1.8 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of JOE {#installation-of-joe .sect2}

Install [JOE]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/joe-4.6 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -vm 755 joe/util/{stringify,termidx,uniproc} /usr/bin
```
:::

:::: {.configuration lang="en"}
## Configuring JOE {#configuring-joe .sect2}

::: {.sect3 lang="en"}
### []{#joe-config}Config Files {#config-files .sect3}

`/etc/joe/jmacsrc`{.filename}, `/etc/joe/joerc`{.filename}, `/etc/joe/jpicorc`{.filename}, `/etc/joe/jstarrc`{.filename}, `/etc/joe/rjoerc`{.filename}, and `~/.joerc`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [jmacs, joe, jpico, jstar, rjoe, stringify, termidx, and uniproc]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/joe, /usr/share/joe, and /usr/share/doc/joe-4.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#jmacs}[[**jmacs**]{.command}]{.term}           is a symbolic link to [**joe**]{.command} used to launch [Emacs]{.application} emulation mode
  []{#joe-prog}[[**joe**]{.command}]{.term}          is a small text editor capable of emulating WordStar, [Pico]{.application}, and [Emacs]{.application}
  []{#jpico}[[**jpico**]{.command}]{.term}           is a symbolic link to [**joe**]{.command} used to launch [Pico]{.application} emulation mode
  []{#jstar}[[**jstar**]{.command}]{.term}           is a symbolic link to [**joe**]{.command} used to launch WordStar emulation mode
  []{#rjoe}[[**rjoe**]{.command}]{.term}             is a symbolic link to [**joe**]{.command} that restricts [JOE]{.application} to editing only files which are specified on the command-line
  []{#stringify}[[**stringify**]{.command}]{.term}   is a program used by [**joe**]{.command} to convert rc and .jsf files into a C file (see /usr/share/doc/joe-4.6/util/README)
  []{#termidx}[[**termidx**]{.command}]{.term}       is a program used by [**joe**]{.command} to generate the termcap index file (see /usr/share/doc/joe-4.6/util/README)
  []{#uniproc}[[**uniproc**]{.command}]{.term}       is a program used by [**joe**]{.command} to generate joe's unicode database file unicat.c from Blocks.txt CaseFolding.txt EastAsianWidth.txt and UnicodeData.txt (find them at /usr/share/doc/joe-4.6/util; see usr/share/doc/joe-4.6/util/README)
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](emacs.md "Emacs-30.2"){accesskey="p"}

    Emacs-30.2

-   [Next](kate.md "kate-26.04.1"){accesskey="n"}

    kate-26.04.1

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
