<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](falkon.md "falkon-26.04.1")

    falkon-26.04.1

-   [Next](seamonkey.md "Seamonkey-2.53.23")

    Seamonkey-2.53.23

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Firefox-140.11.0esr {#firefox-140.11.0esr}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Firefox {#introduction-to-firefox}

<span class="application">Firefox</span> is a stand-alone browser based on the <span class="application">Mozilla</span> codebase.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

This package has historically had frequent updates that address security vulnerabilities. To determine the latest status check the <a class="ulink" href="https://rivendell.linuxfromscratch.org/blfs/advisories/">BLFS Security Advisories</a>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz">https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz</a>

-   Download MD5 sum: 652763dfff0895c534f991a38b48c946

-   Download size: 610 MB

-   Estimated disk space required: 7.7 GB (233 MB installed) without tests

-   Estimated build time: 15 SBU using -j8, without tests
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-glibc-2.43.patch">https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-glibc-2.43.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-python_3.14_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-python_3.14_fixes-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-llvm_22-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/firefox-140.11.0esr-llvm_22-1.patch</a>
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The directory name is firefox-140.11.0

Extracting the tarball will reset the permissions of the current directory to 0755 if you have permission to do that. If you do this in a directory where the sticky bit is set, such as <code class="filename">/tmp</code> it will end with error messages:

<div class="literallayout">
tar: .: Cannot utime: Operation not permitted\
tar: .: Cannot change mode to rwxr-xr-t: Operation not permitted\
tar: Exiting with failure status due to previous errors\
</div>

This does finish with non-zero status, but it does <span class="emphasis"><em>NOT</em></span> mean there is a real problem. Do not untar as the <code class="systemitem">root</code> user in a directory where the sticky bit is set - that will unset it.

As with other large packages which use C++ (or rust), the SBU times to build this vary more widely than you might expect. The build times will increase significantly if your machine has to swap.

Although upstream prefer to use <span class="application">PulseAudio</span>, for the moment <span class="application">Alsa</span> can still be used. Both may need runtime configuration to get sound working.
</div>

### Firefox Dependencies

#### Required

<a class="xref" href="../general/cbindgen.md" title="Cbindgen-0.29.3">Cbindgen-0.29.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with clang, used for bindgen even if using gcc), <a class="xref" href="../general/nodejs.md" title="Node.js-24.16.0">nodejs-24.16.0</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a> (or <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a> if you edit the mozconfig; now deprecated by mozilla), in either case please read the Configuration Information, and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Recommended

<a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../multimedia/libaom.md" title="libaom-3.14.1">libaom-3.14.1</a>, <a class="xref" href="../basicnet/libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="../multimedia/libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>, and <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you don't install recommended dependencies, then internal copies of those packages will be used. They might be tested to work, but they can be out of date or contain security holes.
</div>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> (runtime, to play mov, mp3 or mp4 files), <a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a> (runtime), <a class="xref" href="../postlfs/liboauth.md" title="liboauth-1.0.3">liboauth-1.0.3</a>, <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> (runtime), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, <a class="xref" href="../basicnet/wireless_tools.md" title="Wireless Tools-29">Wireless Tools-29</a>, and <a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/firefox">https://wiki.linuxfromscratch.org/blfs/wiki/firefox</a>
</div>

<div class="installation" lang="en">
## Installation of Firefox {#installation-of-firefox}

The configuration of <span class="application">Firefox</span> is accomplished by creating a <code class="filename">mozconfig</code> file containing the desired configuration options. A default <code class="filename">mozconfig</code> is created below. To see the entire list of available configuration options (and an abbreviated description of some of them), issue <span class="command"><strong>./mach configure -- --help \| less</strong></span>. You may also wish to review the entire file and uncomment any other desired options. Create the file by issuing the following command:

```bash
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

A patch is needed to fix building with glibc-2.43. This patch changes the vendored Rust crate, so the build system must be changed to make <span class="command"><strong>cargo</strong></span> skip the checksum verification:

```bash
patch -Np1 -i ../firefox-140.11.0esr-glibc-2.43.patch &&

