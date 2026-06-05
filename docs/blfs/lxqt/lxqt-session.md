<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0")

    lxqt-openssh-askpass-2.4.0

-   [Next](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1")

    lxqt-wayland-session-0.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-session-2.4.0 {#lxqt-session-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-session {#introduction-to-lxqt-session}

The <span class="application">lxqt-session</span> package contains the default session manager for <span class="application">LXQt</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-session/releases/download/2.4.0/lxqt-session-2.4.0.tar.xz">https://github.com/lxqt/lxqt-session/releases/download/2.4.0/lxqt-session-2.4.0.tar.xz</a>

-   Download MD5 sum: 42a340dbb742c6afb872cb3bd5a6eeda

-   Download size: 220 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.5 SBU
</div>

### lxqt-session Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, <a class="xref" href="qtxdg-tools.md" title="qtxdg-tools-4.4.0">qtxdg-tools-4.4.0</a>, and <a class="xref" href="../general/xdg-user-dirs.md" title="Xdg-user-dirs-0.20">Xdg-user-dirs-0.20</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-session {#installation-of-lxqt-session}

Install <span class="application">lxqt-session</span> by running the following commands:

```bash
sed -e '/TryExec/s|=|=/usr/bin/|' \
    -i xsession/lxqt.desktop.in &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
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

<span class="command"><strong>sed -e '/TryExec/s\|=\|='/usr'/bin/\|' -i xsessions/lxqt.desktop.in</strong></span>: If you are using a display manager, the full path of the <span class="quote">“<span class="quote">TryExec</span>”</span> directive has to be given so that the <span class="application">LXQt</span> desktop will appear in the sessions list.
</div>

<div class="configuration" lang="en">
## Configuring lxqt-session {#configuring-lxqt-session}

Window Managers other than <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a> may be used, e.g. <a class="xref" href="../xfce/xfwm4.md" title="Xfwm4-4.20.0">Xfwm4-4.20.0</a>. Please note that <a class="xref" href="../x/icewm.md" title="IceWM-4.0.0">IceWM-4.0.0</a> is not a good substitute. <span class="application">Fluxbox</span> does work, although in this context (with <a class="xref" href="lxqt-config.md" title="lxqt-config-2.4.0">lxqt-config-2.4.0</a>), <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a> is better. The configuration file <code class="filename">/usr/share/lxqt/windowmanagers.conf</code> comes with many examples of Window Managers and the ones which are installed will appear in a drop down list of <span class="command"><strong>lxqt-config-session</strong></span>. For the ones not included in <code class="filename">/usr/share/lxqt/windowmanagers.conf</code>, you can use <span class="command"><strong>lxqt-config-session</strong></span>'s "search" button, e.g. for <a class="xref" href="../x/fluxbox.md" title="Fluxbox-1.3.7">Fluxbox-1.3.7</a>, navigating through the file system until you can choose <span class="command"><strong>fluxbox</strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lxqt-config-session, lxqt-leave, lxqt-session, and startlxqt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/translations/lxqt-{leave,config-session,session}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------------- ---------------------------------------------------------------
  <a id="lxqt-config-session-prog"></a><span class="command"><span class="term"><strong>lxqt-config-session</strong></span></span>   is a GUI configuration tool for <span class="command"><strong>lxqt-session</strong></span>
  <a id="lxqt-leave-prog"></a><span class="command"><span class="term"><strong>lxqt-leave</strong></span></span>                     is a graphical dialog to terminate the session
  <a id="lxqt-session-prog"></a><span class="command"><span class="term"><strong>lxqt-session</strong></span></span>                 is a lightweight X session manager
  <a id="startlxqt"></a><span class="command"><span class="term"><strong>startlxqt</strong></span></span>                            is used to start the desktop session for <span class="application">LXQt</span>
  --------------------------------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-openssh-askpass.md "lxqt-openssh-askpass-2.4.0")

    lxqt-openssh-askpass-2.4.0

-   [Next](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1")

    lxqt-wayland-session-0.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
