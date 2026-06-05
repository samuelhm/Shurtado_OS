<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfwm4.md "Xfwm4-4.20.0")

    Xfwm4-4.20.0

-   [Next](xfce-apps.md "Xfce Applications")

    Xfce Applications

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-session-4.20.4 {#xfce4-session-4.20.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Session {#introduction-to-xfce4-session}

<span class="application">Xfce4 Session</span> is a session manager for <span class="application">Xfce</span>. Its task is to save the state of your desktop (opened applications and their location) and restore it during a next startup. You can create several different sessions and choose one of them on startup.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.4.tar.bz2">https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.4.tar.bz2</a>

-   Download MD5 sum: 048a3f838449dd75d358779b528b0a63

-   Download size: 1.2 MB

-   Estimated disk space required: 20 MB

-   Estimated build time: 0.1 SBU
</div>

### Xfce4 Session Dependencies

#### Required

<a class="xref" href="libwnck.md" title="libwnck-43.3">libwnck-43.3</a>, <a class="xref" href="libxfce4windowing.md" title="libxfce4windowing-4.20.6">libxfce4windowing-4.20.6</a>, and <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="ulink" href="https://docs.xfce.org/apps/screensaver/start">xfce4-screensaver</a> or <a class="xref" href="../xsoft/xscreensaver.md" title="XScreenSaver-6.15">XScreenSaver-6.15</a>, <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a> and <a class="xref" href="../postlfs/polkit-gnome.md" title="polkit-gnome-0.105">polkit-gnome-0.105</a>

#### Required Runtime

<a class="xref" href="xfdesktop.md" title="Xfdesktop-4.20.2">Xfdesktop-4.20.2</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Session {#installation-of-xfce4-session}

Install <span class="application">Xfce4 Session</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --disable-legacy-sm &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-legacy-sm`*: This switch disables legacy session management which isn't necessary on modern system.
</div>

<div class="configuration" lang="en">
## Configuring Xfce4 Session {#configuring-xfce4-session}

There are several optional run time dependencies for <span class="application">Xfce4</span>: <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="../x/hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>, <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>, and <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>

When building an <span class="application">Xfce4</span> package, some configuration files are installed in <code class="filename">/usr/share/applications</code>, <code class="filename">/usr/share/icons</code>, and <code class="filename">/usr/share/mime</code>. In order to use those files in your <span class="application">Xfce4</span> session, you need to update various databases. Do that by running, as the <code class="systemitem">root</code> user (you need to have the recommended dependencies installed):

```bash
update-desktop-database &&
update-mime-database /usr/share/mime
```
</div>

<div class="starting" lang="en">
## Starting Xfce4 {#starting-xfce4}

You can start <span class="application">Xfce4</span> from a TTY using <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>, or from a graphical display manager, such as <a class="xref" href="../x/lightdm.md" title="lightdm-1.32.0">lightdm-1.32.0</a>.

To start <span class="application">Xfce4</span> using <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>, run the following commands:

```bash
cat > ~/.xinitrc << "EOF"
dbus-launch --exit-with-x11 startxfce4
EOF

startx
```

The X session starts on the first unused virtual terminal, normally vt7. You can switch to another vt<span class="emphasis"><em>n</em></span> simultaneously pressing the keys Ctrl-Alt-F<span class="emphasis"><em>n</em></span> (<span class="emphasis"><em>n</em></span>=1, 2, ...). To switch back to the X session, normally started at vt7, use Ctrl-Alt-F7. The vt where the command <span class="command"><strong>startx</strong></span> was executed will display many messages, including X starting messages, applications automatically started with the session, and eventually, some warning and error messages. You may prefer to redirect those messages to a log file, which not only will keep the initial vt uncluttered, but can also be used for debugging purposes. This can be done starting X with:

```bash
startx &> ~/.x-session-errors
```

When shutting down or rebooting, the shutdown messages appear on the vt where X was running. If you wish to see those messages, simultaneously press keys Alt-F7 (assuming that X was running on vt7).
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">startxfce4, xfce4-session, xfce4-session-logout, xfce4-session-settings, and xflock4</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/xfce4/session</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------
  <a id="startxfce4"></a><span class="command"><span class="term"><strong>startxfce4</strong></span></span>                           is a script responsible for starting an <span class="application">Xfce</span> session.
  <a id="xfce4-session-prog"></a><span class="command"><span class="term"><strong>xfce4-session</strong></span></span>                starts up the <span class="application">Xfce</span> Desktop Environment
  <a id="xfce4-session-logout"></a><span class="command"><span class="term"><strong>xfce4-session-logout</strong></span></span>       logs out from <span class="application">Xfce</span>
  <a id="xfce4-session-settings"></a><span class="command"><span class="term"><strong>xfce4-session-settings</strong></span></span>   is a <span class="application">GTK+ 3</span> GUI which allows you to alter your preferences for your <span class="application">Xfce Session</span>
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfwm4.md "Xfwm4-4.20.0")

    Xfwm4-4.20.0

-   [Next](xfce-apps.md "Xfce Applications")

    Xfce Applications

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
