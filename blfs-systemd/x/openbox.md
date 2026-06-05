::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](icewm.md "IceWM-4.0.0"){accesskey="p"}

    IceWM-4.0.0

-   [Next](icons.md "Icons"){accesskey="n"}

    Icons

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openbox}openbox-3.6.1 {#openbox-3.6.1 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to openbox {#introduction-to-openbox .sect2}

[Openbox]{.application} is a highly configurable desktop window manager with extensive standards support. It allows you to control almost every aspect of how you interact with your desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz](http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz){.ulink}

-   Download MD5 sum: b72794996c6a3ad94634727b95f9d204

-   Download size: 944 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.3 SBU
:::

### Additional Download

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/openbox-3.6.1-py3-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/openbox-3.6.1-py3-1.patch){.ulink}
:::

### Openbox Dependencies

#### Required

[a graphical environment](installing.md "Chapter 24. Graphical Environments"){.xref} and [Pango-1.57.1](pango.md "Pango-1.57.1"){.xref} (compiled with support for libXft)

#### Optional

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} (runtime), [imlib2-1.12.6](imlib2.md "imlib2-1.12.6"){.xref} (to enable icons in the right click menu), [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} (to show desktop backgrounds as seen in the Configuration Information section below), [PyXDG-0.28](../general/python-modules.md#pyxdg "PyXDG-0.28"){.xref}, [startup-notification-0.12](startup-notification.md "startup-notification-0.12"){.xref}, and [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of Openbox {#installation-of-openbox .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If XORG_PREFIX is not `/usr`{.filename}, tell [**gcc**]{.command} about it:

``` userinput
export LIBRARY_PATH=$XORG_PREFIX/lib
```
:::

Update the package scripts to enable Python 3:

``` userinput
patch -Np1 -i ../openbox-3.6.1-py3-1.patch
```

Install [Openbox]{.application} by running the following commands:

``` userinput
autoreconf -fi &&
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/openbox-3.6.1 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

This package creates three `.desktop`{.filename} files in the `/usr/share/xsessions/`{.filename} directory. Two of these are not appropriate in a BLFS system, so prevent the extra files showing up as options in a display manager. As the `root`{.systemitem} user:

``` root
rm -v /usr/share/xsessions/openbox-{gnome,kde}.desktop
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc`*: This option puts [Openbox]{.application}'s configuration files in /etc/xdg/openbox instead of /usr/etc/xdg/openbox.

*`--docdir=/usr/share/doc/openbox-3.6.1`*: this puts a few files in a versioned directory in `/usr/share/doc`{.filename}.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

:::::: {.configuration lang="en"}
## Configuring Openbox {#configuring-openbox .sect2}

::: {.sect3 lang="en"}
### []{#openbox-config}Config Files {#config-files .sect3}

`/etc/xdg/openbox/autostart`{.filename}, `/etc/xdg/openbox/menu.xml`{.filename}, `/etc/xdg/openbox/rc.xml`{.filename}, `~/.config/openbox/autostart`{.filename}, `~/.config/openbox/menu.xml`{.filename} and `~/.config/openbox/rc.xml`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[Openbox]{.application}'s right click menu can be used to launch programs. The menu itself is configured with 2 files, `/etc/xdg/openbox/menu.xml`{.filename} and `~/.config/openbox/menu.xml`{.filename}. To make changes to the menu, copy /etc/xdg/openbox/menu.xml to \~/.config/openbox/menu.xml and edit it:

``` userinput
cp -rf /etc/xdg/openbox ~/.config
```

To have icons in your right click menu requires installing [imlib2-1.12.6](imlib2.md "imlib2-1.12.6"){.xref} before you install [Openbox]{.application}. To set an icon for an entry in the menu edit `~/.config/openbox/menu.xml`{.filename} and add an icon to the \<item\> tag like this:

``` screen
<item label="Mplayer" icon="/usr/share/pixmaps/mplayer.png">
```

Many other aspects of [Openbox]{.application}'s behavior are configured with `~/.config/openbox/rc.xml`{.filename} such as what keybindings are used to launch programs or which mouse button launches the main menu.

Details of the theme that [Openbox]{.application} applies to window decorations are configured in `~/.config/openbox/rc.xml`{.filename}. You can get a list of the available themes with the command:

``` userinput
ls -d /usr/share/themes/*/openbox-3 | sed 's#.*es/##;s#/o.*##'
```
:::

::: {.sect3 lang="en"}
### []{#openbox-init}Starting Openbox {#starting-openbox .sect3}

To automatically start [**openbox**]{.command} when you start [Xorg]{.application}:

``` userinput
echo openbox > ~/.xinitrc
```

If you want to set a background image to your desktop you can use [[**display**]{.command}](../general/imagemagick.md#display){.xref} and launch it from \~/.xinitrc just before openbox:

``` userinput
cat > ~/.xinitrc << "EOF"
display -backdrop -window root /path/to/beautiful/picture.jpeg
exec openbox
EOF
```

Or if you like a bit of variety, put a selection of images in a folder (in this example, the directory \~/.config/backgrounds) and choose one at random each time you [**xinit**]{.command}:

``` userinput
cat > ~/.xinitrc << "EOF"
# make an array which lists the pictures:
picture_list=(~/.config/backgrounds/*)
# create a random integer between 0 and the number of pictures:
random_number=$(( ${RANDOM} % ${#picture_list[@]} ))
# display the chosen picture:
display -backdrop -window root "${picture_list[${random_number}]}"
exec openbox
EOF
```

If you like to have the numlock key set when you start Xorg, install [Numlockx](https://ftp.debian.org/debian/pool/main/n/numlockx/numlockx_1.2.orig.tar.gz){.ulink} and add that to your xinitrc. Another useful application is [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}:

``` userinput
cat > ~/.xinitrc << "EOF"
. /etc/profile
picture_list=(~/.config/backgrounds/*)
random_number=$(( ${RANDOM} % ${#picture_list[*]} ))
display -backdrop -window root "${picture_list[${random_number}]}"
numlockx
eval $(dbus-launch --auto-syntax --exit-with-session)
lxpanel &
exec openbox
EOF
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gdm-control, gnome-panel-control, obxprop, openbox, openbox-gnome-session, openbox-kde-session and openbox-session]{.segbody}
:::

::: seg
**Installed Libraries:** [libobrender.so and libobt.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/openbox, /usr/include/openbox, /usr/share/doc/openbox-3.6.1 and /usr/share/themes.]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gdm-control}[[**gdm-control**]{.command}]{.term}                       is a command line tool to send signals to [GDM]{.application}
  []{#gnome-panel-control}[[**gnome-panel-control**]{.command}]{.term}       is a command line utility to invoke the [Gnome Panel]{.application} run dialog/menu
  []{#obxprop}[[**obxprop**]{.command}]{.term}                               is a tool for displaying the properties on an x window. It has a similar functionality to [**xprop**]{.command}, but allows you to see UTF-8 strings as text
  []{#openbox-prog}[[**openbox**]{.command}]{.term}                          is a standards compliant, highly configurable, window manager
  []{#openbox-gnome-session}[[**openbox-gnome-session**]{.command}]{.term}   is a script to launch an [Gnome]{.application} session with [Openbox]{.application} as your window manager from your `~/.xinitrc`{.filename}
  []{#openbox-kde-session}[[**openbox-kde-session**]{.command}]{.term}       is a script to launch an [KDE]{.application} session with [Openbox]{.application} as your window manager from your `~/.xinitrc`{.filename}
  []{#openbox-session}[[**openbox-session**]{.command}]{.term}               is a script to launch an [Openbox]{.application} session from your `~/.xinitrc`{.filename}
  []{#libobrender}[`libobrender.so`{.filename}]{.term}                       contains the functions used by [Openbox]{.application} for theme rendering
  []{#libobt}[`libobt.so`{.filename}]{.term}                                 is the [Openbox]{.application} toolkit library
  -------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](icewm.md "IceWM-4.0.0"){accesskey="p"}

    IceWM-4.0.0

-   [Next](icons.md "Icons"){accesskey="n"}

    Icons

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
