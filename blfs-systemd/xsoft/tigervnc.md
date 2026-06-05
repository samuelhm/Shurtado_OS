::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](thunderbird.md "Thunderbird-140.11.0esr"){accesskey="p"}

    Thunderbird-140.11.0esr

-   [Next](transmission.md "Transmission-4.1.1"){accesskey="n"}

    Transmission-4.1.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tigervnc}Tigervnc-1.16.0 {#tigervnc-1.16.0 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::::: {.package lang="en"}
## Introduction to Tigervnc {#introduction-to-tigervnc .sect2}

[Tigervnc]{.application} is an advanced VNC (Virtual Network Computing) implementation. It allows creation of an Xorg server not tied to a physical console and also provides a client for viewing of the remote graphical desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/TigerVNC/tigervnc/archive/v1.16.0/tigervnc-1.16.0.tar.gz](https://github.com/TigerVNC/tigervnc/archive/v1.16.0/tigervnc-1.16.0.tar.gz){.ulink}

-   Download MD5 sum: 1164ecb53cd7163f350887df7a215554

-   Download size: 2.1 MB

-   Estimated disk space required: 152 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Required file: [https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz](https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz){.ulink}
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The version of [Xorg]{.application} may eventually be a few versions out of date, but is required for the customizations needed for this package.
:::

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/tigervnc-1.16.0-configuration_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/tigervnc-1.16.0-configuration_fixes-1.patch){.ulink}

-   Optional file to start the server without a display manager: [https://anduin.linuxfromscratch.org/BLFS/tigervnc/Xsession](https://anduin.linuxfromscratch.org/BLFS/tigervnc/Xsession){.ulink}
:::

### Tigervnc Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [FLTK-1.4.5](../x/fltk.md "FLTK-1.4.5"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [Pixman-0.46.4](../general/pixman.md "Pixman-0.46.4"){.xref}, [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}),]{.phrase} [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref}, [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, and [Xorg Legacy Fonts](../x/x7legacy.md "Xorg Legacy"){.xref}

#### Recommended

[ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref}

#### Optional

[FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}
::::::::

::: {.installation lang="en"}
## Installation of Tigervnc {#installation-of-tigervnc .sect2}

First, make adjustments to the configuration files to make them compatible with LFS systems:

``` userinput
patch -Np1 -i ../tigervnc-1.16.0-configuration_fixes-1.patch
```

Now, make the package consistent with fltk-1.4.1 and later:

``` userinput
sed -i "/FL_MINOR_VERSION/s/3/4/" CMakeLists.txt
```

Next, adapt to nettle-4 and higher:

``` userinput
grep -rl _digest | xargs sed -Ei '/digest/s/([^,]*),.*,(.*)/\1,\2/' &&
grep -rl _DIGEST | xargs sed -i '/DIGEST/s/, 16//'
```

Install [tigervnc]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
#Install viewer
make install &&
mv  /usr/share/doc/tigervnc /usr/share/doc/tigervnc-1.16.0

#Install server
( cd unix/xserver/hw/vnc && make install ) &&

[ -e /usr/bin/Xvnc ] || ln -svf $XORG_PREFIX/bin/Xvnc /usr/bin/Xvnc
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**tar -xf .. xorg-server...**]{.command}: This command extracts the standard Xorg package into the tree in a location needed for modification.

*`--disable ...`*: Most options that are usually needed for the standard Xorg server are not needed for the Xvnc instance being built.

[**\[ -e /usr/bin/Xvnc \] \|\| ln ... Xvnc**]{.command}: If the Xvnc server is not installed in the `/usr/bin`{.filename} directory, then create a link so the [**vncserver**]{.command} script can find it.
:::

::: {.configuration lang="en"}
## Configuring Tigervnc {#configuring-tigervnc .sect2}

### Server Configuration

On systemd systems, another method of configuration is available. This configuration provides the added benefit of making tigervnc systemd aware for VNC sessions and allows desktop environments like [GNOME]{.application} to autostart services once the VNC session is started. This configuration also gives the added benefit of starting VNC Sessions on system startup. To set up the VNC server in this fashion, follow these instructions.

First, install a rudimentary Xsession file so that the VNC server can initialize X sessions properly:

``` root
install -vdm755 /etc/X11/tigervnc &&
install -v -m755 ../Xsession /etc/X11/tigervnc
```

Next, set up a user mapping in `/etc/tigervnc/vncserver.users`{.filename}. This tells the VNC Server which session is allocated to a user.

``` root
echo ":1=$(whoami)" >> /etc/tigervnc/vncserver.users
```

Next, set up a configuration file to tell [vncserver]{.application} which desktop environment should be used and what display geometry should be used. There are several other options that can be defined in this file, but they are outside the scope of BLFS.

``` userinput
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

``` root
systemctl start vncserver@:1
```

To start the VNC Server when the system boots, run the following command:

``` root
systemctl enable vncserver@:1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations-1 .sect2}

`-D ENABLE_H264=ON`{.option}: Append this switch to the [**cmake**]{.command} command to enable the H264 decoding support for the viewer. It requires [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}. Note that even with this, the [**Xvnc**]{.command} server from this package still does not support H264 encoding.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [Xvnc, vncconfig, vncpasswd, vncserver, vncviewer, and x0vncserver]{.segbody}
:::

::: seg
**Installed Libraries:** [libvnc.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/tigervnc-1.16.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xvnc}[[**Xvnc**]{.command}]{.term}                 is a X VNC (Virtual Network Computing) server. It is based on a standard X server, but it has a [“[virtual]{.quote}”]{.quote} screen rather than a physical one
  []{#vncconfig}[[**vncconfig**]{.command}]{.term}       is a program to configure and control a VNC server
  []{#vncpasswd}[[**vncpasswd**]{.command}]{.term}       allows you to set the password used to access VNC desktops
  []{#vncserver}[[**vncserver**]{.command}]{.term}       is a perl script used to start or stop a VNC server
  []{#vncviewer}[[**vncviewer**]{.command}]{.term}       is a client used to connect to VNC desktops
  []{#x0vncserver}[[**x0vncserver**]{.command}]{.term}   is a program to make an X display on a physical terminal accessible via TigerVNC or compatible viewers
  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](thunderbird.md "Thunderbird-140.11.0esr"){accesskey="p"}

    Thunderbird-140.11.0esr

-   [Next](transmission.md "Transmission-4.1.1"){accesskey="n"}

    Transmission-4.1.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
