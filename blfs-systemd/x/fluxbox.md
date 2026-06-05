::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](wm.md "Window Managers"){accesskey="p"}

    Window Managers

-   [Next](icewm.md "IceWM-4.0.0"){accesskey="n"}

    IceWM-4.0.0

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fluxbox}Fluxbox-1.3.7 {#fluxbox-1.3.7 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Fluxbox {#introduction-to-fluxbox .sect2}

The [Fluxbox]{.application} package contains a window manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/fluxbox/fluxbox-1.3.7.tar.xz](https://downloads.sourceforge.net/fluxbox/fluxbox-1.3.7.tar.xz){.ulink}

-   Download MD5 sum: b44afd10ee1e64624c23115aa51dcd55

-   Download size: 772 KB

-   Estimated disk space required: 101 MB

-   Estimated build time: 0.9 SBU
:::

### Fluxbox Dependencies

#### Required

[a graphical environment](installing.md "Chapter 24. Graphical Environments"){.xref}

#### Optional

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} (runtime), [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref}, and [imlib2-1.12.6](imlib2.md "imlib2-1.12.6"){.xref} (if you wish to use other image formats in addition to XPM)
:::::

::: {.installation lang="en"}
## Installation of Fluxbox {#installation-of-fluxbox .sect2}

First, fix a build failure when building with gcc-11.1 and later:

``` userinput
sed -i '/text_prop.value > 0/s/>/!=/' util/fluxbox-remote.cc
```

Install [Fluxbox]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not have a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::: {.configuration lang="en"}
## Configuring Fluxbox {#configuring-fluxbox .sect2}

::: {.sect3 lang="en"}
### []{#fluxbox-config}Config Files {#config-files .sect3}

`~/.fluxbox/init`{.filename}, `~/.fluxbox/keys`{.filename}, and `~/.fluxbox/menu`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

If [Fluxbox]{.application} is the only Window Manager you want to use, you can start it with an `.xinitrc`{.filename} file in your home folder. Be sure to backup your current `.xinitrc`{.filename} before proceeding.

``` userinput
echo startfluxbox > ~/.xinitrc
```

Or alternatively, if you use a login manager like [GDM-50.1](gdm.md "GDM-50.1"){.xref} or [lightdm-1.32.0](lightdm.md "lightdm-1.32.0"){.xref}, and would like to be able to choose [Fluxbox]{.application} at the login prompt, create a `fluxbox.desktop`{.filename} file. As `root`{.systemitem}:

``` root
mkdir -pv /usr/share/xsessions &&
cat > /usr/share/xsessions/fluxbox.desktop << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=Fluxbox
Comment=This session logs you into Fluxbox
Exec=startfluxbox
Type=Application
EOF
```

If you didn't install [GDM-50.1](gdm.md "GDM-50.1"){.xref} or [lightdm-1.32.0](lightdm.md "lightdm-1.32.0"){.xref} in `/usr`{.filename}, then change that command to fit the prefix you chose.

Now create the [Fluxbox]{.application} configuration files:

``` userinput
mkdir -v ~/.fluxbox &&
cp -v /usr/share/fluxbox/init ~/.fluxbox/init &&
cp -v /usr/share/fluxbox/keys ~/.fluxbox/keys
```

To generate the application menu, first you may wish to run [**fluxbox-generate_menu -h**]{.command}, in order to choose any *`<user_options>`*, then issue:

``` userinput
cd ~/.fluxbox &&
fluxbox-generate_menu <user_options>
```

Alternately, copy a pregenerated menu:

``` userinput
cp -v /usr/share/fluxbox/menu ~/.fluxbox/menu
```

Menu items are added by editing `~/.fluxbox/menu`{.filename}. The syntax is explained on the [**fluxbox**]{.command} man page.

If you want to use an image as your desktop background, copy the theme you like into `~/.fluxbox`{.filename}. Then add a line to make it use the correct image. In the following command, change *`<theme>`* for the name of the theme you want and change *`</path/to/nice/image.ext>`* to point to the actual image you want to use, where *`ext`* must be `xpm`{.literal}, if [imlib2-1.12.6](imlib2.md "imlib2-1.12.6"){.xref} is not installed to allow other image formats.

``` userinput
cp -r /usr/share/fluxbox/styles/<theme> ~/.fluxbox/theme &&

sed -i 's,\(session.styleFile:\).*,\1 ~/.fluxbox/theme,' ~/.fluxbox/init &&

[ -f ~/.fluxbox/theme ] &&
echo "background.pixmap: </path/to/nice/image.ext>" >> ~/.fluxbox/theme ||
[ -d ~/.fluxbox/theme ] &&
echo "background.pixmap: </path/to/nice/image.ext>" >> ~/.fluxbox/theme/theme.cfg
```

In some locales the font specified in the theme may not contain the needed characters. This results in menus with blank items. You can fix this by editing `~/.fluxbox/theme`{.filename} with a text editor and altering it so that it names a suitable font.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fluxbox, fbsetbg, fbsetroot, fluxbox-generate_menu, startfluxbox, fbrun, fluxbox-remote, and fluxbox-update_configs]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/fluxbox and \~/.fluxbox]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#fluxbox-prog}[[**fluxbox**]{.command}]{.term}                            is a window manager for [X11]{.application} based on [Blackbox]{.application} 0.61.0
  []{#fbsetbg}[[**fbsetbg**]{.command}]{.term}                                 is a utility that sets the background image. It requires one of the following at runtime: [**Esetroot**]{.command}, [**wmsetbg**]{.command}, [[**feh**]{.command}](../xsoft/feh.md#feh-prog){.xref}, [**hsetroot**]{.command}, [**chbg**]{.command}, [[**display**]{.command}](../general/imagemagick.md#display){.xref}, [**qiv**]{.command}, [**xv**]{.command}, [**xsri**]{.command}, [**xli**]{.command}, or [**xsetbg**]{.command}. It also requires [[**which**]{.command}](../general/which.md#which-prog){.xref} if [**Esetroot**]{.command} is found
  []{#fbsetroot}[[**fbsetroot**]{.command}]{.term}                             is a utility to change root window appearance based on the [Blackbox]{.application} application bsetroot
  []{#fluxbox-generate_menu}[[**fluxbox-generate_menu**]{.command}]{.term}     is a utility that generates a menu by scanning your `PATH`{.envar}
  []{#startfluxbox}[[**startfluxbox**]{.command}]{.term}                       is a session startup script that allows for command executions prior to [**fluxbox**]{.command} starting
  []{#fbrun}[[**fbrun**]{.command}]{.term}                                     displays a run dialog window
  []{#fluxbox-remote}[[**fluxbox-remote**]{.command}]{.term}                   provides command line access to key commands for [Fluxbox]{.application}
  []{#fluxbox-update_configs}[[**fluxbox-update_configs**]{.command}]{.term}   use to manage config files (reload, update, test)
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](wm.md "Window Managers"){accesskey="p"}

    Window Managers

-   [Next](icewm.md "IceWM-4.0.0"){accesskey="n"}

    IceWM-4.0.0

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
