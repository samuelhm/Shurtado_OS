<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](thunderbird.md "Thunderbird-140.11.0esr")

    Thunderbird-140.11.0esr

-   [Next](transmission.md "Transmission-4.1.1")

    Transmission-4.1.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tigervnc-1.16.0 {#tigervnc-1.16.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tigervnc {#introduction-to-tigervnc}

<span class="application">Tigervnc</span> is an advanced VNC (Virtual Network Computing) implementation. It allows creation of an Xorg server not tied to a physical console and also provides a client for viewing of the remote graphical desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/TigerVNC/tigervnc/archive/v1.16.0/tigervnc-1.16.0.tar.gz">https://github.com/TigerVNC/tigervnc/archive/v1.16.0/tigervnc-1.16.0.tar.gz</a>

-   Download MD5 sum: 1164ecb53cd7163f350887df7a215554

-   Download size: 2.1 MB

-   Estimated disk space required: 152 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required file: <a class="ulink" href="https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz">https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz</a>
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The version of <span class="application">Xorg</span> may eventually be a few versions out of date, but is required for the customizations needed for this package.
</div>

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/tigervnc-1.16.0-configuration_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/tigervnc-1.16.0-configuration_fixes-1.patch</a>

-   Optional file to start the server without a display manager: <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/tigervnc/Xsession">https://anduin.linuxfromscratch.org/BLFS/tigervnc/Xsession</a>
</div>

### Tigervnc Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../x/fltk.md" title="FLTK-1.4.5">FLTK-1.4.5</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/pixman.md" title="Pixman-0.46.4">Pixman-0.46.4</a>, <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>),</span> <a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a>, <a class="xref" href="../x/xinit.md" title="xinit-1.4.4">xinit-1.4.4</a>, and <a class="xref" href="../x/x7legacy.md" title="Xorg Legacy">Xorg Legacy Fonts</a>

#### Recommended

<a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>

#### Optional

<a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>
</div>

<div class="installation" lang="en">
## Installation of Tigervnc {#installation-of-tigervnc}

First, make adjustments to the configuration files to make them compatible with LFS systems:

```bash
patch -Np1 -i ../tigervnc-1.16.0-configuration_fixes-1.patch
```

Now, make the package consistent with fltk-1.4.1 and later:

```bash
sed -i "/FL_MINOR_VERSION/s/3/4/" CMakeLists.txt
```

Next, adapt to nettle-4 and higher:

```bash
grep -rl _digest | xargs sed -Ei '/digest/s/([^,]*),.*,(.*)/\1,\2/' &&
grep -rl _DIGEST | xargs sed -i '/DIGEST/s/, 16//'
```

Install <span class="application">tigervnc</span> by running the following commands:

```bash
# Put code in place
mkdir -p unix/xserver &&
tar -xf ../xorg-server-21.1.23.tar.xz \
    --strip-components=1              \
    -C unix/xserver                   &&

pushd unix/xserver                             &&
  patch -Np1 -i ../xserver21.patch             &&
  sed -e '/sha.h/s/sha/sha1/'                  \
      -e '/sha1/a #include <nettle/version.h>' \
      -e 's/ctx, 20/ctx/'                      \
      -i os/xsha1.c                            &&
popd                                           &&

# Build viewer
cmake -G "Unix Makefiles"          \
      -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev .                  &&
make                               &&

# Build server
pushd unix/xserver &&
  autoreconf -fiv  &&

  CPPFLAGS="-I/usr/include/drm"       \
  ./configure $XORG_CONFIG            \
      --disable-xorg        --disable-xnest      --disable-xvfb        \
      --disable-xwin        --disable-xephyr     --disable-kdrive      \
      --disable-devel-docs  --disable-config-hal --disable-config-udev \
      --disable-unit-tests  --disable-selective-werror                 \
      --disable-static      --enable-dri3        --disable-dri         \
      --without-dtrace      --enable-dri2        --enable-glx          \
      --with-pic &&
  make           &&
popd
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
#Install viewer
make install &&
mv  /usr/share/doc/tigervnc /usr/share/doc/tigervnc-1.16.0

#Install server
( cd unix/xserver/hw/vnc && make install ) &&

[ -e /usr/bin/Xvnc ] || ln -svf $XORG_PREFIX/bin/Xvnc /usr/bin/Xvnc
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>tar -xf .. xorg-server...</strong></span>: This command extracts the standard Xorg package into the tree in a location needed for modification.

*`--disable ...`*: Most options that are usually needed for the standard Xorg server are not needed for the Xvnc instance being built.

[**\[ -e /usr/bin/Xvnc \] \|\| ln ... Xvnc**]{.command}: If the Xvnc server is not installed in the <code class="filename">/usr/bin</code> directory, then create a link so the <span class="command"><strong>vncserver</strong></span> script can find it.
</div>

<div class="configuration" lang="en">
## Configuring Tigervnc {#configuring-tigervnc}

### Server Configuration

On systemd systems, another method of configuration is available. This configuration provides the added benefit of making tigervnc systemd aware for VNC sessions and allows desktop environments like <span class="application">GNOME</span> to autostart services once the VNC session is started. This configuration also gives the added benefit of starting VNC Sessions on system startup. To set up the VNC server in this fashion, follow these instructions.

First, install a rudimentary Xsession file so that the VNC server can initialize X sessions properly:

```bash
install -vdm755 /etc/X11/tigervnc &&
install -v -m755 ../Xsession /etc/X11/tigervnc
```

Next, set up a user mapping in <code class="filename">/etc/tigervnc/vncserver.users</code>. This tells the VNC Server which session is allocated to a user.

```bash
echo ":1=$(whoami)" >> /etc/tigervnc/vncserver.users
```

Next, set up a configuration file to tell <span class="application">vncserver</span> which desktop environment should be used and what display geometry should be used. There are several other options that can be defined in this file, but they are outside the scope of BLFS.

```bash
install -vdm 755 ~/.config/tigervnc &&
cat > ~/.config/tigervnc/config << EOF
# Begin ~/.config/tigervnc/config
# The session must match one listed in /usr/share/xsessions.
# Ensure that there are no spaces at the end of the lines.

session=lxqt
geometry=1024x768

# End ~/.config/tigervnc/config
EOF
```

To start the VNC Server, run the following command:

```bash
systemctl start vncserver@:1
```

To start the VNC Server when the system boots, run the following command:

```bash
systemctl enable vncserver@:1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations-1}

