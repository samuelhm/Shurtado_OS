::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](inkscape.md "Inkscape-1.4.4"){accesskey="p"}

    Inkscape-1.4.4

-   [Next](thunderbird.md "Thunderbird-140.11.0esr"){accesskey="n"}

    Thunderbird-140.11.0esr

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rxvt-unicode}rxvt-unicode-9.31 {#rxvt-unicode-9.31 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to rxvt-unicode {#introduction-to-rxvt-unicode .sect2}

[rxvt-unicode]{.application} is a clone of the terminal emulator [rxvt]{.application}, an X Window System terminal emulator which includes support for XFT and Unicode.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please be aware that [rxvt-unicode]{.application} is affected by an issue in [perl]{.application} where the SIGFPE handler is set to SIG_IGN (i.e. the signal is ignored). If you are building an LFS system from within [**urxvt**]{.command} and running the test suites, tests in [bash]{.application} which test raising this signal will fail.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.31.tar.bz2](http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.31.tar.bz2){.ulink}

-   Download MD5 sum: 3d0ec83705c9b9ff301a4b9965b3cd9f

-   Download size: 860 KB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
:::

### rxvt-unicode Dependencies

#### Required

[libptytty-2.0](../general/libptytty.md "libptytty-2.0"){.xref} and [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}

#### Optional

[gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref} (for background images) and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}
::::::

::: {.installation lang="en"}
## Installation of rxvt-unicode {#installation-of-rxvt-unicode .sect2}

Install [rxvt-unicode]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --enable-everything &&
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

*`--enable-everything`*: Add support for all non-multichoice options. Details about the different options can be found in the file `README.configure`{.filename}.

`--disable-xft`{.option}: Remove support for Xft fonts.

`--disable-perl`{.option}: Disable the embedded [Perl]{.application} interpreter.

`--disable-afterimage`{.option}: Remove support for libAfterImage.
:::

::: {.configuration lang="en"}
## Configuring rxvt-unicode {#configuring-rxvt-unicode .sect2}

The [rxvt-unicode]{.application} terminal emulator uses the resource class `URxvt`{.classname} and the resource name `urxvt`{.classname}. You can add X resource definitions to a user's `~/.Xresources`{.filename} or `~/.Xdefaults`{.filename} files or to the system-wide `/etc/X11/app-defaults/URxvt`{.filename} file. The following example will load the `matcher`{.classname} [Perl]{.application} extension (assuming [Perl]{.application} support wasn't disabled), which enables a left button click to open an underlined URL in the specified browser, sets a background and foreground color and loads an Xft font (as the `root`{.systemitem} user):

``` root
cat >> /etc/X11/app-defaults/URxvt << "EOF"
! Use the specified colour as the windows background colour [default white]
URxvt*background: black

! Use the specified colour as the windows foreground colour [default black]
URxvt*foreground: yellow

! Select the fonts to be used. This is a comma separated list of font names
URxvt*font: xft:Monospace:pixelsize=18

! Comma-separated list(s) of perl extension scripts (default: "default")
URxvt*perl-ext: matcher

! Specifies the program to be started with a URL argument. Used by
URxvt*url-launcher: firefox

! When clicked with the mouse button specified in the "matcher.button" resource
! (default 2, or middle), the program specified in the "matcher.launcher"
! resource (default, the "url-launcher" resource, "sensible-browser") will be
! started with the matched text as first argument.
! Below, default modified to mouse left button.
URxvt*matcher.button:     1
EOF
```

In order to view the defined X resources, issue:

``` userinput
xrdb -query
```

In order to add the modifications of the new user configuration file, keeping previously X configurations (of course, unless you are changing any on previously define), issue:

``` userinput
xrdb -merge ~/.Xresources
```

The [rxvt-unicode]{.application} application can also run in a daemon mode, which makes it possible to open multiple terminal windows within the same process. The [**urxvtc**]{.command} client then connects to the [**urxvtd**]{.command} daemon and requests a new terminal window. Use this option with caution. If the daemon crashes, all the running processes in the terminal windows are terminated.

You can start the [**urxvtd**]{.command} daemon in the system or personal startup [**X**]{.command} session script (e.g., `~/.xinitrc`{.filename}) by adding the following lines near the top of the script:

``` userinput
# Start the urxvtd daemon
urxvtd -q -f -o &
```

For more information, examine the [**urxvt**]{.command}, [**urxvtd**]{.command}, [**urxvtc**]{.command}, and `urxvtperl`{.filename} man pages.

If you use a Desktop Environment, a menu entry can be included, issuing, as the `root`{.systemitem} user:

``` root
cat > /usr/share/applications/urxvt.desktop << "EOF" &&
[Desktop Entry]
Encoding=UTF-8
Name=Rxvt-Unicode Terminal
Comment=Use the command line
GenericName=Terminal
Exec=urxvt
Terminal=false
Type=Application
Icon=utilities-terminal
Categories=GTK;Utility;TerminalEmulator;
#StartupNotify=true
Keywords=console;command line;execute;
EOF

update-desktop-database -q
```

For that, you need [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} and at least one of [gnome-icon-theme-3.12.0](../x/gnome-icon-theme.md "gnome-icon-theme-3.12.0"){.xref}, [oxygen-icons-6.1.0](../x/oxygen-icons.md "oxygen-icons-6.1.0"){.xref} and [lxde-icon-theme-0.5.1](../x/lxde-icon-theme.md "lxde-icon-theme-0.5.1"){.xref}. Uncomment the line with [“[StartupNotify=true]{.quote}”]{.quote} if [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref} is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [urxvt, urxvtd, and urxvtc]{.segbody}
:::

::: seg
**Installed Libraries:** [Many [Perl]{.application} extensions located under `/usr/lib/urxvt/perl`{.filename}]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/urxvt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  []{#urxvt-bin}[[**urxvt**]{.command}]{.term}   is a terminal emulator for the X Window System
  []{#urxvtd}[[**urxvtd**]{.command}]{.term}     is the [**urxvt**]{.command} terminal daemon
  []{#urxvtc}[[**urxvtc**]{.command}]{.term}     controls the [**urxvtd**]{.command} daemon
  ---------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](inkscape.md "Inkscape-1.4.4"){accesskey="p"}

    Inkscape-1.4.4

-   [Next](thunderbird.md "Thunderbird-140.11.0esr"){accesskey="n"}

    Thunderbird-140.11.0esr

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
