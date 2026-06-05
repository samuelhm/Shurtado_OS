::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](taglib.md "Taglib-2.3"){accesskey="p"}

    Taglib-2.3

-   [Next](wireplumber.md "Wireplumber-0.5.14"){accesskey="n"}

    Wireplumber-0.5.14

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#v4l-utils}v4l-utils-1.32.0 {#v4l-utils-1.32.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to v4l-utils {#introduction-to-v4l-utils .sect2}

[v4l-utils]{.application} provides a series of utilities for media devices, allowing the ability to handle the proprietary formats available from most webcams (libv4l), and providing tools to test V4L devices.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.32.0.tar.xz](https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.32.0.tar.xz){.ulink}

-   Download MD5 sum: c484b0320a757bd08a785cad7b32147a

-   Download size: 1.3 MB

-   Estimated disk space required: 37 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
:::

### v4l-utils Dependencies

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}, and [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (for qv4l2 and qvidcap), [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref}, both [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (with Clang and target BPF) and [libbpf](https://github.com/libbpf/libbpf){.ulink} (for infrared remote control decoders based on BPF), and [SDL_image](https://github.com/libsdl-org/SDL_image){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of v4l-utils {#installation-of-v4l-utils .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you've installed both LLVM and libbpf (not in BLFS), either enable the BPF target (via `-D LLVM_TARGETS_TO_BUILD=`{.option}) when building LLVM, or disable the infrared remote control decoders based on BPF:

``` userinput
sed -i '/^ir_bpf_enabled/s/=.*/= false/' utils/keytable/meson.build
```
:::

Install [v4l-utils]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you also wish to install the contrib programs, add:

``` root
for prog in v4l2gl v4l2grab
do
   cp -v contrib/test/$prog /usr/bin
done
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D gconv=disabled`*: This switch disables the erroneous installation of gconv-modules that would break glibc.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cec-compliance, cec-ctl, cec-follower, cx18-ctl, decode_tm6000, dvb-fe-tool, dvb-format-convert, dvbv5-daemon, dvbv5-scan, dvbv5-zap, ir-ctl, ir-keytable, ivtv-ctl, media-ctl, qv4l2, qvidcap, rds-ctl, v4l2-compliance, v4l2-ctl, v4l2-dbg, v4l2gl, v4l2grab, and v4l2-sysfs-path]{.segbody}
:::

::: seg
**Installed Library:** [libdvbv5.so, libv4l1.so, libv4l2.so, libv4l2rds.so, libv4lconvert.so, v4l1compat.so, and v4l2convert.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/rc_keymaps, /lib/udev/rc_keymaps, /usr/include/libdvbv5, and /usr/lib/libv4l]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cx18-ctl}[[**cx18-ctl**]{.command}]{.term}                       is a tool to handle cx18 based devices
  []{#decode_tm6000}[[**decode_tm6000**]{.command}]{.term}             decodes multiplexed formats from TM5600/TM6000 USB devices
  []{#dvb-fe-tool}[[**dvb-fe-tool**]{.command}]{.term}                 is a command line tool for digital TV services
  []{#dvb-format-convert}[[**dvb-format-convert**]{.command}]{.term}   is a tool meant to convert among different file formats. It is compliant with version 5 of the DVB API
  []{#dvbv5-scan}[[**dvbv5-scan**]{.command}]{.term}                   is a command line frequency scanning tool for digital TV services that are compliant with version 5 of the DVB API
  []{#dvbv5-zap}[[**dvbv5-zap**]{.command}]{.term}                     is a command line tuning tool for digital TV services that is compliant with version 5 of the DVB API
  []{#ir-keytable}[[**ir-keytable**]{.command}]{.term}                 is a tool that lists the Remote Controller devices, allows one to get/set IR keycode/scancode tables, test events generated by IR, and to adjust other Remote Controller options
  []{#ivtv-ctl}[[**ivtv-ctl**]{.command}]{.term}                       is a utility that can control many card settings, like changing the inputs from tuner to svideo or composite, setting video resolution or changing video mode (PAL, SECAM, NTSC)
  []{#media-ctl}[[**media-ctl**]{.command}]{.term}                     is a utility used to configure V4L2 devices
  []{#qv4l2}[[**qv4l2**]{.command}]{.term}                             is used to test video4linux capture devices
  []{#qvidcap}[[**qvidcap**]{.command}]{.term}                         is used to capture video from a V4L2 device
  []{#rds-ctl}[[**rds-ctl**]{.command}]{.term}                         is a utility for decoding raw RDS data from V4L2 Radio devices and offers simple ways to access the received RDS information
  []{#v4l2-compliance}[[**v4l2-compliance**]{.command}]{.term}         is a compliance test tool
  []{#v4l2-ctl}[[**v4l2-ctl**]{.command}]{.term}                       is a tool to control v4l2 controls from the cmdline
  []{#v4l2-dbg}[[**v4l2-dbg**]{.command}]{.term}                       is a tool to directly get and set registers of v4l2 devices
  []{#v4l2gl}[[**v4l2gl**]{.command}]{.term}                           captures images using libv4l and stores them as PPM files
  []{#v4l2grab}[[**v4l2grab**]{.command}]{.term}                       captures images using libv4l and stores them as PPM files, while also allowing for additional options such as setting the amount of frames captured and saving the file as a RAW file
  []{#v4l2-sysfs-path}[[**v4l2-sysfs-path**]{.command}]{.term}         checks the media devices installed on a machine and the corresponding device nodes
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](taglib.md "Taglib-2.3"){accesskey="p"}

    Taglib-2.3

-   [Next](wireplumber.md "Wireplumber-0.5.14"){accesskey="n"}

    Wireplumber-0.5.14

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
