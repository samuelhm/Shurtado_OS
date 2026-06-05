::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](falkon.md "falkon-26.04.1"){accesskey="p"}

    falkon-26.04.1

-   [Next](seamonkey.md "Seamonkey-2.53.23"){accesskey="n"}

    Seamonkey-2.53.23

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#firefox}Firefox-140.11.0esr {#firefox-140.11.0esr .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
:::::::::: {.package lang="en"}
## Introduction to Firefox {#introduction-to-firefox .sect2}

[Firefox]{.application} is a stand-alone browser based on the [Mozilla]{.application} codebase.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This package has historically had frequent updates that address security vulnerabilities. To determine the latest status check the [BLFS Security Advisories](https://rivendell.linuxfromscratch.org/blfs/advisories/){.ulink}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz](https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz){.ulink}

-   Download MD5 sum: 652763dfff0895c534f991a38b48c946

-   Download size: 610 MB

-   Estimated disk space required: 7.7 GB (233 MB installed) without tests

-   Estimated build time: 15 SBU using -j8, without tests
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-glibc-2.43.patch](https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-glibc-2.43.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-python_3.14_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-python_3.14_fixes-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-llvm_22-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-llvm_22-1.patch){.ulink}
:::

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The directory name is firefox-140.11.0

Extracting the tarball will reset the permissions of the current directory to 0755 if you have permission to do that. If you do this in a directory where the sticky bit is set, such as `/tmp`{.filename} it will end with error messages:

::: literallayout
tar: .: Cannot utime: Operation not permitted\
tar: .: Cannot change mode to rwxr-xr-t: Operation not permitted\
tar: Exiting with failure status due to previous errors\
:::

This does finish with non-zero status, but it does [*NOT*]{.emphasis} mean there is a real problem. Do not untar as the `root`{.systemitem} user in a directory where the sticky bit is set - that will unset it.

As with other large packages which use C++ (or rust), the SBU times to build this vary more widely than you might expect. The build times will increase significantly if your machine has to swap.

Although upstream prefer to use [PulseAudio]{.application}, for the moment [Alsa]{.application} can still be used. Both may need runtime configuration to get sound working.
::::

### Firefox Dependencies

#### Required

