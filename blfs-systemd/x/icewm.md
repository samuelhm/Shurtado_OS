::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](fluxbox.md "Fluxbox-1.3.7"){accesskey="p"}

    Fluxbox-1.3.7

-   [Next](openbox.md "openbox-3.6.1"){accesskey="n"}

    openbox-3.6.1

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#icewm}IceWM-4.0.0 {#icewm-4.0.0 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to IceWM {#introduction-to-icewm .sect2}

[IceWM]{.application} is a window manager with the goals of speed, simplicity, and not getting in the user's way.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ice-wm/icewm/archive/4.0.0/icewm-4.0.0.tar.gz](https://github.com/ice-wm/icewm/archive/4.0.0/icewm-4.0.0.tar.gz){.ulink}

-   Download MD5 sum: acf29c16cd20dc0cc8585215a3e63e5f

-   Download size: 2.5 MB

-   Estimated disk space required: 53 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### IceWM Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [imlib2-1.12.6](imlib2.md "imlib2-1.12.6"){.xref}, and [a graphical environment](installing.md "Chapter 24. Graphical Environments"){.xref}

#### Optional

[asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} (for regenerating the HTML documentation), [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref} (for languages written right to left), [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libao-1.2.0](../multimedia/libao.md "Libao-1.2.0"){.xref}, [libsndfile-1.2.2](../multimedia/libsndfile.md "libsndfile-1.2.2"){.xref}, [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref} (for the experimental icesound program), and [gdk-pixbuf-xlib](https://gitlab.gnome.org/Archive/gdk-pixbuf-xlib){.ulink}
:::::

::: {.installation lang="en"}
## Installation of IceWM {#installation-of-icewm .sect2}

Install [IceWM]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CFGDIR=/etc               \
      -D ENABLE_LTO=ON             \
      -D DOCDIR=/usr/share/doc/icewm-4.0.0  \
      .. &&
make
```

This package does not have a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

This package creates two `.desktop`{.filename} files in the `/usr/share/xsessions/`{.filename} directory. Both are not needed in a BLFS system, so prevent the extra file showing up as an option in a display manager. As the `root`{.systemitem} user:

``` root
rm -v /usr/share/xsessions/icewm.desktop
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D ENABLE_LTO=ON`*: This option enables Link Time Optimization and is required for this package.
:::

:::::::: {.configuration lang="en"}
## Configuring IceWM {#configuring-icewm .sect2}

::: {.sect3 lang="en"}
### []{#icewm-config}Config Files {#config-files .sect3}

`~/.icewm/keys`{.filename}, `~/.icewm/menu`{.filename}, and `~/.icewm/preferences`{.filename}, and `~/.icewm/toolbar`{.filename}, and `~/.icewm/winoptions`{.filename}. The default versions are installed in `/usr/share/icewm/`{.filename} and will be used if you have not copied them to `~/.icewm`{.filename}.
:::

:::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

If [IceWM]{.application} is the only Window Manager you want to use, you can start it with an `.xinitrc`{.filename} file in your home folder. Be sure to backup your current `.xinitrc`{.filename} before proceeding.

``` userinput
echo icewm-session > ~/.xinitrc
```

Now create the [IceWM]{.application} configuration files:

``` userinput
mkdir -pv ~/.icewm                                      &&
cp -v /usr/share/icewm/keys ~/.icewm/keys               &&
cp -v /usr/share/icewm/menu ~/.icewm/menu               &&
cp -v /usr/share/icewm/preferences ~/.icewm/preferences &&
cp -v /usr/share/icewm/toolbar ~/.icewm/toolbar         &&
cp -v /usr/share/icewm/winoptions ~/.icewm/winoptions
```

You can now edit these files to meet your requirements. In particular, review the `preferences`{.filename} file. You can use [**Logout -\> Restart-IceWM**]{.command} on the main menu to load your changed preferences, but changes to the background only take effect when [IceWM]{.application} is started.

At this point you can [*either*]{.emphasis} modify the traditional menu files to suit your requirements, [*or*]{.emphasis} use the newer [**icewm-menu-fdo**]{.command} described later.

The syntax of the menus is explained in the help files, which you can access by running [**help**]{.command} from the menu, but some of the detail is out of date and the default selections in the menus (a few old applications on the main menu, everything else on the [**Programs**]{.command} menu) will benefit from being updated to meet your needs. The following examples are provided to encourage you to think about how you wish to organise your menus. Please note the following:

::: itemizedlist
-   If a program listed in the menu has not been installed, it will not appear when the menu is displayed. Similarly, if the program exists but the specified icon does not, no icon will be displayed in the menu.

-   The icons can be either `.xpm`{.filename} or `.png`{.filename} files, and there is no need to specify the extension. If the icon is located in the "library" (`/usr/share/icewm/icons`{.filename}) there is no need to specify the path.

-   Most programs are in sub-menus, and the main menu will always append entries for `windows, help, settings, logout`{.literal} at the bottom.

-   An icon for [firefox]{.application} was copied to the library directory and given a meaningful name. The icon for [xine]{.application} is `xine.xpm`{.filename} which was installed to a pixmap directory.

-   The default toolbar is not altered.
:::

If you wish to use this traditional method, there are more examples in previous releases of this book (e.g. BLFS-7.8).

[*Alternatively*]{.emphasis}, you can create a menu which conforms to the FDO Desktop Menu Specifications, where programs can be found because they have a .desktop file in the XDG_DATA_HOME or XDG_DATA_DIR directories. Unlike most windowmanagers, [icewm]{.application} does not search for programs when the menu is invoked, so if you take this route you will need to rerun the following command after installing or removing programs:

``` userinput
icewm-menu-fdo >~/.icewm/menu
```

If you wish to put icons on your desktop, you will need to install a program such as [rox-filer](https://sourceforge.net/projects/rox/files/rox/2.11/){.ulink} which provides a pinboard. If you do that you will no longer be able to access the menu by right-clicking on the desktop, you will have to use the [IceWM]{.application} button. To ensure that the [rox]{.application} pinboard is running, the following commands will put it in the startup file:

``` userinput
cat > ~/.icewm/startup << "EOF"
rox -p Default &
EOF &&
chmod +x ~/.icewm/startup
```

:::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

There are a number of keyboard shortcuts in [IceWM]{.application}:

::: itemizedlist
-   Ctrl + Alt + F*`N`* : go to `tty`{.filename}*`N`*.

-   Ctrl + Alt + *`N`* : go to desktop number *`N`*

-   Ctrl + Alt + Space : open a box on the taskbar where you can key in the name of an application and run it.
:::
::::
::::::
::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [icehelp, icesh, icesound, icewm, icewm-menu-fdo, icewm-menu-xrandr, icewm-session, icewm-set-gnomewm, icewmbg, and icewmhint]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/icewm-4.0.0, /usr/share/icewm and \~/.icewm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#icehelp}[[**icehelp**]{.command}]{.term}                       is used to display the html manual
  []{#icesh}[[**icesh**]{.command}]{.term}                           is a command-line window manager which can be used in `~/.icewm/startup`{.filename}
  []{#icesound}[[**icesound**]{.command}]{.term}                     plays audio files on GUI events raised by IceWM
  []{#icewm-prog}[[**icewm**]{.command}]{.term}                      is the window manager
  []{#icewm-menu-fdo}[[**icewm-menu-fdo**]{.command}]{.term}         can create a file in a format suitable for an IceWM menu, which lists those programs currently installed in a layout conforming to the FDO Desktop Menu Specifications
  []{#icewm-menu-xrandr}[[**icewm-menu-xrandr**]{.command}]{.term}   is a helper program used to manage multi-screen configurations
  []{#icewm-session}[[**icewm-session**]{.command}]{.term}           runs icewmbg, icewm, icewmtray, startup, shutdown (i.e. startup and shutdown scripts are run if installed)
  []{#icewm-set-gnomewm}[[**icewm-set-gnomewm**]{.command}]{.term}   is a script to set the [GNOME]{.application} window manager to [icewm]{.application} using [gconftool]{.application}
  []{#icewmbg}[[**icewmbg**]{.command}]{.term}                       is used to set the background, according to the various `DesktopBackground`{.literal} settings in the preferences
  []{#icewmhint}[[**icewmhint**]{.command}]{.term}                   is used internally to provide hints to the user
  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](fluxbox.md "Fluxbox-1.3.7"){accesskey="p"}

    Fluxbox-1.3.7

-   [Next](openbox.md "openbox-3.6.1"){accesskey="n"}

    openbox-3.6.1

-   [Up](wm.md "Chapter 27. Window Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
