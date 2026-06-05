::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfwm4.md "Xfwm4-4.20.0"){accesskey="p"}

    Xfwm4-4.20.0

-   [Next](xfce-apps.md "Xfce Applications"){accesskey="n"}

    Xfce Applications

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-session}xfce4-session-4.20.4 {#xfce4-session-4.20.4 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Session {#introduction-to-xfce4-session .sect2}

[Xfce4 Session]{.application} is a session manager for [Xfce]{.application}. Its task is to save the state of your desktop (opened applications and their location) and restore it during a next startup. You can create several different sessions and choose one of them on startup.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.4.tar.bz2](https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.4.tar.bz2){.ulink}

-   Download MD5 sum: 048a3f838449dd75d358779b528b0a63

-   Download size: 1.2 MB

-   Estimated disk space required: 20 MB

-   Estimated build time: 0.1 SBU
:::

### Xfce4 Session Dependencies

#### Required

[libwnck-43.3](libwnck.md "libwnck-43.3"){.xref}, [libxfce4windowing-4.20.6](libxfce4windowing.md "libxfce4windowing-4.20.6"){.xref}, and [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [xfce4-screensaver](https://docs.xfce.org/apps/screensaver/start){.ulink} or [XScreenSaver-6.15](../xsoft/xscreensaver.md "XScreenSaver-6.15"){.xref}, [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref} and [polkit-gnome-0.105](../postlfs/polkit-gnome.md "polkit-gnome-0.105"){.xref}

#### Required Runtime

[Xfdesktop-4.20.2](xfdesktop.md "Xfdesktop-4.20.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Session {#installation-of-xfce4-session .sect2}

Install [Xfce4 Session]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --disable-legacy-sm &&
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

*`--disable-legacy-sm`*: This switch disables legacy session management which isn't necessary on modern system.
:::

::: {.configuration lang="en"}
## Configuring Xfce4 Session {#configuring-xfce4-session .sect2}

There are several optional run time dependencies for [Xfce4]{.application}: [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [hicolor-icon-theme-0.18](../x/hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}, [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}, and [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}

When building an [Xfce4]{.application} package, some configuration files are installed in `/usr/share/applications`{.filename}, `/usr/share/icons`{.filename}, and `/usr/share/mime`{.filename}. In order to use those files in your [Xfce4]{.application} session, you need to update various databases. Do that by running, as the `root`{.systemitem} user (you need to have the recommended dependencies installed):

``` root
update-desktop-database &&
update-mime-database /usr/share/mime
```
:::

::: {.starting lang="en"}
## Starting Xfce4 {#starting-xfce4 .sect2}

You can start [Xfce4]{.application} from a TTY using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, or from a graphical display manager, such as [lightdm-1.32.0](../x/lightdm.md "lightdm-1.32.0"){.xref}.

To start [Xfce4]{.application} using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, run the following commands:

``` userinput
cat > ~/.xinitrc << "EOF"
dbus-launch --exit-with-x11 startxfce4
EOF

startx
```

The X session starts on the first unused virtual terminal, normally vt7. You can switch to another vt[*n*]{.emphasis} simultaneously pressing the keys Ctrl-Alt-F[*n*]{.emphasis} ([*n*]{.emphasis}=1, 2, ...). To switch back to the X session, normally started at vt7, use Ctrl-Alt-F7. The vt where the command [**startx**]{.command} was executed will display many messages, including X starting messages, applications automatically started with the session, and eventually, some warning and error messages. You may prefer to redirect those messages to a log file, which not only will keep the initial vt uncluttered, but can also be used for debugging purposes. This can be done starting X with:

``` userinput
startx &> ~/.x-session-errors
```

When shutting down or rebooting, the shutdown messages appear on the vt where X was running. If you wish to see those messages, simultaneously press keys Alt-F7 (assuming that X was running on vt7).
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [startxfce4, xfce4-session, xfce4-session-logout, xfce4-session-settings, and xflock4]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/xfce4/session]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------
  []{#startxfce4}[[**startxfce4**]{.command}]{.term}                           is a script responsible for starting an [Xfce]{.application} session.
  []{#xfce4-session-prog}[[**xfce4-session**]{.command}]{.term}                starts up the [Xfce]{.application} Desktop Environment
  []{#xfce4-session-logout}[[**xfce4-session-logout**]{.command}]{.term}       logs out from [Xfce]{.application}
  []{#xfce4-session-settings}[[**xfce4-session-settings**]{.command}]{.term}   is a [GTK+ 3]{.application} GUI which allows you to alter your preferences for your [Xfce Session]{.application}
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xfwm4.md "Xfwm4-4.20.0"){accesskey="p"}

    Xfwm4-4.20.0

-   [Next](xfce-apps.md "Xfce Applications"){accesskey="n"}

    Xfce Applications

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