[Cbindgen-0.29.3](../general/cbindgen.md "Cbindgen-0.29.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (with clang, used for bindgen even if using gcc), [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref} (or [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref} if you edit the mozconfig; now deprecated by mozilla), in either case please read the Configuration Information, and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Recommended

[dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libaom-3.14.1](../multimedia/libaom.md "libaom-3.14.1"){.xref}, [libevent-2.1.12](../basicnet/libevent.md "libevent-2.1.12"){.xref}, [libvpx-1.16.0](../multimedia/libvpx.md "libvpx-1.16.0"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, and [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you don't install recommended dependencies, then internal copies of those packages will be used. They might be tested to work, but they can be out of date or contain security holes.
:::

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref} (runtime, to play mov, mp3 or mp4 files), [GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref} (runtime), [liboauth-1.0.3](../postlfs/liboauth.md "liboauth-1.0.3"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref} (runtime), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, [Wireless Tools-29](../basicnet/wireless_tools.md "Wireless Tools-29"){.xref}, and [yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/firefox](https://wiki.linuxfromscratch.org/blfs/wiki/firefox){.ulink}
::::::::::

::::: {.installation lang="en"}
## Installation of Firefox {#installation-of-firefox .sect2}

The configuration of [Firefox]{.application} is accomplished by creating a `mozconfig`{.filename} file containing the desired configuration options. A default `mozconfig`{.filename} is created below. To see the entire list of available configuration options (and an abbreviated description of some of them), issue [**./mach configure -- --help \| less**]{.command}. You may also wish to review the entire file and uncomment any other desired options. Create the file by issuing the following command:

``` userinput
cat > mozconfig << "EOF"
# If you have a multicore machine, all cores will be used by default.

# If you have installed (or will install) wireless-tools, and you wish
# to use geolocation web services, comment out this line
ac_add_options --disable-necko-wifi

# Comment out the following line if you wish not to use Google's Location
# Service (GLS).  Note that if Geoclue is installed and configured to use
# GLS (as the BLFS instruction does), Firefox can access GLS via Geoclue
# anyway.  On the other hand if Geoclue is not installed (or not properly
# configured) and this line is commented out, the website requiring a
# location service will not function properly.
ac_add_options --with-google-location-service-api-keyfile=$PWD/google-key

# If you wish to use libproxy to determine proxy server information, you will
# need to install the libproxy package and then uncomment the option below:
#ac_add_options --enable-libproxy

# Uncomment the following option if you have not installed PulseAudio and
# want to use alsa instead
#ac_add_options --enable-audio-backends=alsa

# Comment out following options if you have not installed
# recommended dependencies:
ac_add_options --with-system-av1
ac_add_options --with-system-icu
ac_add_options --with-system-libevent
ac_add_options --with-system-libvpx
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-webp

# Firefox provides a copy of dav1d if it has not been installed. If you have
# not installed nasm and ffmpeg, uncomment the following line:
#ac_add_options --disable-av1

# You cannot distribute the binary if you do this.
ac_add_options --enable-official-branding

# Stripping is now enabled by default.
# Uncomment these lines if you need to run a debugger:
#ac_add_options --disable-strip
#ac_add_options --disable-install-strip

# Disabling debug symbols makes the build much smaller and a little
# faster. Comment this if you need to run a debugger.
ac_add_options --disable-debug-symbols

# The BLFS editors recommend not changing anything below this line:
ac_add_options --prefix=/usr
ac_add_options --enable-application=browser
ac_add_options --disable-crashreporter
ac_add_options --disable-updater

# Enabling the tests will use a lot more space and significantly
# increase the build time, for no obvious benefit.
ac_add_options --disable-tests

# This enables SIMD optimization in the shipped encoding_rs crate.
ac_add_options --enable-rust-simd

ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman

ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib

# Sandboxing works well on x86_64 but might cause issues on other
# platforms, e.g. i686.
[ $(uname -m) != x86_64 ] && ac_add_options --disable-sandbox

# Using sandboxed wasm libraries has been moved to all builds instead
# of only mozilla automation builds. It requires extra llvm packages
# and was reported to seriously slow the build. Disable it.
ac_add_options --without-wasm-sandboxed-libraries

# The following option unsets Telemetry Reporting. With the Addons Fiasco,
# Mozilla was found to be collecting user's data, including saved passwords and
# web form data, without users consent. Mozilla was also found shipping updates
# to systems without the user's knowledge or permission.
# As a result of this, use the following command to permanently disable
# telemetry reporting in Firefox.
unset MOZ_TELEMETRY_REPORTING

mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/firefox-build-dir

# By default firefox will attempt to use the window class firefox-default on
# launch. This makes the icon not work properly because wayland does not
# support the X11 property  class header. Change the remoting name to fix this.
# This is also reflected in the .desktop file where StartupWMClass is set to
# firefox.
MOZ_APP_REMOTINGNAME=firefox
EOF
```

A patch is needed to fix building with glibc-2.43. This patch changes the vendored Rust crate, so the build system must be changed to make [**cargo**]{.command} skip the checksum verification:

``` userinput
patch -Np1 -i ../firefox-140.11.0esr-glibc-2.43.patch &&

sed -e '/patch.crates-io/a glslopt={path="third_party/rust/glslopt"}' \
    -i Cargo.toml &&
 
sed -i '/name = "glslopt"/,/^$/{/source/d;/checksum/d}' Cargo.lock
```

Next, fix building this package with Python-3.14:

``` userinput
patch -Np1 -i ../firefox-140.11.0esr-python_3.14_fixes-1.patch
```

Next, fix building this package with LLVM-22:

``` userinput
patch -Np1 -i ../firefox-140.11.0esr-llvm_22-1.patch
```

If you are building with system ICU-78.1 or later, update one file:

``` userinput
sed -i '/VIRAMA = 47/a CLASS_CHARACTER,' intl/lwbrk/LineBreaker.cpp
```

If the geolocation APIs are needed:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The Google API Key below is specific to LFS. If using these instructions for another distro, or if you intend to distribute binary copies of the software using these instructions, please obtain your own key following the instructions located at [https://www.chromium.org/developers/how-tos/api-keys](https://www.chromium.org/developers/how-tos/api-keys){.ulink}.
:::

``` userinput
echo "AIzaSyDxKL42zsPjbke5O8_rPVpVrLrJ8aeE9rQ" > google-key
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that `/dev/shm`{.filename} is mounted. If you do not do this, the [Python]{.application} configuration will fail with a traceback report referencing `/usr/lib/pythonN.N/multiprocessing/synchronize.py`{.filename}. As the `root`{.systemitem} user, run:

``` userinput
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```
:::

Compile [Firefox]{.application} by issuing the following commands:

``` userinput
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
export MOZBUILD_STATE_PATH=${PWD}/mozbuild          &&
./mach build
```

The `mozconfig`{.filename} above disables the tests because they use a lot more time and disk space for no obvious benefit. If you have nevertheless enabled them, you can run the tests by executing [**./mach gtest**]{.command}. This will require a network connection, and to be run from within an Xorg session - there is a popup dialog when it fails to connect to ALSA (that does not create a failed test). One or two tests will fail. To see the details of the failure(s) you will need to log the output from that command so that you can review it.

Now, as the `root`{.systemitem} user:

``` root
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
./mach install
```

Empty the environment variables which were set above:

``` userinput
unset MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE
unset MOZBUILD_STATE_PATH
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export MOZBUILD_STATE_PATH=\${PWD}/mozbuild**]{.command}: The build tells you that it intends to create `~/.mozbuild`{.filename}, and offer you an option to press \<ENTER\> to accept this, or Ctrl-C to cancel and restart the build after specifying the directory. In practice, the message may not appear until after \<ENTER\> is keyed, i.e. the build stalls.

That directory is used for a (probably random) telemetry identifier. Creating this directory within the build directory and deleting it after the installation prevents it being used.

[**MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none**]{.command}: Use the system python to create a virtual environment for [**mach**]{.command} without downloading any python wheels and without using the system python modules. This prevents version mismatches between system modules and bundled ones.

`./mach build --verbose`{.option}: Use this alternative if you need details of which files are being compiled, together with any C or C++ flags being used. But do not add '--verbose' to the install command since it is not accepted there.

`./mach build -jN`{.option}: The build should, by default, use all the online CPU cores. If using all the cores causes the build to swap because you have insufficient memory, using fewer cores can be faster.

`CC=gcc CXX=g++`{.envar}: BLFS used to prefer to use gcc and g++ instead of upstream's defaults of the [clang]{.application} programs. With the release of gcc-12 the build takes longer with gcc and g++, primarily because of extra warnings, and is bigger. Set these environment variables [*before you run the configure script*]{.emphasis} if you wish to continue to use gcc, g++. Building with GCC on i?86 is currently broken.
:::

:::: {.configuration lang="en"}
## Configuring Firefox {#configuring-firefox .sect2}

If you use a desktop environment like [Gnome]{.application} or [KDE]{.application} you may want to create a `firefox.desktop`{.filename} file so that [Firefox]{.application} appears in the panel's menus. As the `root`{.systemitem} user:

``` root
mkdir -pv /usr/share/applications &&
mkdir -pv /usr/share/pixmaps      &&

MIMETYPE="text/xml;text/mml;text/html;"                            &&
MIMETYPE+="application/xhtml+xml;application/vnd.mozilla.xul+xml;" &&
MIMETYPE+="x-scheme-handler/http;x-scheme-handler/https"           &&

cat > /usr/share/applications/firefox.desktop << EOF &&
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Web Browser
Comment=Browse the World Wide Web
GenericName=Web Browser
Exec=firefox %u
Terminal=false
Type=Application
Icon=firefox
Categories=GNOME;GTK;Network;WebBrowser;
MimeType=$MIMETYPE
StartupNotify=true
StartupWMClass=firefox
EOF

unset MIMETYPE &&

ln -sfv /usr/lib/firefox/browser/chrome/icons/default/default128.png \
        /usr/share/pixmaps/firefox.png
```

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The application settings for firefox are accessible by keying [**about:config**]{.command} in the address bar.

Occasionally, getting working sound in [firefox]{.application} can be a problem. Although upstream prefers pulseaudio, on balance using [Alsa]{.application} may be easier.

If you enabled [Alsa]{.application} for sound, you may need to alter one variable to get working sound. If you run [**firefox**]{.command} from a terminal and try to play something with sound you might encounter error messages like:

`Sandbox: seccomp sandbox violation: pid 3941, tid 4030, syscall 16, args 48 2147767296 139909894784796 0 0 0.`{.literal}

That was on x86_64, on i686 the syscall number is 54. To allow this syscall, in [**about:config**]{.command} change [**security.sandbox.content.syscall_whitelist**]{.command} to 16 (or 54 if using i686).

If you use [**pulseaudio**]{.command} in a Desktop Environment, it might already be started by that DE. But if it is not, although firefox-57 managed to start it, firefox-58 did not. If you run [**firefox**]{.command} from a terminal and this problem is present, trying to play sound will encounter error messages warning `Can't get cubeb context!`{.literal}

The fix for this is to close firefox, start pulseaudio to check it does start (if not, read the information on Configuring in [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}) and restart firefox to check it is working. If it now works, add the following to your `~/.xinitrc`{.filename}: [`pulseaudio --verbose --log-target=journald&`{.literal}]{.phrase} (unfortunately, on some systems this does not work).

You may wish to use multiple profiles within firefox. To do that, invoke firefox as [**firefox --ProfileManager**]{.command}. You can also check which profile is currently in use from [**about:profiles**]{.command}.

Although WebRender (using the GPU for compositing) is not used by default, it now appears to work well on supported hardware (ATI, NVIDIA and Intel GPUs with Mesa-18 or later). For an explanation, please see [hacks.mozilla.org](https://hacks.mozilla.org/2017/10/the-whole-web-at-maximum-fps-how-webrender-gets-rid-of-jank/){.ulink}. The only downside seems to be that on a machine with limited RAM it might use more RAM.

To check if WebRender is being used, look in about:support. In the Graphics section, Compositing will either show 'Basic' (i.e. not in use) or 'WebRender'. To enable it, go to about:config and change gfx.webrender.all to True. You will need to restart firefox.

It may be useful to mention the processes from firefox which can appear in [**top**]{.command} - as well as firefox itself, there may be multiple Web Content processes, and now an RDD Process (Remote Data Decoder) which appears when playing web videos encoded with av1 (libdav1d). If WebRender has been enabled, a GPU Process will also appear when firefox has to repaint (e.g. scrolling, opening a new tab, or playing a video).
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [firefox]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous libraries, browser components, plugins, extensions, and helper modules installed in /usr/lib/firefox]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/firefox]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------------------------
  []{#firefox-prog}[[**firefox**]{.command}]{.term}   is a [GTK+-3]{.application} internet browser that uses the Mozilla Gecko rendering engine
  --------------------------------------------------- -------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](falkon.md "falkon-26.04.1"){accesskey="p"}

    falkon-26.04.1

-   [Next](seamonkey.md "Seamonkey-2.53.23"){accesskey="n"}

    Seamonkey-2.53.23

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
