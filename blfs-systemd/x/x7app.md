::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xbitmaps.md "xbitmaps-1.1.4"){accesskey="p"}

    xbitmaps-1.1.4

-   [Next](luit.md "luit-20250912"){accesskey="n"}

    luit-20250912

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg7-app}Xorg Applications {#xorg-applications .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xorg Applications {#introduction-to-xorg-applications .sect2}

The [Xorg]{.application} applications provide the expected applications available in previous X Window implementations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/app/](https://www.x.org/pub/individual/app/){.ulink}

-   Download size: 4.9 MB

-   Estimated disk space required: 48 MB

-   Estimated build time: 1.5 SBU (ignoring the time to download)
:::

### Xorg Applications Dependencies

#### Required

[libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}, [xbitmaps-1.1.4](xbitmaps.md "xbitmaps-1.1.4"){.xref}, and [xcb-util-0.4.1](xcb-util.md "xcb-util-0.4.1"){.xref}

#### Optional

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} and both [cairo-5c](https://www.cairographics.org/releases/){.ulink} and [Nickle](https://nickle.org/){.ulink} (only if you wish to try to run the undocumented [**xkeystone**]{.command} script).
:::::

::: {.sect2 lang="en"}
## Downloading Xorg Applications {#downloading-xorg-applications .sect2}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

``` userinput
cat > app-7.md5 << "EOF"
36936e5bcf04b982ea87b4556d082061  iceauth-1.0.11.tar.xz
83d943bbb0e3ab868cb0a7438e135544  mkfontscale-1.2.4.tar.xz
b9efe1d21615c474b22439d41981beef  sessreg-1.1.4.tar.xz
5a10223c3305f48bfb3b09e0a7a139d1  setxkbmap-1.3.5.tar.xz
6484cd8ee30354aaaf8f490988f5f6ef  smproxy-1.0.8.tar.xz
9cfdec89ad7bd86bcdfda150ae995955  xauth-1.1.5.tar.xz
37063ccf902fe3d55a90f387ed62fe1f  xcmsdb-1.0.7.tar.xz
f97e81b2c063f6ae9b18d4b4be7543f6  xcursorgen-1.0.9.tar.xz
700556957773d378fa16a65a4406be0a  xdpyinfo-1.4.0.tar.xz
830a54ef3ba338013e06a1b5b012b4bd  xdriinfo-1.0.8.tar.xz
6d2309b05267e31923b11ed2b83f33ae  xev-1.2.7.tar.xz
687e42aa5afaec37f14da3072651c635  xgamma-1.0.8.tar.xz
45c7e956941194e5f06a9c7307f5f971  xhost-1.0.10.tar.xz
8e4d14823b7cbefe1581c398c6ab0035  xinput-1.6.4.tar.xz
b8128ff6816897bd385ca437cd2886ee  xkbcomp-1.5.0.tar.xz
543c0535367ca30e0b0dbcfa90fefdf9  xkbevd-1.1.6.tar.xz
07483ddfe1d83c197df792650583ff20  xkbutils-1.0.6.tar.xz
294db9393a9d8e6613e1e3dd4fe0273f  xkill-1.0.7.tar.xz
da5b7a39702841281e1d86b7349a03ba  xlsatoms-1.1.4.tar.xz
cf2fc9e9d298c149253cfc77faaa475e  xlsclients-1.1.6.tar.xz
ba2dd3db3361e374fefe2b1c797c46eb  xmessage-1.0.7.tar.xz
0d66e07595ea083871048c4b805d8b13  xmodmap-1.0.11.tar.xz
ab6c9d17eb1940afcfb80a72319270ae  xpr-1.2.0.tar.xz
5ef4784b406d11bed0fdf07cc6fba16c  xprop-1.2.8.tar.xz
211abd989eef11708cc0a4978d101014  xrandr-1.5.4.tar.xz
c8629d5a0bc878d10ac49e1b290bf453  xrdb-1.2.2.tar.xz
55003733ef417db8fafce588ca74d584  xrefresh-1.1.0.tar.xz
18ff5cdff59015722431d568a5c0bad2  xset-1.2.5.tar.xz
fa9a24fe5b1725c52a4566a62dd0a50d  xsetroot-1.1.3.tar.xz
d698862e9cad153c5fefca6eee964685  xvinfo-1.1.5.tar.xz
b0081fb92ae56510958024242ed1bc23  xwd-1.0.9.tar.xz
c91201bc1eb5e7b38933be8d0f7f16a8  xwininfo-1.1.6.tar.xz
3e741db39b58be4fef705e251947993d  xwud-1.0.7.tar.xz
EOF
```

To download the needed files using [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, use the following commands:

``` userinput
mkdir app &&
cd app &&
grep -v '^#' ../app-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/app/ &&
md5sum -c ../app-7.md5
```
:::

::::: {.installation lang="en"}
## Installation of Xorg Applications {#installation-of-xorg-applications .sect2}

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

::: orderedlist
1.  Run the entire script as the root user (not recommended).

2.  Use the [**sudo**]{.command} command from the [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} package.

3.  Use [**su -c "command arguments"**]{.command} (quotes required) which will ask for the root password for every iteration of the loop.
:::

One way to handle this situation is to create a short [**bash**]{.command} function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

``` userinput
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
::::

First, start a subshell that will exit on error:

``` userinput
bash -e
```

Install all of the packages by running the following commands:

``` userinput
for package in $(grep -v '^#' ../app-7.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
     ./configure $XORG_CONFIG
     make
     as_root make install
  popd
  rm -rf $packagedir
done
```

Finally, exit the shell that was started earlier:

``` userinput
exit
```

Unless you installed the optional dependencies, remove an undocumented script which is reported to be broken ([**xkeystone**]{.command} provided by the [xrandr]{.application} package).

``` userinput
as_root rm -f $XORG_PREFIX/bin/xkeystone
```
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [iceauth, mkfontdir, mkfontscale, sessreg, setxkbmap, smproxy, xauth, xcmsdb, xcursorgen, xdpr, xdpyinfo, xdriinfo, xev, xgamma, xhost, xinput, xkbbell, xkbcomp, xkbevd, xkbvleds, xkbwatch, xkill, xlsatoms, xlsclients, xmessage, xmodmap, xpr, xprop, xrandr, xrdb, xrefresh, xset, xsetroot, xvinfo, xwd, xwininfo, and xwud]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------------
  []{#iceauth-x7}[[**iceauth**]{.command}]{.term}           is the ICE authority file utility
  []{#mkfontdir-x7}[[**mkfontdir**]{.command}]{.term}       creates an index of X font files in a directory
  []{#mkfontscale-x7}[[**mkfontscale**]{.command}]{.term}   creates an index of scalable font files for X
  []{#sessreg-x7}[[**sessreg**]{.command}]{.term}           manages utmp/wtmp entries for non-init clients
  []{#setxkbmap-x7}[[**setxkbmap**]{.command}]{.term}       sets the keyboard using the X Keyboard Extension
  []{#smproxy-x7}[[**smproxy**]{.command}]{.term}           is the Session Manager Proxy
  []{#xauth-x7}[[**xauth**]{.command}]{.term}               is the X authority file utility
  []{#xcmsdb-x7}[[**xcmsdb**]{.command}]{.term}             is the Device Color Characterization utility for the X Color Management System
  []{#xcursorgen-x7}[[**xcursorgen**]{.command}]{.term}     creates an X cursor file from a collection of PNG images
  []{#xdpr-x7}[[**xdpr**]{.command}]{.term}                 dumps an X window directly to a printer
  []{#xdpyinfo-x7}[[**xdpyinfo**]{.command}]{.term}         is a display information utility for X
  []{#xdriinfo-x7}[[**xdriinfo**]{.command}]{.term}         queries configuration information of DRI drivers
  []{#xev-x7}[[**xev**]{.command}]{.term}                   prints contents of X events
  []{#xgamma-x7}[[**xgamma**]{.command}]{.term}             alters a monitor's gamma correction through the X server
  []{#xhost-x7}[[**xhost**]{.command}]{.term}               is a server access control program for X
  []{#xinput-x7}[[**xinput**]{.command}]{.term}             is a utility to configure and test X input devices
  []{#xkbbell-x7}[[**xkbbell**]{.command}]{.term}           is an XKB utility program that raises a bell event
  []{#xkbcomp-x7}[[**xkbcomp**]{.command}]{.term}           compiles an XKB keyboard description
  []{#xkbevd-x7}[[**xkbevd**]{.command}]{.term}             is the XKB event daemon
  []{#xkbvleds-x7}[[**xkbvleds**]{.command}]{.term}         shows the XKB status of keyboard LEDs
  []{#xkbwatch-x7}[[**xkbwatch**]{.command}]{.term}         monitors modifier keys and LEDs
  []{#xkill-x7}[[**xkill**]{.command}]{.term}               kills a client by its X resource
  []{#xlsatoms-x7}[[**xlsatoms**]{.command}]{.term}         lists interned atoms defined on the server
  []{#xlsclients-x7}[[**xlsclients**]{.command}]{.term}     lists client applications running on a display
  []{#xmessage-x7}[[**xmessage**]{.command}]{.term}         displays a message or query in a window
  []{#xmodmap-x7}[[**xmodmap**]{.command}]{.term}           is a utility for modifying keymaps and pointer button mappings in X
  []{#xpr-x7}[[**xpr**]{.command}]{.term}                   prints an X window dump
  []{#xprop-x7}[[**xprop**]{.command}]{.term}               is a property displayer for X
  []{#xrandr-x7}[[**xrandr**]{.command}]{.term}             is a primitive command line interface to RandR extension
  []{#xrdb-x7}[[**xrdb**]{.command}]{.term}                 is the X server resource database utility
  []{#xrefresh-x7}[[**xrefresh**]{.command}]{.term}         refreshes all or part of an X screen
  []{#xset-x7}[[**xset**]{.command}]{.term}                 is the user preference utility for X
  []{#xsetroot-x7}[[**xsetroot**]{.command}]{.term}         is the root window parameter setting utility for X
  []{#xvinfo-x7}[[**xvinfo**]{.command}]{.term}             prints out X-Video extension adaptor information
  []{#xwd-x7}[[**xwd**]{.command}]{.term}                   dumps an image of an X window
  []{#xwininfo-x7}[[**xwininfo**]{.command}]{.term}         is a window information utility for X
  []{#xwud-x7}[[**xwud**]{.command}]{.term}                 is an image displayer for X
  --------------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xbitmaps.md "xbitmaps-1.1.4"){accesskey="p"}

    xbitmaps-1.1.4

-   [Next](luit.md "luit-20250912"){accesskey="n"}

    luit-20250912

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
