<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Part III. General Libraries and Utilities

-   [Prev](general.md "General Libraries and Utilities")

    General Libraries and Utilities

-   [Next](abseil-cpp.md "Abseil-cpp-20260107.1")

    Abseil-cpp-20260107.1

-   [Up](general.md "Part III. General Libraries and Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# General Libraries {#general-libraries}

<div class="chapter" lang="en">
Libraries contain code which is often required by more than one program. This has the advantage that each program doesn't need to duplicate code (and risk introducing bugs), it just has to call functions from the libraries installed on the system. The most obvious example of a set of libraries is <span class="application">Glibc</span> which is installed during the LFS book. This contains all of the <span class="application">C</span> library functions which programs use.

There are two types of libraries: static and shared. Shared libraries (usually <code class="filename">libXXX.so</code>) are loaded into memory from the shared copy at runtime (hence the name). Static libraries ( <code class="filename">libXXX.a</code>) are actually linked into the program executable file itself, thus making the program file larger. Quite often, you will find both static and shared copies of the same library on your system.

Generally, you only need to install libraries when you are installing software that needs the functionality they supply. In the BLFS book, each package is presented with a list of (known) dependencies. Thus, you can figure out which libraries you need to have before installing that program. If you are installing something without using BLFS instructions, usually the <code class="filename">README</code> or <code class="filename">INSTALL</code> file will contain details of the program's requirements.

There are certain libraries which nearly <span class="emphasis"><em>everyone</em></span> will need at some point. In this chapter these and some others are listed and it is explained why you may want to install them.

<div class="toc">
### Table of Contents

-   [Abseil-cpp-20260107.1](abseil-cpp.md)
-   [AppStream-1.1.2](appstream.md)
-   [appstream-glib-0.8.3](appstream-glib.md)
-   [Apr-1.7.6](apr.md)
-   [Apr-Util-1.6.3](apr-util.md)
-   [Aspell-0.60.8.2](aspell.md)
-   [boost-1.91.0-1](boost.md)
-   [brotli-1.2.0](brotli.md)
-   [CLucene-2.3.3.4](clucene.md)
-   [dbus-glib-0.114](dbus-glib.md)
-   [Double-conversion-3.4.0](double-conversion.md)
-   [duktape-2.7.0](duktape.md)
-   [enchant-2.8.16](enchant.md)
-   [Exempi-2.6.6](exempi.md)
-   [fast_float-8.2.6](fast_float.md)
-   [fftw-3.3.11](fftw.md)
-   [fmt-12.1.0](fmt.md)
-   [GLib-2.88.1](glib2.md)
-   [GLibmm-2.66.8](glibmm.md)
-   [GLibmm-2.88.0](glibmm2.md)
-   [GMime-3.2.15](gmime3.md)
-   [gmmlib-22.10.0](gmmlib.md)
-   [gsl-2.8](gsl.md)
-   [gspell-1.14.3](gspell.md)
-   [highway-1.4.0](highway.md)
-   [icu-78.3](icu.md)
-   [inih-62](inih.md)
-   [Jansson-2.15.0](jansson.md)
-   [JSON-C-0.18](json-c.md)
-   [JSON-GLib-1.10.8](json-glib.md)
-   [keyutils-1.6.3](keyutils.md)
-   [libaio-0.3.113](libaio.md)
-   [libarchive-3.8.7](libarchive.md)
-   [libassuan-3.0.2](libassuan.md)
-   [libatasmart-0.19](libatasmart.md)
-   [libatomic_ops-7.10.0](libatomic_ops.md)
-   [libblockdev-3.5.0](libblockdev.md)
-   [libbytesize-2.12](libbytesize.md)
-   [libclc-22.1.0](libclc.md)
-   [libcloudproviders-0.3.6](libcloudproviders.md)
-   [libdaemon-0.14](libdaemon.md)
-   [libdisplay-info-0.3.0](libdisplay-info.md)
-   [libgcrypt-1.12.2](libgcrypt.md)
-   [libgpg-error-1.61](libgpg-error.md)
-   [libgsf-1.14.58](libgsf.md)
-   [libgudev-238](libgudev.md)
-   [libgusb-0.4.9](libgusb.md)
-   [libical-4.0.2](libical.md)
-   [libidn-1.43](libidn.md)
-   [libidn2-2.3.8](libidn2.md)
-   [libksba-1.8.0](libksba.md)
-   [liblinear-250](liblinear.md)
-   [libmbim-1.34.0](libmbim.md)
-   [libnvme-1.16.1](libnvme.md)
-   [libpaper-2.2.8](libpaper.md)
-   [libportal-0.9.1](libportal.md)
-   [libproxy-0.5.12](libproxy.md)
-   [libptytty-2.0](libptytty.md)
-   [libqalculate-5.11.0](libqalculate.md)
-   [libqmi-1.38.0](libqmi.md)
-   [libseccomp-2.6.0](libseccomp.md)
-   [libsigc++-2.12.1](libsigc.md)
-   [libsigc++-3.6.0](libsigc3.md)
-   [libsigsegv-2.15](libsigsegv.md)
-   [libssh2-1.11.1](libssh2.md)
-   [libstatgrab-0.92.1](libstatgrab.md)
-   [libtasn1-4.21.0](libtasn1.md)
-   [libunistring-1.4.2](libunistring.md)
-   [libunwind-1.8.3](libunwind.md)
-   [liburcu-0.15.6](liburcu.md)
-   [libusb-1.0.30](libusb.md)
-   [libuv-1.52.1](libuv.md)
-   [libxkbcommon-1.13.2](libxkbcommon.md)
-   [libxml2-2.15.3](libxml2.md)
-   [libxmlb-0.3.27](libxmlb.md)
-   [libxslt-1.1.45](libxslt.md)
-   [libwacom-2.19.0](libwacom.md)
-   [libyaml-0.2.5](libyaml.md)
-   [libfyaml-0.9.6](libfyaml.md)
-   [log4cplus-2.1.2](log4cplus.md)
-   [LZO-2.10](lzo.md)
-   [mtdev-1.1.7](mtdev.md)
-   [Node.js-24.16.0](nodejs.md)
-   [npth-1.8](npth.md)
-   [NSPR-4.39](nspr.md)
-   [OpenTimelineIO-0.18.1](opentimelineio.md)
-   [Popt-1.19](popt.md)
-   [Protobuf-35.0](protobuf.md)
-   [Protobuf-c-1.5.2](protobuf-c.md)
-   [Qca-2.3.10](qca.md)
-   [qcoro-0.13.0](qcoro.md)
-   [simdutf-9.0.0](simdutf.md)
-   [SpiderMonkey from firefox-140.11.0](spidermonkey.md)
-   [SPIRV-Headers-1.4.350.0](spirv-headers.md)
-   [SPIRV-Tools-1.4.350.0](spirv-tools.md)
-   [SPIRV-LLVM-Translator-22.1.2](spirv-llvm-translator.md)
-   [Talloc-2.4.4](talloc.md)
-   [Uchardet-0.0.8](uchardet.md)
-   [Umockdev-0.19.7](umockdev.md)
-   [utfcpp-4.1.1](utfcpp.md)
-   [Wayland-1.25.0](wayland.md)
-   [Wayland-Protocols-1.48](wayland-protocols.md)
-   [wv-1.2.9](wv.md)
-   [Xapian-2.0.0](xapian.md)
</div>
</div>

<div class="navfooter">
-   [Prev](general.md "General Libraries and Utilities")

    General Libraries and Utilities

-   [Next](abseil-cpp.md "Abseil-cpp-20260107.1")

    Abseil-cpp-20260107.1

-   [Up](general.md "Part III. General Libraries and Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
