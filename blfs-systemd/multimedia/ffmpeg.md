::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](videoutils.md "Video Utilities"){accesskey="p"}

    Video Utilities

-   [Next](mpv.md "mpv-0.41.0"){accesskey="n"}

    mpv-0.41.0

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ffmpeg}FFmpeg-8.1.1 {#ffmpeg-8.1.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to FFmpeg {#introduction-to-ffmpeg .sect2}

[FFmpeg]{.application} is a solution to record, convert and stream audio and video. It is a very fast video and audio converter and it can also acquire from a live audio/video source. Designed to be intuitive, the command-line interface ([**ffmpeg**]{.command}) tries to figure out all the parameters, when possible. [FFmpeg]{.application} can also convert from any sample rate to any other, and resize video on the fly with a high quality polyphase filter. [FFmpeg]{.application} can use a Video4Linux compatible video source and any Open Sound System audio source.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ffmpeg.org/releases/ffmpeg-8.1.1.tar.xz](https://ffmpeg.org/releases/ffmpeg-8.1.1.tar.xz){.ulink}

-   Download MD5 sum: f423232dd414c77008dfd85ea5523b8c

-   Download size: 12 MB

-   Estimated disk space required: 287 MB (add 1.7 GB for the FATE suite/tests, add 889 MB for documentation)

-   Estimated build time: 1.6 SBU (using parallelism=4; add 3.2 SBU (with THREADS=4) to run the FATE suite after sample files are downloaded; add 0.2 SBU for doxygen docs)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-8.1.1-chromium_method-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-8.1.1-chromium_method-1.patch){.ulink}
:::

### FFmpeg Dependencies

#### Recommended

