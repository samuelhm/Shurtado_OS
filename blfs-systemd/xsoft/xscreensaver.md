::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](xdg-utils.md "xdg-utils-1.2.1"){accesskey="p"}

    xdg-utils-1.2.1

-   [Next](../multimedia/multimedia.md "Multimedia"){accesskey="n"}

    Multimedia

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xscreensaver}XScreenSaver-6.15 {#xscreensaver-6.15 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to XScreenSaver {#introduction-to-xscreensaver .sect2}

The [XScreenSaver]{.application} package is a modular screen saver and locker for the X Window System. It is highly customizable and allows the use of any program that can draw on the root window as a display mode. The purpose of [XScreenSaver]{.application} is to display pretty pictures on your screen when it is not in use, in keeping with the philosophy that unattended monitors should always be doing something interesting, just like they do in the movies. However, [XScreenSaver]{.application} can also be used as a screen locker, to prevent others from using your terminal while you are away.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.jwz.org/xscreensaver/xscreensaver-6.15.tar.gz](https://www.jwz.org/xscreensaver/xscreensaver-6.15.tar.gz){.ulink}

-   Download MD5 sum: 65cd8d94841019763e1246df097612ff

-   Download size: 32 MB

-   Estimated disk space required: 379 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
:::

### XScreenSaver Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, and [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref}

#### Recommended

[GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}

#### Optional

[GDM-50.1](../x/gdm.md "GDM-50.1"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, and [GLE](https://linas.org/gle/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of XScreenSaver {#installation-of-xscreensaver .sect2}

Install [XScreenSaver]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --with-systemd &&
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

`--with-setuid-hacks`{.option}: This switch allows some demos to be installed setuid `root`{.systemitem} which is needed in order to ping other hosts.
:::

::::: {.configuration lang="en"}
## Configuring XScreenSaver {#configuring-xscreensaver .sect2}

::: {.sect3 lang="en"}
### []{#xscreensaver-config}Config Files {#config-files .sect3}

`/etc/X11/app-defaults/XScreenSaver`{.filename} and `~/.xscreensaver`{.filename}
:::

::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

If [XScreenSaver]{.application} has been built with [Linux PAM]{.application} support, you need to create a [PAM]{.application} configuration file, to get it working correctly with BLFS.

Issue the following commands as the `root`{.systemitem} user to create the configuration file for [Linux PAM]{.application}:

``` root
cat > /etc/pam.d/xscreensaver << "EOF"
# Begin /etc/pam.d/xscreensaver

auth    include system-auth
account include system-account

# End /etc/pam.d/xscreensaver
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xscreensaver, xscreensaver-command, xscreensaver-demo, and xscreensaver-settings]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/libexec/xscreensaver and /usr/share/xscreensaver]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  []{#xscreensaver-prog}[[**xscreensaver**]{.command}]{.term}                is a screen saver and locker daemon
  []{#xscreensaver-command}[[**xscreensaver-command**]{.command}]{.term}     controls a running [**xscreensaver**]{.command} process by sending it client messages
  []{#xscreensaver-demo}[[**xscreensaver-demo**]{.command}]{.term}           is a symlink to [**xscreensaver-settings**]{.command}
  []{#xscreensaver-settings}[[**xscreensaver-settings**]{.command}]{.term}   is a graphical front-end for setting the parameters used by the background [**xscreensaver**]{.command} daemon
  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](xdg-utils.md "xdg-utils-1.2.1"){accesskey="p"}

    xdg-utils-1.2.1

-   [Next](../multimedia/multimedia.md "Multimedia"){accesskey="n"}

    Multimedia

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
