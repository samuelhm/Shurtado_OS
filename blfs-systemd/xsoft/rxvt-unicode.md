<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](inkscape.md "Inkscape-1.4.4")

    Inkscape-1.4.4

-   [Next](thunderbird.md "Thunderbird-140.11.0esr")

    Thunderbird-140.11.0esr

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# rxvt-unicode-9.31 {#rxvt-unicode-9.31}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to rxvt-unicode {#introduction-to-rxvt-unicode}

<span class="application">rxvt-unicode</span> is a clone of the terminal emulator <span class="application">rxvt</span>, an X Window System terminal emulator which includes support for XFT and Unicode.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Please be aware that <span class="application">rxvt-unicode</span> is affected by an issue in <span class="application">perl</span> where the SIGFPE handler is set to SIG_IGN (i.e. the signal is ignored). If you are building an LFS system from within <span class="command"><strong>urxvt</strong></span> and running the test suites, tests in <span class="application">bash</span> which test raising this signal will fail.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.31.tar.bz2">http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.31.tar.bz2</a>

-   Download MD5 sum: 3d0ec83705c9b9ff301a4b9965b3cd9f

-   Download size: 860 KB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
</div>

### rxvt-unicode Dependencies

#### Required

<a class="xref" href="../general/libptytty.md" title="libptytty-2.0">libptytty-2.0</a> and <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>

#### Optional

<a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a> (for background images) and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>
</div>

<div class="installation" lang="en">
## Installation of rxvt-unicode {#installation-of-rxvt-unicode}

Install <span class="application">rxvt-unicode</span> by running the following commands:

```bash
./configure --prefix=/usr --enable-everything &&
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

*`--enable-everything`*: Add support for all non-multichoice options. Details about the different options can be found in the file <code class="filename">README.configure</code>.

<code class="option">--disable-xft</code>: Remove support for Xft fonts.

<code class="option">--disable-perl</code>: Disable the embedded <span class="application">Perl</span> interpreter.

<code class="option">--disable-afterimage</code>: Remove support for libAfterImage.
</div>

<div class="configuration" lang="en">
## Configuring rxvt-unicode {#configuring-rxvt-unicode}

The <span class="application">rxvt-unicode</span> terminal emulator uses the resource class <code class="classname">URxvt</code> and the resource name <code class="classname">urxvt</code>. You can add X resource definitions to a user's <code class="filename">~/.Xresources</code> or <code class="filename">~/.Xdefaults</code> files or to the system-wide <code class="filename">/etc/X11/app-defaults/URxvt</code> file. The following example will load the <code class="classname">matcher</code> <span class="application">Perl</span> extension (assuming <span class="application">Perl</span> support wasn't disabled), which enables a left button click to open an underlined URL in the specified browser, sets a background and foreground color and loads an Xft font (as the <code class="systemitem">root</code> user):

```bash
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

```bash
xrdb -query
```

In order to add the modifications of the new user configuration file, keeping previously X configurations (of course, unless you are changing any on previously define), issue:

```bash
xrdb -merge ~/.Xresources
```

The <span class="application">rxvt-unicode</span> application can also run in a daemon mode, which makes it possible to open multiple terminal windows within the same process. The <span class="command"><strong>urxvtc</strong></span> client then connects to the <span class="command"><strong>urxvtd</strong></span> daemon and requests a new terminal window. Use this option with caution. If the daemon crashes, all the running processes in the terminal windows are terminated.

You can start the <span class="command"><strong>urxvtd</strong></span> daemon in the system or personal startup <span class="command"><strong>X</strong></span> session script (e.g., <code class="filename">~/.xinitrc</code>) by adding the following lines near the top of the script:

```bash
# Start the urxvtd daemon
urxvtd -q -f -o &
```

For more information, examine the <span class="command"><strong>urxvt</strong></span>, <span class="command"><strong>urxvtd</strong></span>, <span class="command"><strong>urxvtc</strong></span>, and <code class="filename">urxvtperl</code> man pages.

If you use a Desktop Environment, a menu entry can be included, issuing, as the <code class="systemitem">root</code> user:

```bash
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

For that, you need <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> and at least one of <a class="xref" href="../x/gnome-icon-theme.md" title="gnome-icon-theme-3.12.0">gnome-icon-theme-3.12.0</a>, <a class="xref" href="../x/oxygen-icons.md" title="oxygen-icons-6.1.0">oxygen-icons-6.1.0</a> and <a class="xref" href="../x/lxde-icon-theme.md" title="lxde-icon-theme-0.5.1">lxde-icon-theme-0.5.1</a>. Uncomment the line with <span class="quote">“<span class="quote">StartupNotify=true</span>”</span> if <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a> is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">urxvt, urxvtd, and urxvtc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="application">Many <span class="segbody">Perl</span> extensions located under <code class="filename">/usr/lib/urxvt/perl</code></span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/urxvt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  <a id="urxvt-bin"></a><span class="command"><span class="term"><strong>urxvt</strong></span></span>   is a terminal emulator for the X Window System
  <a id="urxvtd"></a><span class="command"><span class="term"><strong>urxvtd</strong></span></span>     is the <span class="command"><strong>urxvt</strong></span> terminal daemon
  <a id="urxvtc"></a><span class="command"><span class="term"><strong>urxvtc</strong></span></span>     controls the <span class="command"><strong>urxvtd</strong></span> daemon
  ---------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](inkscape.md "Inkscape-1.4.4")

    Inkscape-1.4.4

-   [Next](thunderbird.md "Thunderbird-140.11.0esr")

    Thunderbird-140.11.0esr

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
