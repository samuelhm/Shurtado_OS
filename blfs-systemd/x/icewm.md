<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 27. Window Managers

-   [Prev](fluxbox.md "Fluxbox-1.3.7")

    Fluxbox-1.3.7

-   [Next](openbox.md "openbox-3.6.1")

    openbox-3.6.1

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# IceWM-4.0.0 {#icewm-4.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to IceWM {#introduction-to-icewm}

<span class="application">IceWM</span> is a window manager with the goals of speed, simplicity, and not getting in the user's way.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ice-wm/icewm/archive/4.0.0/icewm-4.0.0.tar.gz">https://github.com/ice-wm/icewm/archive/4.0.0/icewm-4.0.0.tar.gz</a>

-   Download MD5 sum: acf29c16cd20dc0cc8585215a3e63e5f

-   Download size: 2.5 MB

-   Estimated disk space required: 53 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### IceWM Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a>, and <a class="xref" href="installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> (for regenerating the HTML documentation), <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a> (for languages written right to left), <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../multimedia/libao.md" title="Libao-1.2.0">libao-1.2.0</a>, <a class="xref" href="../multimedia/libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a> (for the experimental icesound program), and <a class="ulink" href="https://gitlab.gnome.org/Archive/gdk-pixbuf-xlib">gdk-pixbuf-xlib</a>
</div>

<div class="installation" lang="en">
## Installation of IceWM {#installation-of-icewm}

Install <span class="application">IceWM</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

This package creates two <code class="filename">.desktop</code> files in the <code class="filename">/usr/share/xsessions/</code> directory. Both are not needed in a BLFS system, so prevent the extra file showing up as an option in a display manager. As the <code class="systemitem">root</code> user:

```bash
rm -v /usr/share/xsessions/icewm.desktop
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D ENABLE_LTO=ON`*: This option enables Link Time Optimization and is required for this package.
</div>

<div class="configuration" lang="en">
## Configuring IceWM {#configuring-icewm}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.icewm/keys</code>, <code class="filename">~/.icewm/menu</code>, and <code class="filename">~/.icewm/preferences</code>, and <code class="filename">~/.icewm/toolbar</code>, and <code class="filename">~/.icewm/winoptions</code>. The default versions are installed in <code class="filename">/usr/share/icewm/</code> and will be used if you have not copied them to <code class="filename">~/.icewm</code>.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If <span class="application">IceWM</span> is the only Window Manager you want to use, you can start it with an <code class="filename">.xinitrc</code> file in your home folder. Be sure to backup your current <code class="filename">.xinitrc</code> before proceeding.

```bash
echo icewm-session > ~/.xinitrc
```

Now create the <span class="application">IceWM</span> configuration files:

```bash
mkdir -pv ~/.icewm                                      &&
cp -v /usr/share/icewm/keys ~/.icewm/keys               &&
cp -v /usr/share/icewm/menu ~/.icewm/menu               &&
cp -v /usr/share/icewm/preferences ~/.icewm/preferences &&
cp -v /usr/share/icewm/toolbar ~/.icewm/toolbar         &&
cp -v /usr/share/icewm/winoptions ~/.icewm/winoptions
```

You can now edit these files to meet your requirements. In particular, review the <code class="filename">preferences</code> file. You can use <span class="command"><strong>Logout -\> Restart-IceWM</strong></span> on the main menu to load your changed preferences, but changes to the background only take effect when <span class="application">IceWM</span> is started.

At this point you can <span class="emphasis"><em>either</em></span> modify the traditional menu files to suit your requirements, <span class="emphasis"><em>or</em></span> use the newer <span class="command"><strong>icewm-menu-fdo</strong></span> described later.

The syntax of the menus is explained in the help files, which you can access by running <span class="command"><strong>help</strong></span> from the menu, but some of the detail is out of date and the default selections in the menus (a few old applications on the main menu, everything else on the <span class="command"><strong>Programs</strong></span> menu) will benefit from being updated to meet your needs. The following examples are provided to encourage you to think about how you wish to organise your menus. Please note the following:

<div class="itemizedlist">
-   If a program listed in the menu has not been installed, it will not appear when the menu is displayed. Similarly, if the program exists but the specified icon does not, no icon will be displayed in the menu.

-   The icons can be either <code class="filename">.xpm</code> or <code class="filename">.png</code> files, and there is no need to specify the extension. If the icon is located in the "library" (<code class="filename">/usr/share/icewm/icons</code>) there is no need to specify the path.

