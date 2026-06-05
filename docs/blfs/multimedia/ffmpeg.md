<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](videoutils.md "Video Utilities")

    Video Utilities

-   [Next](mpv.md "mpv-0.41.0")

    mpv-0.41.0

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FFmpeg-8.1.1 {#ffmpeg-8.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FFmpeg {#introduction-to-ffmpeg}

<span class="application">FFmpeg</span> is a solution to record, convert and stream audio and video. It is a very fast video and audio converter and it can also acquire from a live audio/video source. Designed to be intuitive, the command-line interface (<span class="command"><strong>ffmpeg</strong></span>) tries to figure out all the parameters, when possible. <span class="application">FFmpeg</span> can also convert from any sample rate to any other, and resize video on the fly with a high quality polyphase filter. <span class="application">FFmpeg</span> can use a Video4Linux compatible video source and any Open Sound System audio source.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ffmpeg.org/releases/ffmpeg-8.1.1.tar.xz">https://ffmpeg.org/releases/ffmpeg-8.1.1.tar.xz</a>

-   Download MD5 sum: f423232dd414c77008dfd85ea5523b8c

-   Download size: 12 MB

-   Estimated disk space required: 287 MB (add 1.7 GB for the FATE suite/tests, add 889 MB for documentation)

-   Estimated build time: 1.6 SBU (using parallelism=4; add 3.2 SBU (with THREADS=4) to run the FATE suite after sample files are downloaded; add 0.2 SBU for doxygen docs)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-8.1.1-chromium_method-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-8.1.1-chromium_method-1.patch</a>
</div>

### FFmpeg Dependencies

#### Recommended

<a class="xref" href="dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>, <a class="xref" href="libaom.md" title="libaom-3.14.1">libaom-3.14.1</a> (for chroma subsampling outside of YUV420), <a class="xref" href="libass.md" title="libass-0.17.4">libass-0.17.4</a>, <a class="xref" href="fdk-aac.md" title="fdk-aac-2.0.3">fdk-aac-2.0.3</a>, <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="svt-av1.md" title="SVT-AV1-4.1.0">SVT-AV1-4.1.0</a> (only supports YUV420), <a class="xref" href="x264.md" title="x264-20250815">x264-20250815</a>, <a class="xref" href="x265.md" title="x265-4.2">x265-4.2</a>, and <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>

#### Recommended for desktop use

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a>, and <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a>, <a class="xref" href="frei0r.md" title="frei0r-3.1.3">frei0r-3.1.3</a>, <a class="xref" href="libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a> (to identify and play CDs), <a class="xref" href="../x/libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a> (for <span class="quote">“<span class="quote">kmsgrab</span>”</span> input), <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="libplacebo.md" title="libplacebo-7.360.1">libplacebo-7.360.1</a> (for hardware accelerated color spaces and HDR tonemapping), <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>) for PDF and PS documentation, <a class="xref" href="v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>, <a class="xref" href="xvid.md" title="XviD-1.3.7">XviD-1.3.7</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="ulink" href="https://github.com/festvox/flite">Flite</a>, <a class="ulink" href="https://www.quut.com/gsm/">GSM</a>, <a class="ulink" href="https://tipok.org.ua/node/17">libaacplus</a>, <a class="ulink" href="https://www.videolan.org/developers/libbluray.md">libbluray</a>, <a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a>, <a class="ulink" href="https://gitlab.xiph.org/xiph/celt">libcelt</a>, <a class="ulink" href="https://sourceforge.net/projects/libdc1394">libdc1394</a>, <a class="ulink" href="https://www.videolan.org/developers/libdca.md">libdca</a>, <a class="ulink" href="https://ieee1394.wiki.kernel.org/index.php/Libraries">libiec61883</a>, <a class="ulink" href="https://github.com/dekkers/libilbc">libilbc</a>, <a class="ulink" href="https://sourceforge.net/projects/modplug-xmms/">libmodplug</a>, <a class="ulink" href="https://github.com/Distrotech/libnut">libnut</a> (Git checkout), <a class="ulink" href="https://rtmpdump.mplayerhq.hu/">librtmp</a>, <a class="ulink" href="https://www.libssh.org/">libssh</a>, <a class="ulink" href="https://www.theora.org">libtheora</a>, <a class="ulink" href="https://glfs-book.github.io/slfs/graph/libvpl.md">libvpl</a> (for non-vaapi QuickSync) with one of <a class="ulink" href="https://glfs-book.github.io/slfs/graph/intel-mediasdk.md">Intel-MediaSDK</a> (Haswell/4000 series or below) or <a class="ulink" href="https://glfs-book.github.io/slfs/graph/intel-onevpl.md">intel-onevpl</a> (Broadwell/5000+), <a class="ulink" href="https://openal.org/">OpenAL</a>, <a class="ulink" href="https://sourceforge.net/projects/opencore-amr">OpenCore AMR</a>, <a class="ulink" href="https://github.com/breakfastquay/rubberband">rubberband</a>, <a class="ulink" href="https://github.com/Haivision/srt">Srt</a>, <a class="ulink" href="https://sourceforge.net/projects/schrodinger/">Schroedinger</a>, <a class="ulink" href="https://www.twolame.org/">TwoLAME</a>, <a class="ulink" href="https://sourceforge.net/projects/opencore-amr/files/vo-aacenc/">vo-aaenc</a>, <a class="ulink" href="https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/">vo-amrwbenc</a>, and <a class="ulink" href="https://zapping.sourceforge.net/ZVBI/">ZVBI</a>
</div>

