<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](obconf-qt.md "obconf-qt-0.16.5")

    obconf-qt-0.16.5

-   [Next](lxqt-apps.md "LXQt Applications")

    LXQt Applications

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LXQt Desktop Final Instructions {#lxqt-desktop-final-instructions}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Post-Install Instructions {#post-install-instructions}

Please follow these instructions before starting <span class="application">LXQt</span> for the first time.

### Dependencies to Start LXQt

#### Required

<a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a>, or another window manager, such as <a class="xref" href="../xfce/xfwm4.md" title="Xfwm4-4.20.0">Xfwm4-4.20.0</a>, or kwin from <a class="xref" href="../kde/plasma-all.md" title="Building Plasma">Plasma-6.6.5</a>. Note that <a class="xref" href="../x/icewm.md" title="IceWM-4.0.0">IceWM-4.0.0</a> is not suitable for LXQt.

#### Recommended

<a class="xref" href="../x/breeze-icons.md" title="breeze-icons-6.26.0">breeze-icons-6.26.0</a> and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>

#### Optional

<a class="xref" href="../x/lightdm.md" title="lightdm-1.32.0">lightdm-1.32.0</a> or another Display Manager, e.g. <a class="xref" href="../x/sddm.md" title="sddm-0.21.0">sddm-0.21.0</a>, or <a class="xref" href="../xsoft/xscreensaver.md" title="XScreenSaver-6.15">XScreenSaver-6.15</a>
</div>

<div class="configuration" lang="en">
## Final Configuration {#final-configuration}

<div class="sect3" lang="en">
### LXQt Final Database Updates {#lxqt-final-database-updates}

The desktop databases need to be created or updated at this point. Run the following commands as the <code class="systemitem">root</code> user:

```bash
ldconfig                             &&
update-mime-database /usr/share/mime &&
xdg-icon-resource forceupdate        &&
update-desktop-database -q
```
</div>
</div>

<div class="starting" lang="en">
## Starting LXQt {#starting-lxqt}

<div class="sect3" lang="en">
### Starting LXQt Xorg {#starting-lxqt-xorg}

You can start <span class="application">LXQt</span> from a TTY, using <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>, or by using a graphical display manager such as <a class="xref" href="../x/lightdm.md" title="lightdm-1.32.0">lightdm-1.32.0</a>.

To start <span class="application">LXQt</span> using <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>, run the following commands:

```bash
cat > ~/.xinitrc << "EOF"
exec startlxqt
EOF

startx
```

The X session starts on the first unused virtual terminal, normally vt1. You can switch to another vt<span class="emphasis"><em>n</em></span> by simultaneously pressing the keys Ctrl-Alt-F<span class="emphasis"><em>n</em></span> (<span class="emphasis"><em>n</em></span>=2, 3, ...). To switch back to the X session, normally started at vt1, use Ctrl-Alt-F1. The vt where the command <span class="command"><strong>startx</strong></span> was executed will display many messages, including X starting messages, applications automatically started with the session, and eventually, some warning and error messages, but these are hidden by the graphical interface. You may prefer to redirect those messages to a log file, which can be used for debugging purposes. This can be done starting X with:

```bash
startx &> ~/.x-session-errors
```
</div>

<div class="sect3" lang="en">
### Starting LXQt Wayland {#starting-lxqt-wayland}

To start the wayland version of LXQt, run:

```bash
startlxqtwayland
```
</div>
</div>

<div class="sect2" lang="en">
## Initial Configuration {#initial-configuration}

When LXQt first starts, it will ask you for the window manager to use. To start, the BLFS editors recommend using <span class="application">openbox</span>. At this point both the background and the panel will be black. Right clicking on the background will bring up a menu and selecting "Desktop Preferences" will allow you to change the background color or set a background image.

The panel will be at the bottom of the screen. Right clicking on the panel will bring up a menu that will allow you to customize the panel including adding widgets and setting the background color. The BLFS editors recommend installing, at a minimum, the Application Manager and Task Manager widgets.

After LXQt has started for the first time, the BLFS editors recommend going through the settings presented in the LXQt Configuration Center, which can be found under LXQt Settings in the Preferences menu of the application launcher.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The user configuration files will be created in the directory \$HOME/.config/lxqt/. To get widget icons to display properly, the lxqt.conf file may need to be manually edited to include the line "icon_theme=oxygen".
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](obconf-qt.md "obconf-qt-0.16.5")

    obconf-qt-0.16.5

-   [Next](lxqt-apps.md "LXQt Applications")

    LXQt Applications

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
