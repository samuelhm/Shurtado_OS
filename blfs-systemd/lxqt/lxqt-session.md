::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0"){accesskey="p"}

    lxqt-openssh-askpass-2.4.0

-   [Next](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1"){accesskey="n"}

    lxqt-wayland-session-0.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-session}lxqt-session-2.4.0 {#lxqt-session-2.4.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-session {#introduction-to-lxqt-session .sect2}

The [lxqt-session]{.application} package contains the default session manager for [LXQt]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-session/releases/download/2.4.0/lxqt-session-2.4.0.tar.xz](https://github.com/lxqt/lxqt-session/releases/download/2.4.0/lxqt-session-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 42a340dbb742c6afb872cb3bd5a6eeda

-   Download size: 220 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.5 SBU
:::

### lxqt-session Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, [qtxdg-tools-4.4.0](qtxdg-tools.md "qtxdg-tools-4.4.0"){.xref}, and [Xdg-user-dirs-0.20](../general/xdg-user-dirs.md "Xdg-user-dirs-0.20"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-session {#installation-of-lxqt-session .sect2}

Install [lxqt-session]{.application} by running the following commands:

``` userinput
sed -e '/TryExec/s|=|=/usr/bin/|' \
    -i xsession/lxqt.desktop.in &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
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

[**sed -e '/TryExec/s\|=\|='/usr'/bin/\|' -i xsessions/lxqt.desktop.in**]{.command}: If you are using a display manager, the full path of the [“[TryExec]{.quote}”]{.quote} directive has to be given so that the [LXQt]{.application} desktop will appear in the sessions list.
:::

::: {.configuration lang="en"}
## Configuring lxqt-session {#configuring-lxqt-session .sect2}

Window Managers other than [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref} may be used, e.g. [Xfwm4-4.20.0](../xfce/xfwm4.md "Xfwm4-4.20.0"){.xref}. Please note that [IceWM-4.0.0](../x/icewm.md "IceWM-4.0.0"){.xref} is not a good substitute. [Fluxbox]{.application} does work, although in this context (with [lxqt-config-2.4.0](lxqt-config.md "lxqt-config-2.4.0"){.xref}), [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref} is better. The configuration file `/usr/share/lxqt/windowmanagers.conf`{.filename} comes with many examples of Window Managers and the ones which are installed will appear in a drop down list of [**lxqt-config-session**]{.command}. For the ones not included in `/usr/share/lxqt/windowmanagers.conf`{.filename}, you can use [**lxqt-config-session**]{.command}'s "search" button, e.g. for [Fluxbox-1.3.7](../x/fluxbox.md "Fluxbox-1.3.7"){.xref}, navigating through the file system until you can choose [**fluxbox**]{.command}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lxqt-config-session, lxqt-leave, lxqt-session, and startlxqt]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/translations/lxqt-{leave,config-session,session}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------------- ---------------------------------------------------------------
  []{#lxqt-config-session-prog}[[**lxqt-config-session**]{.command}]{.term}   is a GUI configuration tool for [**lxqt-session**]{.command}
  []{#lxqt-leave-prog}[[**lxqt-leave**]{.command}]{.term}                     is a graphical dialog to terminate the session
  []{#lxqt-session-prog}[[**lxqt-session**]{.command}]{.term}                 is a lightweight X session manager
  []{#startlxqt}[[**startlxqt**]{.command}]{.term}                            is used to start the desktop session for [LXQt]{.application}
  --------------------------------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0"){accesskey="p"}

    lxqt-openssh-askpass-2.4.0

-   [Next](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1"){accesskey="n"}

    lxqt-wayland-session-0.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
