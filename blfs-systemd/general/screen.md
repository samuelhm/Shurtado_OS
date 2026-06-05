::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](pinentry.md "pinentry-1.3.2"){accesskey="p"}

    pinentry-1.3.2

-   [Next](shared-mime-info.md "shared-mime-info-2.4"){accesskey="n"}

    shared-mime-info-2.4

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#screen}Screen-5.0.1 {#screen-5.0.1 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Screen {#introduction-to-screen .sect2}

[Screen]{.application} is a terminal multiplexor that runs several separate processes, typically interactive shells, on a single physical character-based terminal. Each virtual terminal emulates a DEC VT100 plus several ANSI X3.64 and ISO 2022 functions and also provides configurable input and output translation, serial port support, configurable logging, multi-user support, and many character encodings, including UTF-8. Screen sessions can be detached and resumed later on a different terminal.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/screen/screen-5.0.1.tar.gz](https://ftpmirror.gnu.org/screen/screen-5.0.1.tar.gz){.ulink}

-   Download MD5 sum: fb5e5dfc9353225c2d6929777344b1a6

-   Download size: 880 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.1 SBU
:::

### Screen Dependencies

#### Optional

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Screen {#installation-of-screen .sect2}

Fix an issue causing the info page to fail to build:

``` userinput
sed 's/\([a-z]\)@opensuse/\1@@opensuse/' -i doc/screen.texinfo
```

Install [Screen]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                   \
            --infodir=/usr/share/info       \
            --mandir=/usr/share/man         \
            --disable-pam                   \
            --enable-socket-dir=/run/screen \
            --with-pty-group=5              \
            --with-system_screenrc=/etc/screenrc &&

sed -i -e "s%/usr/local/etc/screenrc%/etc/screenrc%" {etc,doc}/* &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -m 644 etc/etcscreenrc /etc/screenrc
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-pam`*: This option removes a build dependency on Linux-PAM. Remove this option if you want PAM support.

*`--enable-socket-dir=/run/screen`*: This option places the per-user sockets in a standard location.

*`--with-system_screenrc=/etc/screenrc`*: This option places the global screenrc file in `/etc`{.filename}.

*`--with-pty-group=5`*: This option sets the gid to the value used by LFS.

[**sed -i -e "s%/usr/local/etc/screenrc%/etc/screenrc%" {etc,doc}/\***]{.command}: This command corrects the configuration and documentation files to the location that is used here for the global screenrc file.
:::

::::: {.configuration lang="en"}
## Configuring Screen {#configuring-screen .sect2}

::: {.sect3 lang="en"}
### []{#screen-config}Config Files {#config-files .sect3}

`/etc/screenrc`{.filename} and `~/.screenrc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

You may want to look at the example configuration file that was installed and customize it for your needs.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [screen (symlink) and screen-5.0.1]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/screen and /run/screen]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- --------------------------------------------------------------
  []{#screen-prog}[[**screen**]{.command}]{.term}   is a terminal multiplexor with VT100/ANSI terminal emulation
  ------------------------------------------------- --------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](pinentry.md "pinentry-1.3.2"){accesskey="p"}

    pinentry-1.3.2

-   [Next](shared-mime-info.md "shared-mime-info-2.4"){accesskey="n"}

    shared-mime-info-2.4

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
