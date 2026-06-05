<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xbitmaps.md "xbitmaps-1.1.4")

    xbitmaps-1.1.4

-   [Next](luit.md "luit-20250912")

    luit-20250912

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xorg Applications {#xorg-applications}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xorg Applications {#introduction-to-xorg-applications}

The <span class="application">Xorg</span> applications provide the expected applications available in previous X Window implementations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/app/">https://www.x.org/pub/individual/app/</a>

-   Download size: 4.9 MB

-   Estimated disk space required: 48 MB

-   Estimated build time: 1.5 SBU (ignoring the time to download)
</div>

### Xorg Applications Dependencies

#### Required

<a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="xbitmaps.md" title="xbitmaps-1.1.4">xbitmaps-1.1.4</a>, and <a class="xref" href="xcb-util.md" title="xcb-util-0.4.1">xcb-util-0.4.1</a>

#### Optional

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> and both <a class="ulink" href="https://www.cairographics.org/releases/">cairo-5c</a> and <a class="ulink" href="https://nickle.org/">Nickle</a> (only if you wish to try to run the undocumented <span class="command"><strong>xkeystone</strong></span> script).
</div>

<div class="sect2" lang="en">
## Downloading Xorg Applications {#downloading-xorg-applications}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

```bash
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

To download the needed files using <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, use the following commands:

```bash
mkdir app &&
cd app &&
grep -v '^#' ../app-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/app/ &&
md5sum -c ../app-7.md5
```
</div>

<div class="installation" lang="en">
## Installation of Xorg Applications {#installation-of-xorg-applications}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

<div class="orderedlist">
1.  Run the entire script as the root user (not recommended).

2.  Use the <span class="command"><strong>sudo</strong></span> command from the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package.

3.  Use <span class="command"><strong>su -c "command arguments"</strong></span> (quotes required) which will ask for the root password for every iteration of the loop.
</div>

One way to handle this situation is to create a short <span class="command"><strong>bash</strong></span> function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

```bash
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
</div>

First, start a subshell that will exit on error:

```bash
bash -e
```

Install all of the packages by running the following commands:

```bash
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

```bash
exit
```

Unless you installed the optional dependencies, remove an undocumented script which is reported to be broken (<span class="command"><strong>xkeystone</strong></span> provided by the <span class="application">xrandr</span> package).

```bash
as_root rm -f $XORG_PREFIX/bin/xkeystone
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">iceauth, mkfontdir, mkfontscale, sessreg, setxkbmap, smproxy, xauth, xcmsdb, xcursorgen, xdpr, xdpyinfo, xdriinfo, xev, xgamma, xhost, xinput, xkbbell, xkbcomp, xkbevd, xkbvleds, xkbwatch, xkill, xlsatoms, xlsclients, xmessage, xmodmap, xpr, xprop, xrandr, xrdb, xrefresh, xset, xsetroot, xvinfo, xwd, xwininfo, and xwud</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------------
  <a id="iceauth-x7"></a><span class="command"><span class="term"><strong>iceauth</strong></span></span>           is the ICE authority file utility
  <a id="mkfontdir-x7"></a><span class="command"><span class="term"><strong>mkfontdir</strong></span></span>       creates an index of X font files in a directory
  <a id="mkfontscale-x7"></a><span class="command"><span class="term"><strong>mkfontscale</strong></span></span>   creates an index of scalable font files for X
  <a id="sessreg-x7"></a><span class="command"><span class="term"><strong>sessreg</strong></span></span>           manages utmp/wtmp entries for non-init clients
  <a id="setxkbmap-x7"></a><span class="command"><span class="term"><strong>setxkbmap</strong></span></span>       sets the keyboard using the X Keyboard Extension
  <a id="smproxy-x7"></a><span class="command"><span class="term"><strong>smproxy</strong></span></span>           is the Session Manager Proxy
  <a id="xauth-x7"></a><span class="command"><span class="term"><strong>xauth</strong></span></span>               is the X authority file utility
  <a id="xcmsdb-x7"></a><span class="command"><span class="term"><strong>xcmsdb</strong></span></span>             is the Device Color Characterization utility for the X Color Management System
  <a id="xcursorgen-x7"></a><span class="command"><span class="term"><strong>xcursorgen</strong></span></span>     creates an X cursor file from a collection of PNG images
  <a id="xdpr-x7"></a><span class="command"><span class="term"><strong>xdpr</strong></span></span>                 dumps an X window directly to a printer
  <a id="xdpyinfo-x7"></a><span class="command"><span class="term"><strong>xdpyinfo</strong></span></span>         is a display information utility for X
  <a id="xdriinfo-x7"></a><span class="command"><span class="term"><strong>xdriinfo</strong></span></span>         queries configuration information of DRI drivers
  <a id="xev-x7"></a><span class="command"><span class="term"><strong>xev</strong></span></span>                   prints contents of X events
  <a id="xgamma-x7"></a><span class="command"><span class="term"><strong>xgamma</strong></span></span>             alters a monitor's gamma correction through the X server
  <a id="xhost-x7"></a><span class="command"><span class="term"><strong>xhost</strong></span></span>               is a server access control program for X
  <a id="xinput-x7"></a><span class="command"><span class="term"><strong>xinput</strong></span></span>             is a utility to configure and test X input devices
  <a id="xkbbell-x7"></a><span class="command"><span class="term"><strong>xkbbell</strong></span></span>           is an XKB utility program that raises a bell event
  <a id="xkbcomp-x7"></a><span class="command"><span class="term"><strong>xkbcomp</strong></span></span>           compiles an XKB keyboard description
  <a id="xkbevd-x7"></a><span class="command"><span class="term"><strong>xkbevd</strong></span></span>             is the XKB event daemon
  <a id="xkbvleds-x7"></a><span class="command"><span class="term"><strong>xkbvleds</strong></span></span>         shows the XKB status of keyboard LEDs
  <a id="xkbwatch-x7"></a><span class="command"><span class="term"><strong>xkbwatch</strong></span></span>         monitors modifier keys and LEDs
  <a id="xkill-x7"></a><span class="command"><span class="term"><strong>xkill</strong></span></span>               kills a client by its X resource
  <a id="xlsatoms-x7"></a><span class="command"><span class="term"><strong>xlsatoms</strong></span></span>         lists interned atoms defined on the server
  <a id="xlsclients-x7"></a><span class="command"><span class="term"><strong>xlsclients</strong></span></span>     lists client applications running on a display
  <a id="xmessage-x7"></a><span class="command"><span class="term"><strong>xmessage</strong></span></span>         displays a message or query in a window
  <a id="xmodmap-x7"></a><span class="command"><span class="term"><strong>xmodmap</strong></span></span>           is a utility for modifying keymaps and pointer button mappings in X
  <a id="xpr-x7"></a><span class="command"><span class="term"><strong>xpr</strong></span></span>                   prints an X window dump
  <a id="xprop-x7"></a><span class="command"><span class="term"><strong>xprop</strong></span></span>               is a property displayer for X
  <a id="xrandr-x7"></a><span class="command"><span class="term"><strong>xrandr</strong></span></span>             is a primitive command line interface to RandR extension
  <a id="xrdb-x7"></a><span class="command"><span class="term"><strong>xrdb</strong></span></span>                 is the X server resource database utility
  <a id="xrefresh-x7"></a><span class="command"><span class="term"><strong>xrefresh</strong></span></span>         refreshes all or part of an X screen
  <a id="xset-x7"></a><span class="command"><span class="term"><strong>xset</strong></span></span>                 is the user preference utility for X
  <a id="xsetroot-x7"></a><span class="command"><span class="term"><strong>xsetroot</strong></span></span>         is the root window parameter setting utility for X
  <a id="xvinfo-x7"></a><span class="command"><span class="term"><strong>xvinfo</strong></span></span>             prints out X-Video extension adaptor information
  <a id="xwd-x7"></a><span class="command"><span class="term"><strong>xwd</strong></span></span>                   dumps an image of an X window
  <a id="xwininfo-x7"></a><span class="command"><span class="term"><strong>xwininfo</strong></span></span>         is a window information utility for X
  <a id="xwud-x7"></a><span class="command"><span class="term"><strong>xwud</strong></span></span>                 is an image displayer for X
  --------------------------------------------------------- --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xbitmaps.md "xbitmaps-1.1.4")

    xbitmaps-1.1.4

-   [Next](luit.md "luit-20250912")

    luit-20250912

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