<code class="option">-D ENABLE_H264=ON</code>: Append this switch to the <span class="command"><strong>cmake</strong></span> command to enable the H264 decoding support for the viewer. It requires <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>. Note that even with this, the <span class="command"><strong>Xvnc</strong></span> server from this package still does not support H264 encoding.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">Xvnc, vncconfig, vncpasswd, vncserver, vncviewer, and x0vncserver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libvnc.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/tigervnc-1.16.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xvnc"></a><span class="command"><span class="term"><strong>Xvnc</strong></span></span>                 is a X VNC (Virtual Network Computing) server. It is based on a standard X server, but it has a <span class="quote">“<span class="quote">virtual</span>”</span> screen rather than a physical one
  <a id="vncconfig"></a><span class="command"><span class="term"><strong>vncconfig</strong></span></span>       is a program to configure and control a VNC server
  <a id="vncpasswd"></a><span class="command"><span class="term"><strong>vncpasswd</strong></span></span>       allows you to set the password used to access VNC desktops
  <a id="vncserver"></a><span class="command"><span class="term"><strong>vncserver</strong></span></span>       is a perl script used to start or stop a VNC server
  <a id="vncviewer"></a><span class="command"><span class="term"><strong>vncviewer</strong></span></span>       is a client used to connect to VNC desktops
  <a id="x0vncserver"></a><span class="command"><span class="term"><strong>x0vncserver</strong></span></span>   is a program to make an X display on a physical terminal accessible via TigerVNC or compatible viewers
  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](thunderbird.md "Thunderbird-140.11.0esr")

    Thunderbird-140.11.0esr

-   [Next](transmission.md "Transmission-4.1.1")

    Transmission-4.1.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
