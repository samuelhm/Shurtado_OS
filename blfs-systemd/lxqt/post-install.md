::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](obconf-qt.md "obconf-qt-0.16.5"){accesskey="p"}

    obconf-qt-0.16.5

-   [Next](lxqt-apps.md "LXQt Applications"){accesskey="n"}

    LXQt Applications

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-post-install}LXQt Desktop Final Instructions {#lxqt-desktop-final-instructions .sect1}

::::::::::: {.sect1 lang="en"}
::: {.package lang="en"}
## Post-Install Instructions {#post-install-instructions .sect2}

Please follow these instructions before starting [LXQt]{.application} for the first time.

### Dependencies to Start LXQt

#### Required

[openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref}, or another window manager, such as [Xfwm4-4.20.0](../xfce/xfwm4.md "Xfwm4-4.20.0"){.xref}, or kwin from [Plasma-6.6.5](../kde/plasma-all.md "Building Plasma"){.xref}. Note that [IceWM-4.0.0](../x/icewm.md "IceWM-4.0.0"){.xref} is not suitable for LXQt.

#### Recommended

[breeze-icons-6.26.0](../x/breeze-icons.md "breeze-icons-6.26.0"){.xref} and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}

#### Optional

[lightdm-1.32.0](../x/lightdm.md "lightdm-1.32.0"){.xref} or another Display Manager, e.g. [sddm-0.21.0](../x/sddm.md "sddm-0.21.0"){.xref}, or [XScreenSaver-6.15](../xsoft/xscreensaver.md "XScreenSaver-6.15"){.xref}
:::

:::: {.configuration lang="en"}
## Final Configuration {#final-configuration .sect2}

::: {.sect3 lang="en"}
### []{#lxqt-final-updates}LXQt Final Database Updates {#lxqt-final-database-updates .sect3}

The desktop databases need to be created or updated at this point. Run the following commands as the `root`{.systemitem} user:

``` root
ldconfig                             &&
update-mime-database /usr/share/mime &&
xdg-icon-resource forceupdate        &&
update-desktop-database -q
```
:::
::::

::::: {.starting lang="en"}
## Starting LXQt {#starting-lxqt .sect2}

::: {.sect3 lang="en"}
### Starting LXQt Xorg {#starting-lxqt-xorg .sect3}

You can start [LXQt]{.application} from a TTY, using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, or by using a graphical display manager such as [lightdm-1.32.0](../x/lightdm.md "lightdm-1.32.0"){.xref}.

To start [LXQt]{.application} using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, run the following commands:

``` userinput
cat > ~/.xinitrc << "EOF"
exec startlxqt
EOF

startx
```

The X session starts on the first unused virtual terminal, normally vt1. You can switch to another vt[*n*]{.emphasis} by simultaneously pressing the keys Ctrl-Alt-F[*n*]{.emphasis} ([*n*]{.emphasis}=2, 3, ...). To switch back to the X session, normally started at vt1, use Ctrl-Alt-F1. The vt where the command [**startx**]{.command} was executed will display many messages, including X starting messages, applications automatically started with the session, and eventually, some warning and error messages, but these are hidden by the graphical interface. You may prefer to redirect those messages to a log file, which can be used for debugging purposes. This can be done starting X with:

``` userinput
startx &> ~/.x-session-errors
```
:::

::: {.sect3 lang="en"}
### Starting LXQt Wayland {#starting-lxqt-wayland .sect3}

To start the wayland version of LXQt, run:

``` userinput
startlxqtwayland
```
:::
:::::

:::: {.sect2 lang="en"}
## Initial Configuration {#initial-configuration .sect2}

When LXQt first starts, it will ask you for the window manager to use. To start, the BLFS editors recommend using [openbox]{.application}. At this point both the background and the panel will be black. Right clicking on the background will bring up a menu and selecting "Desktop Preferences" will allow you to change the background color or set a background image.

The panel will be at the bottom of the screen. Right clicking on the panel will bring up a menu that will allow you to customize the panel including adding widgets and setting the background color. The BLFS editors recommend installing, at a minimum, the Application Manager and Task Manager widgets.

After LXQt has started for the first time, the BLFS editors recommend going through the settings presented in the LXQt Configuration Center, which can be found under LXQt Settings in the Preferences menu of the application launcher.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The user configuration files will be created in the directory \$HOME/.config/lxqt/. To get widget icons to display properly, the lxqt.conf file may need to be manually edited to include the line "icon_theme=oxygen".
:::
::::
:::::::::::

::: navfooter
-   [Prev](obconf-qt.md "obconf-qt-0.16.5"){accesskey="p"}

    obconf-qt-0.16.5

-   [Next](lxqt-apps.md "LXQt Applications"){accesskey="n"}

    LXQt Applications

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