<div class="installation" lang="en">
## Installation of FFmpeg {#installation-of-ffmpeg}

First, apply a patch that adds an API necessary for some packages to build:

```bash
patch -Np1 -i ../ffmpeg-8.1.1-chromium_method-1.patch
```

Install <span class="application">FFmpeg</span> by running the following commands:

```bash
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

HTML documentation was built in the previous step. If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed and wish to build PDF and Postscript versions of the documentation, issue the following commands:

```bash
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

If you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and you wish to build (if --disable-doc was used) or rebuild the html documentation, issue:

```bash
doxygen doc/Doxyfile
```

The fate-suite tests include comparisons with installed files, and should not be run before the package is installed. Therefore, if you desire to run them, instructions are given further below.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755    tools/qt-faststart /usr/bin &&
install -v -m755 -d           /usr/share/doc/ffmpeg-8.1.1 &&
install -v -m644    doc/*.txt /usr/share/doc/ffmpeg-8.1.1
```

If the PDF and Postscript documentation was built, issue the following commands, as the <code class="systemitem">root</code> user, to install them:

```bash
install -v -m644 doc/*.pdf /usr/share/doc/ffmpeg-8.1.1 &&
install -v -m644 doc/*.ps  /usr/share/doc/ffmpeg-8.1.1
```

If you used <span class="command"><strong>doxygen</strong></span> to manually create the API documentation, install it by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/doc/ffmpeg-8.1.1/api                     &&
cp -vr doc/doxy/html/* /usr/share/doc/ffmpeg-8.1.1/api                  &&
find /usr/share/doc/ffmpeg-8.1.1/api -type f -exec chmod -c 0644 \{} \; &&
find /usr/share/doc/ffmpeg-8.1.1/api -type d -exec chmod -c 0755 \{} \;
```

To properly test the installation you must have <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a> installed and follow the instructions for the <a class="ulink" href="https://www.ffmpeg.org/fate.md">FFmpeg Automated Testing Environment</a> (FATE). First, about 1 GB of sample files used to run FATE are downloaded with the command:

```bash
make fate-rsync SAMPLES=fate-suite/
```

The <code class="filename">fate-suite</code> directory is created and the files are downloaded there. That command actually runs an rsync command to obtain the sample files. You may want to compress and keep this directory for testing again, for testing in another system, or for when a new version of ffmpeg is released. Then, unpack the sample files in the source directory, and run the <span class="command"><strong>make fate-rsync ...</strong></span> command above to sync with the upstream repository. The download size and time are drastically reduced by doing this. Estimated values in "Package Information" do not include the download SBU. Some samples may have been removed in newer versions, so in order to be sure local and server fate samples are identical when you use previously saved samples, run the following command:

```bash
rsync -vrltLW  --delete --timeout=60 --contimeout=60 \
      rsync://fate-suite.ffmpeg.org/fate-suite/ fate-suite/
```

Next, execute FATE with the following commands (there are more than 5200 tests in the suite):

```bash
make fate THREADS=N SAMPLES=fate-suite/ | tee ../fate.log &&
grep ^TEST ../fate.log | wc -l
```

where *`N`* is an integer, *`N`* ≤ number of cores in the system.

A successful run should return no errors or warnings, just a list of tests.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>find ... ;</strong></span>: Fixes permissions of documentation files and directories.

*`--enable-gpl`*: Enables the use of GPL code and permits support for postprocessing, swscale and many other features.

*`--enable-version3`*: Enables the use of (L)GPL version 3 code.

*`--enable-nonfree`*: Enables the use of nonfree code. Note that the resulting libraries and binaries will be unredistributable.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-shared`*: Enables building shared libraries, otherwise only static libraries are built and installed.

*`--disable-debug`*: Disables building debugging symbols into the programs and libraries.

*`--enable-libaom`*: Enables AV1 encoding and decoding via <code class="filename">libaom</code>.

*`--enable-libass`*: Enables ASS/SSA subtitle format rendering via <code class="filename">libass</code>.

*`--enable-libdav1d`*: Enables AV1 decoding via <code class="filename">libdav1d</code>.

<code class="option">--enable-libdrm</code>: Use this switch if <a class="xref" href="../x/libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a> is installed to build the <span class="quote">“<span class="quote">kmsgrab</span>”</span> input module which is useful for screen capturing or streaming.

*`--enable-libfdk-aac`*: Enables AAC audio encoding via <code class="filename">libfdk-aac</code>.

*`--enable-libfreetype`*: Enables <span class="application">Freetype</span> support.

*`--enable-libmp3lame`*: Enables MP3 audio encoding via <code class="filename">libmp3lame</code>.

*`--enable-libsvtav1`*: Enables AV1 encoding via <code class="filename">libSvtAv1Enc</code>. It however only supports chroma subsampling of YUV420.

*`--enable-libvorbis`* *`--enable-libvpx`*: Enables WebM encoding via <code class="filename">libvorbis</code> and <code class="filename">libvpx</code>.

*`--enable-libx264`*: Enables high-quality H.264/MPEG-4 AVC encoding via <code class="filename">libx264</code>.

*`--enable-libx265`*: Enables high-quality H.265/HEVC encoding via <code class="filename">libx265</code>.

*`--enable-openssl`*: Enables HTTPS protocol for network streams.

*`--ignore-tests=...`*: Disables tests that fail to run on BLFS without the optional packages. Currently the AV1 test is disabled as it needs dav1d to do AV1 decoding on the CPU. The test might work if you have a GPU that can decode AV1, but this was not tested.

<code class="option">--enable-gnutls</code>: Use this option instead of *`--enable-openssl`*, if you want to use <span class="application">GnuTLS</span> instead of <span class="application">OpenSSL</span> for HTTPS protocol.

<code class="option">--disable-doc</code>: Disables building html documentation. This is only needed if <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> is installed and you do not want to build the html documentation.

<code class="option">--enable-libpulse</code>: Enables support for <span class="application">Pulseaudio</span> for audio output.

<code class="option">--enable-libplacebo</code>: Enables support for <span class="application">libpulse</span> for hardware accelerated color spaces.

<span class="command"><strong>gcc tools/qt-faststart.c -o tools/qt-faststart</strong></span>: This builds the <span class="command"><strong>qt-faststart</strong></span> program which can modify QuickTime formatted movies (<code class="filename">.mov</code> or <code class="filename">.mp4</code>) so that the header information is located at the beginning of the file instead of the end. This allows the movie file to begin playing before the entire file has been downloaded.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Support for most of the dependency packages requires using options passed to the <span class="command"><strong>configure</strong></span> script. View the output from <span class="command"><strong>./configure --help</strong></span> for complete information about enabling dependency packages.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ffmpeg, ffplay, ffprobe, and qt-faststart</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libavcodec.so, libavdevice.so, libavfilter.so, libavformat.so, libavutil.so, libpostproc.so, libswresample.so, and libswscale.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libav{codec,device,filter,format,util}, /usr/include/libpostproc, /usr/include/libsw{resample,scale}, /usr/share/doc/ffmpeg-8.1.1, and /usr/share/ffmpeg</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="ffmpeg-prog"></a><span class="command"><span class="term"><strong>ffmpeg</strong></span></span>            is a command-line tool to convert video files, network streams and input from a TV card to several video formats
  <a id="ffplay"></a><span class="command"><span class="term"><strong>ffplay</strong></span></span>                 is a very simple and portable media player using the <code class="filename">ffmpeg</code> libraries and the SDL library
  <a id="ffprobe"></a><span class="command"><span class="term"><strong>ffprobe</strong></span></span>               gathers information from multimedia streams and prints it in a human and machine-readable fashion
  <a id="qt-faststart"></a><span class="command"><span class="term"><strong>qt-faststart</strong></span></span>     moves the index file to the front of quicktime (mov/mp4) videos
  <a id="libavcodec"></a><span class="term"><code class="filename">libavcodec.so</code></span>         is a library containing the <span class="application">FFmpeg</span> codecs (both encoding and decoding)
  <a id="libavdevice"></a><span class="term"><code class="filename">libavdevice.so</code></span>       is the <span class="application">FFmpeg</span> device handling library
  <a id="libavfilter"></a><span class="term"><code class="filename">libavfilter.so</code></span>       is a library of filters that can alter video or audio between the decoder and the encoder (or output)
  <a id="libavformat"></a><span class="term"><code class="filename">libavformat.so</code></span>       is a library containing the file formats handling (mux and demux code for several formats) used by <span class="command"><strong>ffplay</strong></span> as well as allowing the generation of audio or video streams
  <a id="libavresample"></a><span class="term"><code class="filename">libavresample.so</code></span>   is a library containing functions for resampling audio and video.
  <a id="libavutil"></a><span class="term"><code class="filename">libavutil.so</code></span>           is the <span class="application">FFmpeg</span> utility library
  <a id="libpostproc"></a><span class="term"><code class="filename">libpostproc.so</code></span>       is the <span class="application">FFmpeg</span> post processing library
  <a id="libswresample"></a><span class="term"><code class="filename">libswresample.so</code></span>   is the <span class="application">FFmpeg</span> audio rescaling library, it contains functions for converting audio sample formats
  <a id="libswscale"></a><span class="term"><code class="filename">libswscale.so</code></span>         is the <span class="application">FFmpeg</span> image rescaling library
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](videoutils.md "Video Utilities")

    Video Utilities

-   [Next](mpv.md "mpv-0.41.0")

    mpv-0.41.0

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