sed -e '/patch.crates-io/a glslopt={path="third_party/rust/glslopt"}' \
    -i Cargo.toml &&
 
sed -i '/name = "glslopt"/,/^$/{/source/d;/checksum/d}' Cargo.lock
```

Next, fix building this package with Python-3.14:

```bash
patch -Np1 -i ../firefox-140.11.0esr-python_3.14_fixes-1.patch
```

Next, fix building this package with LLVM-22:

```bash
patch -Np1 -i ../firefox-140.11.0esr-llvm_22-1.patch
```

If you are building with system ICU-78.1 or later, update one file:

```bash
sed -i '/VIRAMA = 47/a CLASS_CHARACTER,' intl/lwbrk/LineBreaker.cpp
```

If the geolocation APIs are needed:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The Google API Key below is specific to LFS. If using these instructions for another distro, or if you intend to distribute binary copies of the software using these instructions, please obtain your own key following the instructions located at <a class="ulink" href="https://www.chromium.org/developers/how-tos/api-keys">https://www.chromium.org/developers/how-tos/api-keys</a>.
</div>

```bash
echo "AIzaSyDxKL42zsPjbke5O8_rPVpVrLrJ8aeE9rQ" > google-key
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that <code class="filename">/dev/shm</code> is mounted. If you do not do this, the <span class="application">Python</span> configuration will fail with a traceback report referencing <code class="filename">/usr/lib/pythonN.N/multiprocessing/synchronize.py</code>. As the <code class="systemitem">root</code> user, run:

```bash
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```
</div>

Compile <span class="application">Firefox</span> by issuing the following commands:

```bash
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
export MOZBUILD_STATE_PATH=${PWD}/mozbuild          &&
./mach build
```

The <code class="filename">mozconfig</code> above disables the tests because they use a lot more time and disk space for no obvious benefit. If you have nevertheless enabled them, you can run the tests by executing <span class="command"><strong>./mach gtest</strong></span>. This will require a network connection, and to be run from within an Xorg session - there is a popup dialog when it fails to connect to ALSA (that does not create a failed test). One or two tests will fail. To see the details of the failure(s) you will need to log the output from that command so that you can review it.

Now, as the <code class="systemitem">root</code> user:

```bash
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
./mach install
```

Empty the environment variables which were set above:

```bash
unset MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE
unset MOZBUILD_STATE_PATH
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>export MOZBUILD_STATE_PATH=\${PWD}/mozbuild</strong></span>: The build tells you that it intends to create <code class="filename">~/.mozbuild</code>, and offer you an option to press \<ENTER\> to accept this, or Ctrl-C to cancel and restart the build after specifying the directory. In practice, the message may not appear until after \<ENTER\> is keyed, i.e. the build stalls.

That directory is used for a (probably random) telemetry identifier. Creating this directory within the build directory and deleting it after the installation prevents it being used.

<span class="command"><strong>MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none</strong></span>: Use the system python to create a virtual environment for <span class="command"><strong>mach</strong></span> without downloading any python wheels and without using the system python modules. This prevents version mismatches between system modules and bundled ones.

<code class="option">./mach build --verbose</code>: Use this alternative if you need details of which files are being compiled, together with any C or C++ flags being used. But do not add '--verbose' to the install command since it is not accepted there.

<code class="option">./mach build -jN</code>: The build should, by default, use all the online CPU cores. If using all the cores causes the build to swap because you have insufficient memory, using fewer cores can be faster.

<code class="envar">CC=gcc CXX=g++</code>: BLFS used to prefer to use gcc and g++ instead of upstream's defaults of the <span class="application">clang</span> programs. With the release of gcc-12 the build takes longer with gcc and g++, primarily because of extra warnings, and is bigger. Set these environment variables <span class="emphasis"><em>before you run the configure script</em></span> if you wish to continue to use gcc, g++. Building with GCC on i?86 is currently broken.
</div>

<div class="configuration" lang="en">
## Configuring Firefox {#configuring-firefox}

If you use a desktop environment like <span class="application">Gnome</span> or <span class="application">KDE</span> you may want to create a <code class="filename">firefox.desktop</code> file so that <span class="application">Firefox</span> appears in the panel's menus. As the <code class="systemitem">root</code> user:

```bash
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

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The application settings for firefox are accessible by keying <span class="command"><strong>about:config</strong></span> in the address bar.