-   Most programs are in sub-menus, and the main menu will always append entries for <code class="literal">windows, help, settings, logout</code> at the bottom.

-   An icon for <span class="application">firefox</span> was copied to the library directory and given a meaningful name. The icon for <span class="application">xine</span> is <code class="filename">xine.xpm</code> which was installed to a pixmap directory.

-   The default toolbar is not altered.
</div>

If you wish to use this traditional method, there are more examples in previous releases of this book (e.g. BLFS-7.8).

<span class="emphasis"><em>Alternatively</em></span>, you can create a menu which conforms to the FDO Desktop Menu Specifications, where programs can be found because they have a .desktop file in the XDG_DATA_HOME or XDG_DATA_DIR directories. Unlike most windowmanagers, <span class="application">icewm</span> does not search for programs when the menu is invoked, so if you take this route you will need to rerun the following command after installing or removing programs:

```bash
icewm-menu-fdo >~/.icewm/menu
```

If you wish to put icons on your desktop, you will need to install a program such as <a class="ulink" href="https://sourceforge.net/projects/rox/files/rox/2.11/">rox-filer</a> which provides a pinboard. If you do that you will no longer be able to access the menu by right-clicking on the desktop, you will have to use the <span class="application">IceWM</span> button. To ensure that the <span class="application">rox</span> pinboard is running, the following commands will put it in the startup file:

```bash
cat > ~/.icewm/startup << "EOF"
rox -p Default &
EOF &&
chmod +x ~/.icewm/startup
```

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

There are a number of keyboard shortcuts in <span class="application">IceWM</span>:

<div class="itemizedlist">
-   Ctrl + Alt + F*`N`* : go to <code class="filename">tty</code>*`N`*.

-   Ctrl + Alt + *`N`* : go to desktop number *`N`*

-   Ctrl + Alt + Space : open a box on the taskbar where you can key in the name of an application and run it.
</div>
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">icehelp, icesh, icesound, icewm, icewm-menu-fdo, icewm-menu-xrandr, icewm-session, icewm-set-gnomewm, icewmbg, and icewmhint</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/icewm-4.0.0, /usr/share/icewm and \~/.icewm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="icehelp"></a><span class="command"><span class="term"><strong>icehelp</strong></span></span>                       is used to display the html manual
  <a id="icesh"></a><span class="command"><span class="term"><strong>icesh</strong></span></span>                           is a command-line window manager which can be used in <code class="filename">~/.icewm/startup</code>
  <a id="icesound"></a><span class="command"><span class="term"><strong>icesound</strong></span></span>                     plays audio files on GUI events raised by IceWM
  <a id="icewm-prog"></a><span class="command"><span class="term"><strong>icewm</strong></span></span>                      is the window manager
  <a id="icewm-menu-fdo"></a><span class="command"><span class="term"><strong>icewm-menu-fdo</strong></span></span>         can create a file in a format suitable for an IceWM menu, which lists those programs currently installed in a layout conforming to the FDO Desktop Menu Specifications
  <a id="icewm-menu-xrandr"></a><span class="command"><span class="term"><strong>icewm-menu-xrandr</strong></span></span>   is a helper program used to manage multi-screen configurations
  <a id="icewm-session"></a><span class="command"><span class="term"><strong>icewm-session</strong></span></span>           runs icewmbg, icewm, icewmtray, startup, shutdown (i.e. startup and shutdown scripts are run if installed)
  <a id="icewm-set-gnomewm"></a><span class="command"><span class="term"><strong>icewm-set-gnomewm</strong></span></span>   is a script to set the <span class="application">GNOME</span> window manager to <span class="application">icewm</span> using <span class="application">gconftool</span>
  <a id="icewmbg"></a><span class="command"><span class="term"><strong>icewmbg</strong></span></span>                       is used to set the background, according to the various <code class="literal">DesktopBackground</code> settings in the preferences
  <a id="icewmhint"></a><span class="command"><span class="term"><strong>icewmhint</strong></span></span>                   is used internally to provide hints to the user
  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fluxbox.md "Fluxbox-1.3.7")

    Fluxbox-1.3.7

-   [Next](openbox.md "openbox-3.6.1")

    openbox-3.6.1

-   [Up](wm.md "Chapter 27. Window Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
