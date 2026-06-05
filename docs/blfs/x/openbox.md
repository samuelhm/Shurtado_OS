<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](icewm.md "IceWM-4.0.0")

    IceWM-4.0.0

-   [Next](icons.md "Icons")

    Icons

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# openbox-3.6.1 {#openbox-3.6.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to openbox {#introduction-to-openbox}

<span class="application">Openbox</span> is a highly configurable desktop window manager with extensive standards support. It allows you to control almost every aspect of how you interact with your desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz">http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz</a>

-   Download MD5 sum: b72794996c6a3ad94634727b95f9d204

-   Download size: 944 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.3 SBU
</div>

### Additional Download

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/openbox-3.6.1-py3-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/openbox-3.6.1-py3-1.patch</a>
</div>

### Openbox Dependencies

#### Required

<a class="xref" href="installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> and <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a> (compiled with support for libXft)

#### Optional

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (runtime), <a class="xref" href="imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a> (to enable icons in the right click menu), <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> (to show desktop backgrounds as seen in the Configuration Information section below), <a class="xref" href="../general/python-modules.md#pyxdg" title="PyXDG-0.28">PyXDG-0.28</a>, <a class="xref" href="startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>, and <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>
</div>

<div class="installation" lang="en">
## Installation of Openbox {#installation-of-openbox}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If XORG_PREFIX is not <code class="filename">/usr</code>, tell <span class="command"><strong>gcc</strong></span> about it:

```bash
export LIBRARY_PATH=$XORG_PREFIX/lib
```
</div>

Update the package scripts to enable Python 3:

```bash
patch -Np1 -i ../openbox-3.6.1-py3-1.patch
```

Install <span class="application">Openbox</span> by running the following commands:

```bash
autoreconf -fi &&
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/openbox-3.6.1 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

This package creates three <code class="filename">.desktop</code> files in the <code class="filename">/usr/share/xsessions/</code> directory. Two of these are not appropriate in a BLFS system, so prevent the extra files showing up as options in a display manager. As the <code class="systemitem">root</code> user:

```bash
rm -v /usr/share/xsessions/openbox-{gnome,kde}.desktop
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc`*: This option puts <span class="application">Openbox</span>'s configuration files in /etc/xdg/openbox instead of /usr/etc/xdg/openbox.

*`--docdir=/usr/share/doc/openbox-3.6.1`*: this puts a few files in a versioned directory in <code class="filename">/usr/share/doc</code>.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="configuration" lang="en">
## Configuring Openbox {#configuring-openbox}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/xdg/openbox/autostart</code>, <code class="filename">/etc/xdg/openbox/menu.xml</code>, <code class="filename">/etc/xdg/openbox/rc.xml</code>, <code class="filename">~/.config/openbox/autostart</code>, <code class="filename">~/.config/openbox/menu.xml</code> and <code class="filename">~/.config/openbox/rc.xml</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">Openbox</span>'s right click menu can be used to launch programs. The menu itself is configured with 2 files, <code class="filename">/etc/xdg/openbox/menu.xml</code> and <code class="filename">~/.config/openbox/menu.xml</code>. To make changes to the menu, copy /etc/xdg/openbox/menu.xml to \~/.config/openbox/menu.xml and edit it:

```bash
cp -rf /etc/xdg/openbox ~/.config
```

To have icons in your right click menu requires installing <a class="xref" href="imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a> before you install <span class="application">Openbox</span>. To set an icon for an entry in the menu edit <code class="filename">~/.config/openbox/menu.xml</code> and add an icon to the \<item\> tag like this:

```console
<item label="Mplayer" icon="/usr/share/pixmaps/mplayer.png">
```

Many other aspects of <span class="application">Openbox</span>'s behavior are configured with <code class="filename">~/.config/openbox/rc.xml</code> such as what keybindings are used to launch programs or which mouse button launches the main menu.

Details of the theme that <span class="application">Openbox</span> applies to window decorations are configured in <code class="filename">~/.config/openbox/rc.xml</code>. You can get a list of the available themes with the command:

```bash
ls -d /usr/share/themes/*/openbox-3 | sed 's#.*es/##;s#/o.*##'
```
</div>

<div class="sect3" lang="en">
### Starting Openbox {#starting-openbox}

To automatically start <span class="command"><strong>openbox</strong></span> when you start <span class="application">Xorg</span>:

```bash
echo openbox > ~/.xinitrc
```

If you want to set a background image to your desktop you can use <span class="command"><a class="xref" href="../general/imagemagick.md#display"><strong>display</strong></span></a> and launch it from \~/.xinitrc just before openbox:

```bash
cat > ~/.xinitrc << "EOF"
display -backdrop -window root /path/to/beautiful/picture.jpeg
exec openbox
EOF
```

Or if you like a bit of variety, put a selection of images in a folder (in this example, the directory \~/.config/backgrounds) and choose one at random each time you <span class="command"><strong>xinit</strong></span>:

```bash
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

If you like to have the numlock key set when you start Xorg, install <a class="ulink" href="https://ftp.debian.org/debian/pool/main/n/numlockx/numlockx_1.2.orig.tar.gz">Numlockx</a> and add that to your xinitrc. Another useful application is <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>:

```bash
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
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gdm-control, gnome-panel-control, obxprop, openbox, openbox-gnome-session, openbox-kde-session and openbox-session</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libobrender.so and libobt.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/openbox, /usr/include/openbox, /usr/share/doc/openbox-3.6.1 and /usr/share/themes.</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gdm-control"></a><span class="command"><span class="term"><strong>gdm-control</strong></span></span>                       is a command line tool to send signals to <span class="application">GDM</span>
  <a id="gnome-panel-control"></a><span class="command"><span class="term"><strong>gnome-panel-control</strong></span></span>       is a command line utility to invoke the <span class="application">Gnome Panel</span> run dialog/menu
  <a id="obxprop"></a><span class="command"><span class="term"><strong>obxprop</strong></span></span>                               is a tool for displaying the properties on an x window. It has a similar functionality to <span class="command"><strong>xprop</strong></span>, but allows you to see UTF-8 strings as text
  <a id="openbox-prog"></a><span class="command"><span class="term"><strong>openbox</strong></span></span>                          is a standards compliant, highly configurable, window manager
  <a id="openbox-gnome-session"></a><span class="command"><span class="term"><strong>openbox-gnome-session</strong></span></span>   is a script to launch an <span class="application">Gnome</span> session with <span class="application">Openbox</span> as your window manager from your <code class="filename">~/.xinitrc</code>
  <a id="openbox-kde-session"></a><span class="command"><span class="term"><strong>openbox-kde-session</strong></span></span>       is a script to launch an <span class="application">KDE</span> session with <span class="application">Openbox</span> as your window manager from your <code class="filename">~/.xinitrc</code>
  <a id="openbox-session"></a><span class="command"><span class="term"><strong>openbox-session</strong></span></span>               is a script to launch an <span class="application">Openbox</span> session from your <code class="filename">~/.xinitrc</code>
  <a id="libobrender"></a><span class="term"><code class="filename">libobrender.so</code></span>                       contains the functions used by <span class="application">Openbox</span> for theme rendering
  <a id="libobt"></a><span class="term"><code class="filename">libobt.so</code></span>                                 is the <span class="application">Openbox</span> toolkit library
  -------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](icewm.md "IceWM-4.0.0")

    IceWM-4.0.0

-   [Next](icons.md "Icons")

    Icons

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
