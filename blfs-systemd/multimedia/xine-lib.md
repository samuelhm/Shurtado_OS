::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](x265.md "x265-4.2"){accesskey="p"}

    x265-4.2

-   [Next](xvid.md "XviD-1.3.7"){accesskey="n"}

    XviD-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xine-lib}xine-lib-1.2.13 {#xine-lib-1.2.13 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Xine Libraries {#introduction-to-xine-libraries .sect2}

The [Xine Libraries]{.application} package contains xine libraries. These are useful for interfacing with external plug-ins that allow the flow of information from the source to the audio and video hardware.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/xine/xine-lib-1.2.13.tar.xz](https://downloads.sourceforge.net/xine/xine-lib-1.2.13.tar.xz){.ulink}

-   Download MD5 sum: 9e1be39857b7a3cd7cc0f2b96331ff22

-   Download size: 4.8 MB

-   Estimated disk space required: 98 MB (with API documentation)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with API documentation)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-upstream_fixes-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-gcc15_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-gcc15_fixes-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-ffmpeg8.patch](https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-ffmpeg8.patch){.ulink}
:::

### Xine Libraries Dependencies

#### Required

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, and at least one of: [alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, or [JACK](https://jackaudio.org/){.ulink}

#### Recommended

[libdvdnav-7.0.0](libdvdnav.md "libdvdnav-7.0.0"){.xref}

#### Optional

[AAlib-1.4rc5](../general/aalib.md "AAlib-1.4rc5"){.xref}, [FAAD2-2.11.2](faad2.md "FAAD2-2.11.2"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}, [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref}, [liba52-0.8.0](liba52.md "Liba52-0.8.0"){.xref}, [libdvdcss-1.5.0](libdvdcss.md "libdvdcss-1.5.0"){.xref}, [libmad-0.15.1b](libmad.md "libmad-0.15.1b"){.xref}, [libmng-2.0.3](../general/libmng.md "libmng-2.0.3"){.xref}, [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref} (requires [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}), [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [libvpx-1.16.0](libvpx.md "libvpx-1.16.0"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to create the API documentation), [v4l-utils-1.32.0](v4l-utils.md "v4l-utils-1.32.0"){.xref} [DirectFB](https://pkgs.fedoraproject.org/repo/pkgs/directfb/){.ulink}, [libbluray](https://www.videolan.org/developers/libbluray.md){.ulink}, [libcaca](https://github.com/cacalabs/libcaca){.ulink}, [libdca](https://www.videolan.org/developers/libdca.md){.ulink}, [libFAME](https://fame.sourceforge.net){.ulink}, [libmodplug](https://sourceforge.net/projects/modplug-xmms/){.ulink}, [libtheora](https://www.theora.org){.ulink}, [musepack](https://www.musepack.net/){.ulink}, [SDL1](https://github.com/libsdl-org/sdl12-compat){.ulink}, [VCDImager](https://ftpmirror.gnu.org/vcdimager/){.ulink}, and [WavPack](https://www.wavpack.com/){.ulink}
::::::

:::: {.installation lang="en"}
## Installation of Xine Libraries {#installation-of-xine-libraries .sect2}

First, fix building this package with ffmpeg-7.0 and later:

``` userinput
patch -Np1 -i ../xine-lib-1.2.13-upstream_fixes-1.patch
```

Next, fix building this package with gcc-15.x:

``` userinput
patch -Np1 -i ../xine-lib-1.2.13-gcc15_fixes-1.patch
```

Next, fix building this package with ffmpeg-8:

``` userinput
patch -Np1 -i ../xine-lib-1.2.13-ffmpeg8.patch
```

Install [Xine Libraries]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr          \
            --disable-vcd          \
            --disable-w32dll       \
            --with-external-dvdnav \
            --docdir=/usr/share/doc/xine-lib-1.2.13 &&
make
```

To create the API documentation, [Doxygen]{.application} must be installed and issue the following command:

``` userinput
doxygen doc/Doxyfile
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing, the Makefile does some additional linking. If you do not have Xorg in /usr, the LIBRARY_PATH variable needs to be defined for the root user. If using sudo to assume root, use the -E option to pass your current environment variables for the install process.
:::

If you built the API documentation, issue the following commands as the `root`{.systemitem} user to install it:

``` root
install -v -m755 -d /usr/share/doc/xine-lib-1.2.13/api &&
install -v -m644    doc/api/* \
                    /usr/share/doc/xine-lib-1.2.13/api
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-vcd`*: This switch is required to compile [Xine Lib]{.application} without [VCDImager](https://ftpmirror.gnu.org/vcdimager/){.ulink} installed. Remove this option if you have installed VCDImager.

*`--with-external-dvdnav`*: This switch is required, because internal libraries cannot decrypt DVD.

*`--disable-win32dll`*: This switch disables building Win32 support into the libraries, and fixes a compilation failure on 32-bit systems.

*`--docdir=/usr/share/doc/xine-lib-1.2.13`*: This switch causes the documentation to be installed into a versioned directory instead of the default `/usr/share/doc/xine-lib`{.filename}.

`--disable-vaapi`{.option}: use this switch if [libva-2.23.0](libva.md "libva-2.23.0"){.xref} is installed and [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref} is not, to prevent a build failure.
:::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Programs:** [xine-config and xine-list-1.2]{.segbody}
:::

::: seg
**Installed Libraries:** [libxine.so and numerous plugin modules and video extensions under /usr/lib/xine/plugins/2.8]{.segbody}
:::

::: seg
**Installed Fonts:** [Output display engine fonts located in /usr/share/xine-lib/fonts]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xine, /usr/lib/xine, /usr/share/xine-lib, and /usr/share/doc/xine-lib-1.2.13]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------------------------------------------
  []{#xine-config}[[**xine-config**]{.command}]{.term}       provides information to programs trying to link with the [xine]{.application} libraries
  []{#xine-list-1.2}[[**xine-list-1.2**]{.command}]{.term}   is used to get supported file type information from [xine-lib]{.application}
  []{#libxine}[`libxine.so`{.filename}]{.term}               provides the API for processing audio/video files
  ---------------------------------------------------------- -----------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::

::: navfooter
-   [Prev](x265.md "x265-4.2"){accesskey="p"}

    x265-4.2

-   [Next](xvid.md "XviD-1.3.7"){accesskey="n"}

    XviD-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
