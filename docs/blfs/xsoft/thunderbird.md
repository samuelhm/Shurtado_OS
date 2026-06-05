<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](rxvt-unicode.md "rxvt-unicode-9.31")

    rxvt-unicode-9.31

-   [Next](tigervnc.md "Tigervnc-1.16.0")

    Tigervnc-1.16.0

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Thunderbird-140.11.0esr {#thunderbird-140.11.0esr}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Thunderbird {#introduction-to-thunderbird}

<span class="application">Thunderbird</span> is a stand-alone mail/news client based on the <span class="application">Mozilla</span> codebase. It uses the Gecko rendering engine to enable it to display and compose HTML emails.

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
-   Download (HTTP): <a class="ulink" href="https://archive.mozilla.org/pub/thunderbird/releases/140.11.0esr/source/thunderbird-140.11.0esr.source.tar.xz">https://archive.mozilla.org/pub/thunderbird/releases/140.11.0esr/source/thunderbird-140.11.0esr.source.tar.xz</a>

-   Download MD5 sum: 1198213ae8b38f75f424cd59e5ff16b7

-   Download size: 724 MB

-   Estimated disk space required: 8.9 GB (267 MB installed)

-   Estimated build time: 16 SBU (on a 8-core machine)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-python_3.14_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-python_3.14_fixes-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-glibc-2.43.patch">https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-glibc-2.43.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-llvm_22-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-llvm_22-1.patch</a>
</div>

### Thunderbird Dependencies

#### Required

<a class="xref" href="../general/cbindgen.md" title="Cbindgen-0.29.3">Cbindgen-0.29.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> including clang, <a class="xref" href="../general/nodejs.md" title="Node.js-24.16.0">nodejs-24.16.0</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a> (or <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a> if you edit the mozconfig; although it is now deprecated by mozilla), and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Recommended

<a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>, <a class="xref" href="../multimedia/libaom.md" title="libaom-3.14.1">libaom-3.14.1</a>, <a class="xref" href="../basicnet/libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="../multimedia/libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>, <a class="xref" href="../general/nspr.md" title="NSPR-4.39">NSPR-4.39</a>, and <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you don't install recommended dependencies, then internal copies of those packages will be used. They might be tested to work, but they can be out of date or contain security holes.
</div>

#### Optional

<a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> (runtime), <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, <a class="xref" href="../basicnet/wireless_tools.md" title="Wireless Tools-29">Wireless Tools-29</a>, and <a class="ulink" href="https://facebook.github.io/watchman/">watchman</a>
</div>

<div class="installation" lang="en">
## Installation of Thunderbird {#installation-of-thunderbird}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The build process for Thunderbird can use 8 GB or more of RAM when linking. Make sure that you have adequate swap or RAM before continuing.
</div>

At first, fix building this package with Python-3.14:

```bash
patch -Np1 -i ../thunderbird-140.11.0esr-python_3.14_fixes-1.patch
```

Remove checksums from cargo crates for files that don't exist:

```bash
find -name .cargo-checksum.json | \
     xargs sed -ri 's|"[^"]*.gitmodules":"[^"]*",?||'
```

Fix building this package with glibc-2.43 and adapt the checksums:

```bash
patch -Np1 -i ../thunderbird-140.11.0esr-glibc-2.43.patch &&
sed '/patch.crates-io/a glslopt={path="../third_party/rust/glslopt"}' \
    -i comm/rust/Cargo.toml &&
sed '/name = "glslopt"/,/^$/{/source/d;/checksum/d}' \
    -i comm/rust/Cargo.lock
```

Next, fix building this package with LLVM-22:

```bash
patch -Np1 -i ../thunderbird-140.11.0esr-llvm_22-1.patch
```

The configuration of <span class="application">Thunderbird</span> is accomplished by creating a <code class="filename">mozconfig</code> file containing the desired configuration options. A default <code class="filename">mozconfig</code> is created below. To see the entire list of available configuration options (and a brief description of each), issue <span class="command"><strong>./mach configure -- --help \| less</strong></span>. Create the file with the following command:

```bash
cat > mozconfig << "EOF"
# If you have a multicore machine, all cores will be used.

# If you have installed wireless-tools comment out this line:
ac_add_options --disable-necko-wifi

# If you wish to use libproxy to determine proxy server information, you will
# need to install the libproxy package and then uncomment the option below:
#ac_add_options --enable-libproxy

# Uncomment the following option if you have not installed PulseAudio
#ac_add_options --enable-audio-backends=alsa

# Comment out following options if you have not installed
# recommended dependencies:
ac_add_options --with-system-av1
ac_add_options --with-system-libevent
ac_add_options --with-system-libvpx
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-webp

# Thunderbird provides a copy of dav1d if it has not been installed. If you
# have not installed nasm and ffmpeg, uncomment the following line:
#ac_add_options --disable-av1

# The BLFS editors recommend not changing anything below this line:
ac_add_options --prefix=/usr
ac_add_options --enable-application=comm/mail

ac_add_options --disable-crashreporter
ac_add_options --disable-updater
ac_add_options --disable-debug
ac_add_options --disable-debug-symbols
ac_add_options --disable-tests

# This enables SIMD optimization in the shipped encoding_rs crate.
ac_add_options --enable-rust-simd

ac_add_options --enable-strip
ac_add_options --enable-install-strip

# You cannot distribute the binary if you do this.
ac_add_options --enable-official-branding

ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman

ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib

# Using sandboxed wasm libraries has been moved to all builds instead
# of only mozilla automation builds. It requires extra llvm packages
# and was reported to seriously slow the build. Disable it.
ac_add_options --without-wasm-sandboxed-libraries
EOF
```

Now invoke the Python <span class="command"><strong>mach</strong></span> script to compile <span class="application">Thunderbird</span>:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that <code class="filename">/dev/shm</code> is mounted. If you do not do this, the <span class="application">Python</span> configuration will fail with a traceback report referencing <code class="filename">/usr/lib/pythonN.N/multiprocessing/synchronize.py</code>. As the <code class="systemitem">root</code> user, run:

```bash
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```
</div>

```bash
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
export MOZBUILD_STATE_PATH=$(pwd)/mozbuild          &&
./mach build
```

This package does not come with a test suite.

Install <span class="application">Thunderbird</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none ./mach install
```

Empty the environment variables which were set above:

```bash
unset MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE &&
unset MOZBUILD_STATE_PATH
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none</strong></span>: Use the system python to create a virtual environment for <span class="command"><strong>mach</strong></span> without downloading any python wheels nor using the system python modules. This prevent version mismatches between system modules and bundled ones.

<code class="option">./mach build --verbose</code>: Use this alternative if you need details of which files are being compiled, together with any C or C++ flags being used.

<code class="option">./mach build -jN</code>: The build should, by default, use all the online CPU cores. If using all the cores causes the build to swap because you have insufficient memory, using fewer cores can be faster.

<code class="envar">CC=gcc CXX=g++</code>: BLFS used to prefer to use gcc and g++ instead of upstream's defaults of the <span class="application">clang</span> programs. With the release of gcc-12 the build takes longer with gcc and g++, primarily because of extra warnings, and is bigger. Set these environment variables <span class="emphasis"><em>before you run the configure script</em></span> if you wish to continue to use gcc, g++. Building with GCC on i?86 is currently broken.
</div>

<div class="configuration" lang="en">
## Configuring Thunderbird {#configuring-thunderbird}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If your Window Manager or Desktop Environment does not allow you to configure a default browser, you can add a configuration parameter to <span class="application">Thunderbird</span> so that a browser will start when you click on an Internet/intranet/local URL. The procedure to check or modify any of the configuration parameters is quite simple and the instructions here can be used to view or modify any of the parameters.

First, open the configuration dialog by opening the <span class="quote">“<span class="quote">Edit</span>”</span> drop-down menu. Choose <span class="quote">“<span class="quote">Settings</span>”</span> and then scroll down to the bottom of the page. Then, click the <span class="quote">“<span class="quote">Config Editor</span>”</span> button. Click on the <span class="quote">“<span class="quote">I accept the risk!</span>”</span> button. This will display a list of the configuration preferences and information related to each one. You can use the <span class="quote">“<span class="quote">Filter:</span>”</span> bar to enter search criteria and narrow down the listed items. Changing a preference can be done using two methods. One, if the preference has a boolean value (True/False), simply double-click on the preference to toggle the value and two, for other preferences simply right-click on the desired line, choose <span class="quote">“<span class="quote">Modify</span>”</span> from the menu and change the value. Creating new preference items is accomplished in the same way, except choose <span class="quote">“<span class="quote">New</span>”</span> from the menu and provide the desired data into the fields when prompted.

If you use a desktop environment such as <span class="application">GNOME</span> or <span class="application">KDE</span>, a desktop file <code class="filename">thunderbird.desktop</code> may be created, in order to include a <span class="application">“<span class="quote"><span class="quote">Thunderbird</span></span>”</span> entry in the menu. Run the following commands as the <code class="systemitem">root</code> user:

```bash
mkdir -pv /usr/share/{applications,pixmaps} &&

cat > /usr/share/applications/thunderbird.desktop << "EOF" &&
[Desktop Entry]
Name=Thunderbird Mail
Comment=Send and receive mail with Thunderbird
GenericName=Mail Client
Exec=thunderbird %u
Terminal=false
Type=Application
Icon=thunderbird
Categories=Network;Email;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;x-scheme-handler/mailto;
StartupNotify=true
EOF

ln -sfv /usr/lib/thunderbird/chrome/icons/default/default256.png \
        /usr/share/pixmaps/thunderbird.png
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">thunderbird</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Numerous libraries and modules in the /usr/lib/thunderbird directory</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/thunderbird</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------------
  <a id="thunderbird-prog"></a><span class="command"><span class="term"><strong>thunderbird</strong></span></span>   is <span class="application">Mozilla</span>'s email and newsgroup client
  ----------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rxvt-unicode.md "rxvt-unicode-9.31")

    rxvt-unicode-9.31

-   [Next](tigervnc.md "Tigervnc-1.16.0")

    Tigervnc-1.16.0

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