[dav1d-1.5.3](dav1d.md "dav1d-1.5.3"){.xref}, [libaom-3.14.1](libaom.md "libaom-3.14.1"){.xref} (for chroma subsampling outside of YUV420), [libass-0.17.4](libass.md "libass-0.17.4"){.xref}, [fdk-aac-2.0.3](fdk-aac.md "fdk-aac-2.0.3"){.xref}, [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref}, [LAME-3.100](lame.md "LAME-3.100"){.xref}, [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [libvpx-1.16.0](libvpx.md "libvpx-1.16.0"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [SVT-AV1-4.1.0](svt-av1.md "SVT-AV1-4.1.0"){.xref} (only supports YUV420), [x264-20250815](x264.md "x264-20250815"){.xref}, [x265-4.2](x265.md "x265-4.2"){.xref}, and [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}

#### Recommended for desktop use

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref}, and [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref}, [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref}, [frei0r-3.1.3](frei0r.md "frei0r-3.1.3"){.xref}, [libcdio-2.1.0](libcdio.md "libcdio-2.1.0"){.xref} (to identify and play CDs), [libdrm-2.4.134](../x/libdrm.md "Libdrm-2.4.134"){.xref} (for [“[kmsgrab]{.quote}”]{.quote} input), [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref}, [libplacebo-7.360.1](libplacebo.md "libplacebo-7.360.1"){.xref} (for hardware accelerated color spaces and HDR tonemapping), [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}) for PDF and PS documentation, [v4l-utils-1.32.0](v4l-utils.md "v4l-utils-1.32.0"){.xref}, [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}, [XviD-1.3.7](xvid.md "XviD-1.3.7"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [Flite](https://github.com/festvox/flite){.ulink}, [GSM](https://www.quut.com/gsm/){.ulink}, [libaacplus](https://tipok.org.ua/node/17){.ulink}, [libbluray](https://www.videolan.org/developers/libbluray.md){.ulink}, [libcaca](https://github.com/cacalabs/libcaca){.ulink}, [libcelt](https://gitlab.xiph.org/xiph/celt){.ulink}, [libdc1394](https://sourceforge.net/projects/libdc1394){.ulink}, [libdca](https://www.videolan.org/developers/libdca.md){.ulink}, [libiec61883](https://ieee1394.wiki.kernel.org/index.php/Libraries){.ulink}, [libilbc](https://github.com/dekkers/libilbc){.ulink}, [libmodplug](https://sourceforge.net/projects/modplug-xmms/){.ulink}, [libnut](https://github.com/Distrotech/libnut){.ulink} (Git checkout), [librtmp](https://rtmpdump.mplayerhq.hu/){.ulink}, [libssh](https://www.libssh.org/){.ulink}, [libtheora](https://www.theora.org){.ulink}, [libvpl](https://glfs-book.github.io/slfs/graph/libvpl.md){.ulink} (for non-vaapi QuickSync) with one of [Intel-MediaSDK](https://glfs-book.github.io/slfs/graph/intel-mediasdk.md){.ulink} (Haswell/4000 series or below) or [intel-onevpl](https://glfs-book.github.io/slfs/graph/intel-onevpl.md){.ulink} (Broadwell/5000+), [OpenAL](https://openal.org/){.ulink}, [OpenCore AMR](https://sourceforge.net/projects/opencore-amr){.ulink}, [rubberband](https://github.com/breakfastquay/rubberband){.ulink}, [Srt](https://github.com/Haivision/srt){.ulink}, [Schroedinger](https://sourceforge.net/projects/schrodinger/){.ulink}, [TwoLAME](https://www.twolame.org/){.ulink}, [vo-aaenc](https://sourceforge.net/projects/opencore-amr/files/vo-aacenc/){.ulink}, [vo-amrwbenc](https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/){.ulink}, and [ZVBI](https://zapping.sourceforge.net/ZVBI/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of FFmpeg {#installation-of-ffmpeg .sect2}

First, apply a patch that adds an API necessary for some packages to build:

``` userinput
patch -Np1 -i ../ffmpeg-8.1.1-chromium_method-1.patch
```

Install [FFmpeg]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr        \
            --enable-gpl         \
            --enable-version3    \
            --enable-nonfree     \
            --disable-static     \
            --enable-shared      \
            --disable-debug      \
            --enable-libaom      \
            --enable-libass      \
            --enable-libfdk-aac  \
            --enable-libfreetype \
            --enable-libmp3lame  \
            --enable-libopus     \
            --enable-libvorbis   \
            --enable-libvpx      \
            --enable-libx264     \
            --enable-libx265     \
            --enable-openssl     \
            --enable-libdav1d    \
            --enable-libsvtav1   \
            --ignore-tests=enhanced-flv-av1,enhanced-flv-multitrack \
            --docdir=/usr/share/doc/ffmpeg-8.1.1 &&

make &&

gcc tools/qt-faststart.c -o tools/qt-faststart
```

HTML documentation was built in the previous step. If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed and wish to build PDF and Postscript versions of the documentation, issue the following commands:

``` userinput
pushd doc &&
for DOCNAME in `basename -s .md *.html`
do
    texi2pdf -b $DOCNAME.texi &&
    texi2dvi -b $DOCNAME.texi &&

    dvips    -o $DOCNAME.ps   \
                $DOCNAME.dvi
done &&
popd &&
unset DOCNAME
```

If you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed and you wish to build (if --disable-doc was used) or rebuild the html documentation, issue:

``` userinput
doxygen doc/Doxyfile
```

The fate-suite tests include comparisons with installed files, and should not be run before the package is installed. Therefore, if you desire to run them, instructions are given further below.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755    tools/qt-faststart /usr/bin &&
install -v -m755 -d           /usr/share/doc/ffmpeg-8.1.1 &&
install -v -m644    doc/*.txt /usr/share/doc/ffmpeg-8.1.1
```

If the PDF and Postscript documentation was built, issue the following commands, as the `root`{.systemitem} user, to install them:

``` root
install -v -m644 doc/*.pdf /usr/share/doc/ffmpeg-8.1.1 &&
install -v -m644 doc/*.ps  /usr/share/doc/ffmpeg-8.1.1
```

If you used [**doxygen**]{.command} to manually create the API documentation, install it by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/doc/ffmpeg-8.1.1/api                     &&
cp -vr doc/doxy/html/* /usr/share/doc/ffmpeg-8.1.1/api                  &&
find /usr/share/doc/ffmpeg-8.1.1/api -type f -exec chmod -c 0644 \{} \; &&
find /usr/share/doc/ffmpeg-8.1.1/api -type d -exec chmod -c 0755 \{} \;
```

To properly test the installation you must have [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref} installed and follow the instructions for the [FFmpeg Automated Testing Environment](https://www.ffmpeg.org/fate.md){.ulink} (FATE). First, about 1 GB of sample files used to run FATE are downloaded with the command:

``` userinput
make fate-rsync SAMPLES=fate-suite/
```

The `fate-suite`{.filename} directory is created and the files are downloaded there. That command actually runs an rsync command to obtain the sample files. You may want to compress and keep this directory for testing again, for testing in another system, or for when a new version of ffmpeg is released. Then, unpack the sample files in the source directory, and run the [**make fate-rsync ...**]{.command} command above to sync with the upstream repository. The download size and time are drastically reduced by doing this. Estimated values in "Package Information" do not include the download SBU. Some samples may have been removed in newer versions, so in order to be sure local and server fate samples are identical when you use previously saved samples, run the following command:

``` userinput
rsync -vrltLW  --delete --timeout=60 --contimeout=60 \
      rsync://fate-suite.ffmpeg.org/fate-suite/ fate-suite/
```

Next, execute FATE with the following commands (there are more than 5200 tests in the suite):

``` userinput
make fate THREADS=N SAMPLES=fate-suite/ | tee ../fate.log &&
grep ^TEST ../fate.log | wc -l
```

where *`N`* is an integer, *`N`* ≤ number of cores in the system.

A successful run should return no errors or warnings, just a list of tests.
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**find ... ;**]{.command}: Fixes permissions of documentation files and directories.

*`--enable-gpl`*: Enables the use of GPL code and permits support for postprocessing, swscale and many other features.

*`--enable-version3`*: Enables the use of (L)GPL version 3 code.

*`--enable-nonfree`*: Enables the use of nonfree code. Note that the resulting libraries and binaries will be unredistributable.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-shared`*: Enables building shared libraries, otherwise only static libraries are built and installed.

*`--disable-debug`*: Disables building debugging symbols into the programs and libraries.

*`--enable-libaom`*: Enables AV1 encoding and decoding via `libaom`{.filename}.

*`--enable-libass`*: Enables ASS/SSA subtitle format rendering via `libass`{.filename}.

*`--enable-libdav1d`*: Enables AV1 decoding via `libdav1d`{.filename}.

`--enable-libdrm`{.option}: Use this switch if [libdrm-2.4.134](../x/libdrm.md "Libdrm-2.4.134"){.xref} is installed to build the [“[kmsgrab]{.quote}”]{.quote} input module which is useful for screen capturing or streaming.

*`--enable-libfdk-aac`*: Enables AAC audio encoding via `libfdk-aac`{.filename}.

*`--enable-libfreetype`*: Enables [Freetype]{.application} support.

*`--enable-libmp3lame`*: Enables MP3 audio encoding via `libmp3lame`{.filename}.

*`--enable-libsvtav1`*: Enables AV1 encoding via `libSvtAv1Enc`{.filename}. It however only supports chroma subsampling of YUV420.

*`--enable-libvorbis`* *`--enable-libvpx`*: Enables WebM encoding via `libvorbis`{.filename} and `libvpx`{.filename}.

*`--enable-libx264`*: Enables high-quality H.264/MPEG-4 AVC encoding via `libx264`{.filename}.

*`--enable-libx265`*: Enables high-quality H.265/HEVC encoding via `libx265`{.filename}.

*`--enable-openssl`*: Enables HTTPS protocol for network streams.

*`--ignore-tests=...`*: Disables tests that fail to run on BLFS without the optional packages. Currently the AV1 test is disabled as it needs dav1d to do AV1 decoding on the CPU. The test might work if you have a GPU that can decode AV1, but this was not tested.

`--enable-gnutls`{.option}: Use this option instead of *`--enable-openssl`*, if you want to use [GnuTLS]{.application} instead of [OpenSSL]{.application} for HTTPS protocol.

`--disable-doc`{.option}: Disables building html documentation. This is only needed if [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} is installed and you do not want to build the html documentation.

`--enable-libpulse`{.option}: Enables support for [Pulseaudio]{.application} for audio output.

`--enable-libplacebo`{.option}: Enables support for [libpulse]{.application} for hardware accelerated color spaces.

[**gcc tools/qt-faststart.c -o tools/qt-faststart**]{.command}: This builds the [**qt-faststart**]{.command} program which can modify QuickTime formatted movies (`.mov`{.filename} or `.mp4`{.filename}) so that the header information is located at the beginning of the file instead of the end. This allows the movie file to begin playing before the entire file has been downloaded.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Support for most of the dependency packages requires using options passed to the [**configure**]{.command} script. View the output from [**./configure --help**]{.command} for complete information about enabling dependency packages.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ffmpeg, ffplay, ffprobe, and qt-faststart]{.segbody}
:::

::: seg
**Installed Libraries:** [libavcodec.so, libavdevice.so, libavfilter.so, libavformat.so, libavutil.so, libpostproc.so, libswresample.so, and libswscale.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libav{codec,device,filter,format,util}, /usr/include/libpostproc, /usr/include/libsw{resample,scale}, /usr/share/doc/ffmpeg-8.1.1, and /usr/share/ffmpeg]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#ffmpeg-prog}[[**ffmpeg**]{.command}]{.term}            is a command-line tool to convert video files, network streams and input from a TV card to several video formats
  []{#ffplay}[[**ffplay**]{.command}]{.term}                 is a very simple and portable media player using the `ffmpeg`{.filename} libraries and the SDL library
  []{#ffprobe}[[**ffprobe**]{.command}]{.term}               gathers information from multimedia streams and prints it in a human and machine-readable fashion
  []{#qt-faststart}[[**qt-faststart**]{.command}]{.term}     moves the index file to the front of quicktime (mov/mp4) videos
  []{#libavcodec}[`libavcodec.so`{.filename}]{.term}         is a library containing the [FFmpeg]{.application} codecs (both encoding and decoding)
  []{#libavdevice}[`libavdevice.so`{.filename}]{.term}       is the [FFmpeg]{.application} device handling library
  []{#libavfilter}[`libavfilter.so`{.filename}]{.term}       is a library of filters that can alter video or audio between the decoder and the encoder (or output)
  []{#libavformat}[`libavformat.so`{.filename}]{.term}       is a library containing the file formats handling (mux and demux code for several formats) used by [**ffplay**]{.command} as well as allowing the generation of audio or video streams
  []{#libavresample}[`libavresample.so`{.filename}]{.term}   is a library containing functions for resampling audio and video.
  []{#libavutil}[`libavutil.so`{.filename}]{.term}           is the [FFmpeg]{.application} utility library
  []{#libpostproc}[`libpostproc.so`{.filename}]{.term}       is the [FFmpeg]{.application} post processing library
  []{#libswresample}[`libswresample.so`{.filename}]{.term}   is the [FFmpeg]{.application} audio rescaling library, it contains functions for converting audio sample formats
  []{#libswscale}[`libswscale.so`{.filename}]{.term}         is the [FFmpeg]{.application} image rescaling library
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](videoutils.md "Video Utilities"){accesskey="p"}

    Video Utilities

-   [Next](mpv.md "mpv-0.41.0"){accesskey="n"}

    mpv-0.41.0

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