Occasionally, getting working sound in <span class="application">firefox</span> can be a problem. Although upstream prefers pulseaudio, on balance using <span class="application">Alsa</span> may be easier.

If you enabled <span class="application">Alsa</span> for sound, you may need to alter one variable to get working sound. If you run <span class="command"><strong>firefox</strong></span> from a terminal and try to play something with sound you might encounter error messages like:

<code class="literal">Sandbox: seccomp sandbox violation: pid 3941, tid 4030, syscall 16, args 48 2147767296 139909894784796 0 0 0.</code>

That was on x86_64, on i686 the syscall number is 54. To allow this syscall, in <span class="command"><strong>about:config</strong></span> change <span class="command"><strong>security.sandbox.content.syscall_whitelist</strong></span> to 16 (or 54 if using i686).

If you use <span class="command"><strong>pulseaudio</strong></span> in a Desktop Environment, it might already be started by that DE. But if it is not, although firefox-57 managed to start it, firefox-58 did not. If you run <span class="command"><strong>firefox</strong></span> from a terminal and this problem is present, trying to play sound will encounter error messages warning <code class="literal">Can't get cubeb context!</code>

The fix for this is to close firefox, start pulseaudio to check it does start (if not, read the information on Configuring in <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>) and restart firefox to check it is working. If it now works, add the following to your <code class="filename">~/.xinitrc</code>: <span class="phrase"><code class="literal">pulseaudio --verbose --log-target=journald&</code></span> (unfortunately, on some systems this does not work).

You may wish to use multiple profiles within firefox. To do that, invoke firefox as <span class="command"><strong>firefox --ProfileManager</strong></span>. You can also check which profile is currently in use from <span class="command"><strong>about:profiles</strong></span>.

Although WebRender (using the GPU for compositing) is not used by default, it now appears to work well on supported hardware (ATI, NVIDIA and Intel GPUs with Mesa-18 or later). For an explanation, please see <a class="ulink" href="https://hacks.mozilla.org/2017/10/the-whole-web-at-maximum-fps-how-webrender-gets-rid-of-jank/">hacks.mozilla.org</a>. The only downside seems to be that on a machine with limited RAM it might use more RAM.

To check if WebRender is being used, look in about:support. In the Graphics section, Compositing will either show 'Basic' (i.e. not in use) or 'WebRender'. To enable it, go to about:config and change gfx.webrender.all to True. You will need to restart firefox.

It may be useful to mention the processes from firefox which can appear in <span class="command"><strong>top</strong></span> - as well as firefox itself, there may be multiple Web Content processes, and now an RDD Process (Remote Data Decoder) which appears when playing web videos encoded with av1 (libdav1d). If WebRender has been enabled, a GPU Process will also appear when firefox has to repaint (e.g. scrolling, opening a new tab, or playing a video).
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">firefox</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Numerous libraries, browser components, plugins, extensions, and helper modules installed in /usr/lib/firefox</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/firefox</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------------------------
  <a id="firefox-prog"></a><span class="command"><span class="term"><strong>firefox</strong></span></span>   is a <span class="application">GTK+-3</span> internet browser that uses the Mozilla Gecko rendering engine
  --------------------------------------------------- -------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](falkon.md "falkon-26.04.1")

    falkon-26.04.1

-   [Next](seamonkey.md "Seamonkey-2.53.23")

    Seamonkey-2.53.23

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
