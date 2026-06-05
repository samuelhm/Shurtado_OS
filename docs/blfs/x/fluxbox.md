<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](wm.md "Window Managers")

    Window Managers

-   [Next](icewm.md "IceWM-4.0.0")

    IceWM-4.0.0

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Fluxbox-1.3.7 {#fluxbox-1.3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fluxbox {#introduction-to-fluxbox}

The <span class="application">Fluxbox</span> package contains a window manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/fluxbox/fluxbox-1.3.7.tar.xz">https://downloads.sourceforge.net/fluxbox/fluxbox-1.3.7.tar.xz</a>

-   Download MD5 sum: b44afd10ee1e64624c23115aa51dcd55

-   Download size: 772 KB

-   Estimated disk space required: 101 MB

-   Estimated build time: 0.9 SBU
</div>

### Fluxbox Dependencies

#### Required

<a class="xref" href="installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>

#### Optional

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (runtime), <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a>, and <a class="xref" href="imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a> (if you wish to use other image formats in addition to XPM)
</div>

<div class="installation" lang="en">
## Installation of Fluxbox {#installation-of-fluxbox}

First, fix a build failure when building with gcc-11.1 and later:

```bash
sed -i '/text_prop.value > 0/s/>/!=/' util/fluxbox-remote.cc
```

Install <span class="application">Fluxbox</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not have a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring Fluxbox {#configuring-fluxbox}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.fluxbox/init</code>, <code class="filename">~/.fluxbox/keys</code>, and <code class="filename">~/.fluxbox/menu</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If <span class="application">Fluxbox</span> is the only Window Manager you want to use, you can start it with an <code class="filename">.xinitrc</code> file in your home folder. Be sure to backup your current <code class="filename">.xinitrc</code> before proceeding.

```bash
echo startfluxbox > ~/.xinitrc
```

Or alternatively, if you use a login manager like <a class="xref" href="gdm.md" title="GDM-50.1">GDM-50.1</a> or <a class="xref" href="lightdm.md" title="lightdm-1.32.0">lightdm-1.32.0</a>, and would like to be able to choose <span class="application">Fluxbox</span> at the login prompt, create a <code class="filename">fluxbox.desktop</code> file. As <code class="systemitem">root</code>:

```bash
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

If you didn't install <a class="xref" href="gdm.md" title="GDM-50.1">GDM-50.1</a> or <a class="xref" href="lightdm.md" title="lightdm-1.32.0">lightdm-1.32.0</a> in <code class="filename">/usr</code>, then change that command to fit the prefix you chose.

Now create the <span class="application">Fluxbox</span> configuration files:

```bash
mkdir -v ~/.fluxbox &&
cp -v /usr/share/fluxbox/init ~/.fluxbox/init &&
cp -v /usr/share/fluxbox/keys ~/.fluxbox/keys
```

To generate the application menu, first you may wish to run <span class="command"><strong>fluxbox-generate_menu -h</strong></span>, in order to choose any *`<user_options>`*, then issue:

```bash
cd ~/.fluxbox &&
fluxbox-generate_menu <user_options>
```

Alternately, copy a pregenerated menu:

```bash
cp -v /usr/share/fluxbox/menu ~/.fluxbox/menu
```

Menu items are added by editing <code class="filename">~/.fluxbox/menu</code>. The syntax is explained on the <span class="command"><strong>fluxbox</strong></span> man page.

If you want to use an image as your desktop background, copy the theme you like into <code class="filename">~/.fluxbox</code>. Then add a line to make it use the correct image. In the following command, change *`<theme>`* for the name of the theme you want and change *`</path/to/nice/image.ext>`* to point to the actual image you want to use, where *`ext`* must be <code class="literal">xpm</code>, if <a class="xref" href="imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a> is not installed to allow other image formats.

```bash
cp -r /usr/share/fluxbox/styles/<theme> ~/.fluxbox/theme &&

sed -i 's,\(session.styleFile:\).*,\1 ~/.fluxbox/theme,' ~/.fluxbox/init &&

[ -f ~/.fluxbox/theme ] &&
echo "background.pixmap: </path/to/nice/image.ext>" >> ~/.fluxbox/theme ||
[ -d ~/.fluxbox/theme ] &&
echo "background.pixmap: </path/to/nice/image.ext>" >> ~/.fluxbox/theme/theme.cfg
```

In some locales the font specified in the theme may not contain the needed characters. This results in menus with blank items. You can fix this by editing <code class="filename">~/.fluxbox/theme</code> with a text editor and altering it so that it names a suitable font.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fluxbox, fbsetbg, fbsetroot, fluxbox-generate_menu, startfluxbox, fbrun, fluxbox-remote, and fluxbox-update_configs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/fluxbox and \~/.fluxbox</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fluxbox-prog"></a><span class="command"><span class="term"><strong>fluxbox</strong></span></span>                            is a window manager for <span class="application">X11</span> based on <span class="application">Blackbox</span> 0.61.0
  <a id="fbsetbg"></a><span class="command"><span class="term"><strong>fbsetbg</strong></span></span>                                 is a utility that sets the background image. It requires one of the following at runtime: <span class="command"><strong>Esetroot</strong></span>, <span class="command"><strong>wmsetbg</strong></span>, <span class="command"><a class="xref" href="../xsoft/feh.md#feh-prog"><strong>feh</strong></span></a>, <span class="command"><strong>hsetroot</strong></span>, <span class="command"><strong>chbg</strong></span>, <span class="command"><a class="xref" href="../general/imagemagick.md#display"><strong>display</strong></span></a>, <span class="command"><strong>qiv</strong></span>, <span class="command"><strong>xv</strong></span>, <span class="command"><strong>xsri</strong></span>, <span class="command"><strong>xli</strong></span>, or <span class="command"><strong>xsetbg</strong></span>. It also requires <span class="command"><a class="xref" href="../general/which.md#which-prog"><strong>which</strong></span></a> if <span class="command"><strong>Esetroot</strong></span> is found
  <a id="fbsetroot"></a><span class="command"><span class="term"><strong>fbsetroot</strong></span></span>                             is a utility to change root window appearance based on the <span class="application">Blackbox</span> application bsetroot
  <a id="fluxbox-generate_menu"></a><span class="command"><span class="term"><strong>fluxbox-generate_menu</strong></span></span>     is a utility that generates a menu by scanning your <code class="envar">PATH</code>
  <a id="startfluxbox"></a><span class="command"><span class="term"><strong>startfluxbox</strong></span></span>                       is a session startup script that allows for command executions prior to <span class="command"><strong>fluxbox</strong></span> starting
  <a id="fbrun"></a><span class="command"><span class="term"><strong>fbrun</strong></span></span>                                     displays a run dialog window
  <a id="fluxbox-remote"></a><span class="command"><span class="term"><strong>fluxbox-remote</strong></span></span>                   provides command line access to key commands for <span class="application">Fluxbox</span>
  <a id="fluxbox-update_configs"></a><span class="command"><span class="term"><strong>fluxbox-update_configs</strong></span></span>   use to manage config files (reload, update, test)
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wm.md "Window Managers")

    Window Managers

-   [Next](icewm.md "IceWM-4.0.0")

    IceWM-4.0.0

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
