<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](taglib.md "Taglib-2.3")

    Taglib-2.3

-   [Next](wireplumber.md "Wireplumber-0.5.14")

    Wireplumber-0.5.14

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# v4l-utils-1.32.0 {#v4l-utils-1.32.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to v4l-utils {#introduction-to-v4l-utils}

<span class="application">v4l-utils</span> provides a series of utilities for media devices, allowing the ability to handle the proprietary formats available from most webcams (libv4l), and providing tools to test V4L devices.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.32.0.tar.xz">https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.32.0.tar.xz</a>

-   Download MD5 sum: c484b0320a757bd08a785cad7b32147a

-   Download size: 1.3 MB

-   Estimated disk space required: 37 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
</div>

### v4l-utils Dependencies

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a>, and <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (for qv4l2 and qvidcap), <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, both <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with Clang and target BPF) and <a class="ulink" href="https://github.com/libbpf/libbpf">libbpf</a> (for infrared remote control decoders based on BPF), and <a class="ulink" href="https://github.com/libsdl-org/SDL_image">SDL_image</a>
</div>

<div class="installation" lang="en">
## Installation of v4l-utils {#installation-of-v4l-utils}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you've installed both LLVM and libbpf (not in BLFS), either enable the BPF target (via <code class="option">-D LLVM_TARGETS_TO_BUILD=</code>) when building LLVM, or disable the infrared remote control decoders based on BPF:

```bash
sed -i '/^ir_bpf_enabled/s/=.*/= false/' utils/keytable/meson.build
```
</div>

Install <span class="application">v4l-utils</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gconv=disabled   \
      -D doxygen-doc=disabled &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you also wish to install the contrib programs, add:

```bash
for prog in v4l2gl v4l2grab
do
   cp -v contrib/test/$prog /usr/bin
done
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D gconv=disabled`*: This switch disables the erroneous installation of gconv-modules that would break glibc.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cec-compliance, cec-ctl, cec-follower, cx18-ctl, decode_tm6000, dvb-fe-tool, dvb-format-convert, dvbv5-daemon, dvbv5-scan, dvbv5-zap, ir-ctl, ir-keytable, ivtv-ctl, media-ctl, qv4l2, qvidcap, rds-ctl, v4l2-compliance, v4l2-ctl, v4l2-dbg, v4l2gl, v4l2grab, and v4l2-sysfs-path</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libdvbv5.so, libv4l1.so, libv4l2.so, libv4l2rds.so, libv4lconvert.so, v4l1compat.so, and v4l2convert.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/rc_keymaps, /lib/udev/rc_keymaps, /usr/include/libdvbv5, and /usr/lib/libv4l</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cx18-ctl"></a><span class="command"><span class="term"><strong>cx18-ctl</strong></span></span>                       is a tool to handle cx18 based devices
  <a id="decode_tm6000"></a><span class="command"><span class="term"><strong>decode_tm6000</strong></span></span>             decodes multiplexed formats from TM5600/TM6000 USB devices
  <a id="dvb-fe-tool"></a><span class="command"><span class="term"><strong>dvb-fe-tool</strong></span></span>                 is a command line tool for digital TV services
  <a id="dvb-format-convert"></a><span class="command"><span class="term"><strong>dvb-format-convert</strong></span></span>   is a tool meant to convert among different file formats. It is compliant with version 5 of the DVB API
  <a id="dvbv5-scan"></a><span class="command"><span class="term"><strong>dvbv5-scan</strong></span></span>                   is a command line frequency scanning tool for digital TV services that are compliant with version 5 of the DVB API
  <a id="dvbv5-zap"></a><span class="command"><span class="term"><strong>dvbv5-zap</strong></span></span>                     is a command line tuning tool for digital TV services that is compliant with version 5 of the DVB API
  <a id="ir-keytable"></a><span class="command"><span class="term"><strong>ir-keytable</strong></span></span>                 is a tool that lists the Remote Controller devices, allows one to get/set IR keycode/scancode tables, test events generated by IR, and to adjust other Remote Controller options
  <a id="ivtv-ctl"></a><span class="command"><span class="term"><strong>ivtv-ctl</strong></span></span>                       is a utility that can control many card settings, like changing the inputs from tuner to svideo or composite, setting video resolution or changing video mode (PAL, SECAM, NTSC)
  <a id="media-ctl"></a><span class="command"><span class="term"><strong>media-ctl</strong></span></span>                     is a utility used to configure V4L2 devices
  <a id="qv4l2"></a><span class="command"><span class="term"><strong>qv4l2</strong></span></span>                             is used to test video4linux capture devices
  <a id="qvidcap"></a><span class="command"><span class="term"><strong>qvidcap</strong></span></span>                         is used to capture video from a V4L2 device
  <a id="rds-ctl"></a><span class="command"><span class="term"><strong>rds-ctl</strong></span></span>                         is a utility for decoding raw RDS data from V4L2 Radio devices and offers simple ways to access the received RDS information
  <a id="v4l2-compliance"></a><span class="command"><span class="term"><strong>v4l2-compliance</strong></span></span>         is a compliance test tool
  <a id="v4l2-ctl"></a><span class="command"><span class="term"><strong>v4l2-ctl</strong></span></span>                       is a tool to control v4l2 controls from the cmdline
  <a id="v4l2-dbg"></a><span class="command"><span class="term"><strong>v4l2-dbg</strong></span></span>                       is a tool to directly get and set registers of v4l2 devices
  <a id="v4l2gl"></a><span class="command"><span class="term"><strong>v4l2gl</strong></span></span>                           captures images using libv4l and stores them as PPM files
  <a id="v4l2grab"></a><span class="command"><span class="term"><strong>v4l2grab</strong></span></span>                       captures images using libv4l and stores them as PPM files, while also allowing for additional options such as setting the amount of frames captured and saving the file as a RAW file
  <a id="v4l2-sysfs-path"></a><span class="command"><span class="term"><strong>v4l2-sysfs-path</strong></span></span>         checks the media devices installed on a machine and the corresponding device nodes
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](taglib.md "Taglib-2.3")

    Taglib-2.3

-   [Next](wireplumber.md "Wireplumber-0.5.14")

    Wireplumber-0.5.14

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
