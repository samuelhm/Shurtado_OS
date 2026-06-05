<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](xdg-utils.md "xdg-utils-1.2.1")

    xdg-utils-1.2.1

-   [Next](../multimedia/multimedia.md "Multimedia")

    Multimedia

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# XScreenSaver-6.15 {#xscreensaver-6.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to XScreenSaver {#introduction-to-xscreensaver}

The <span class="application">XScreenSaver</span> package is a modular screen saver and locker for the X Window System. It is highly customizable and allows the use of any program that can draw on the root window as a display mode. The purpose of <span class="application">XScreenSaver</span> is to display pretty pictures on your screen when it is not in use, in keeping with the philosophy that unattended monitors should always be doing something interesting, just like they do in the movies. However, <span class="application">XScreenSaver</span> can also be used as a screen locker, to prevent others from using your terminal while you are away.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.jwz.org/xscreensaver/xscreensaver-6.15.tar.gz">https://www.jwz.org/xscreensaver/xscreensaver-6.15.tar.gz</a>

-   Download MD5 sum: 65cd8d94841019763e1246df097612ff

-   Download size: 32 MB

-   Estimated disk space required: 379 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
</div>

### XScreenSaver Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, and <a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a>

#### Recommended

<a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a>

#### Optional

<a class="xref" href="../x/gdm.md" title="GDM-50.1">GDM-50.1</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, and <a class="ulink" href="https://linas.org/gle/">GLE</a>
</div>

<div class="installation" lang="en">
## Installation of XScreenSaver {#installation-of-xscreensaver}

Install <span class="application">XScreenSaver</span> by running the following commands:

```bash
./configure --prefix=/usr --with-systemd &&
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

<code class="option">--with-setuid-hacks</code>: This switch allows some demos to be installed setuid <code class="systemitem">root</code> which is needed in order to ping other hosts.
</div>

<div class="configuration" lang="en">
## Configuring XScreenSaver {#configuring-xscreensaver}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/X11/app-defaults/XScreenSaver</code> and <code class="filename">~/.xscreensaver</code>
</div>

<div class="sect3" lang="en">
### Linux PAM Configuration {#linux-pam-configuration}

If <span class="application">XScreenSaver</span> has been built with <span class="application">Linux PAM</span> support, you need to create a <span class="application">PAM</span> configuration file, to get it working correctly with BLFS.

Issue the following commands as the <code class="systemitem">root</code> user to create the configuration file for <span class="application">Linux PAM</span>:

```bash
cat > /etc/pam.d/xscreensaver << "EOF"
# Begin /etc/pam.d/xscreensaver

auth    include system-auth
account include system-account

# End /etc/pam.d/xscreensaver
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xscreensaver, xscreensaver-command, xscreensaver-demo, and xscreensaver-settings</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/libexec/xscreensaver and /usr/share/xscreensaver</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  <a id="xscreensaver-prog"></a><span class="command"><span class="term"><strong>xscreensaver</strong></span></span>                is a screen saver and locker daemon
  <a id="xscreensaver-command"></a><span class="command"><span class="term"><strong>xscreensaver-command</strong></span></span>     controls a running <span class="command"><strong>xscreensaver</strong></span> process by sending it client messages
  <a id="xscreensaver-demo"></a><span class="command"><span class="term"><strong>xscreensaver-demo</strong></span></span>           is a symlink to <span class="command"><strong>xscreensaver-settings</strong></span>
  <a id="xscreensaver-settings"></a><span class="command"><span class="term"><strong>xscreensaver-settings</strong></span></span>   is a graphical front-end for setting the parameters used by the background <span class="command"><strong>xscreensaver</strong></span> daemon
  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdg-utils.md "xdg-utils-1.2.1")

    xdg-utils-1.2.1

-   [Next](../multimedia/multimedia.md "Multimedia")

    Multimedia

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
