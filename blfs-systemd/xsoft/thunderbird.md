::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](rxvt-unicode.md "rxvt-unicode-9.31"){accesskey="p"}

    rxvt-unicode-9.31

-   [Next](tigervnc.md "Tigervnc-1.16.0"){accesskey="n"}

    Tigervnc-1.16.0

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#thunderbird}Thunderbird-140.11.0esr {#thunderbird-140.11.0esr .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
:::::::: {.package lang="en"}
## Introduction to Thunderbird {#introduction-to-thunderbird .sect2}

[Thunderbird]{.application} is a stand-alone mail/news client based on the [Mozilla]{.application} codebase. It uses the Gecko rendering engine to enable it to display and compose HTML emails.

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
-   Download (HTTP): [https://archive.mozilla.org/pub/thunderbird/releases/140.11.0esr/source/thunderbird-140.11.0esr.source.tar.xz](https://archive.mozilla.org/pub/thunderbird/releases/140.11.0esr/source/thunderbird-140.11.0esr.source.tar.xz){.ulink}

-   Download MD5 sum: 1198213ae8b38f75f424cd59e5ff16b7

-   Download size: 724 MB

-   Estimated disk space required: 8.9 GB (267 MB installed)

-   Estimated build time: 16 SBU (on a 8-core machine)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-python_3.14_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-python_3.14_fixes-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-glibc-2.43.patch](https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-glibc-2.43.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-llvm_22-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/thunderbird-140.11.0esr-llvm_22-1.patch){.ulink}
:::

### Thunderbird Dependencies

#### Required

[Cbindgen-0.29.3](../general/cbindgen.md "Cbindgen-0.29.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} including clang, [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref} (or [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref} if you edit the mozconfig; although it is now deprecated by mozilla), and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Recommended

[dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref}, [libaom-3.14.1](../multimedia/libaom.md "libaom-3.14.1"){.xref}, [libevent-2.1.12](../basicnet/libevent.md "libevent-2.1.12"){.xref}, [libvpx-1.16.0](../multimedia/libvpx.md "libvpx-1.16.0"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, [NSPR-4.39](../general/nspr.md "NSPR-4.39"){.xref}, and [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you don't install recommended dependencies, then internal copies of those packages will be used. They might be tested to work, but they can be out of date or contain security holes.
:::

#### Optional

[libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref} (runtime), [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, [Wireless Tools-29](../basicnet/wireless_tools.md "Wireless Tools-29"){.xref}, and [watchman](https://facebook.github.io/watchman/){.ulink}
::::::::

::::: {.installation lang="en"}
## Installation of Thunderbird {#installation-of-thunderbird .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The build process for Thunderbird can use 8 GB or more of RAM when linking. Make sure that you have adequate swap or RAM before continuing.
:::

At first, fix building this package with Python-3.14:

``` userinput
patch -Np1 -i ../thunderbird-140.11.0esr-python_3.14_fixes-1.patch
```

Remove checksums from cargo crates for files that don't exist:

``` userinput
find -name .cargo-checksum.json | \
     xargs sed -ri 's|"[^"]*.gitmodules":"[^"]*",?||'
```

Fix building this package with glibc-2.43 and adapt the checksums:

``` userinput
patch -Np1 -i ../thunderbird-140.11.0esr-glibc-2.43.patch &&
sed '/patch.crates-io/a glslopt={path="../third_party/rust/glslopt"}' \
    -i comm/rust/Cargo.toml &&
sed '/name = "glslopt"/,/^$/{/source/d;/checksum/d}' \
    -i comm/rust/Cargo.lock
```

Next, fix building this package with LLVM-22:

``` userinput
patch -Np1 -i ../thunderbird-140.11.0esr-llvm_22-1.patch
```

The configuration of [Thunderbird]{.application} is accomplished by creating a `mozconfig`{.filename} file containing the desired configuration options. A default `mozconfig`{.filename} is created below. To see the entire list of available configuration options (and a brief description of each), issue [**./mach configure -- --help \| less**]{.command}. Create the file with the following command:

``` userinput
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

Now invoke the Python [**mach**]{.command} script to compile [Thunderbird]{.application}:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that `/dev/shm`{.filename} is mounted. If you do not do this, the [Python]{.application} configuration will fail with a traceback report referencing `/usr/lib/pythonN.N/multiprocessing/synchronize.py`{.filename}. As the `root`{.systemitem} user, run:

``` userinput
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```
:::

``` userinput
export MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none &&
export MOZBUILD_STATE_PATH=$(pwd)/mozbuild          &&
./mach build
```

This package does not come with a test suite.

Install [Thunderbird]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none ./mach install
```

Empty the environment variables which were set above:

``` userinput
unset MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE &&
unset MOZBUILD_STATE_PATH
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none**]{.command}: Use the system python to create a virtual environment for [**mach**]{.command} without downloading any python wheels nor using the system python modules. This prevent version mismatches between system modules and bundled ones.

`./mach build --verbose`{.option}: Use this alternative if you need details of which files are being compiled, together with any C or C++ flags being used.

`./mach build -jN`{.option}: The build should, by default, use all the online CPU cores. If using all the cores causes the build to swap because you have insufficient memory, using fewer cores can be faster.

`CC=gcc CXX=g++`{.envar}: BLFS used to prefer to use gcc and g++ instead of upstream's defaults of the [clang]{.application} programs. With the release of gcc-12 the build takes longer with gcc and g++, primarily because of extra warnings, and is bigger. Set these environment variables [*before you run the configure script*]{.emphasis} if you wish to continue to use gcc, g++. Building with GCC on i?86 is currently broken.
:::

:::: {.configuration lang="en"}
## Configuring Thunderbird {#configuring-thunderbird .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

If your Window Manager or Desktop Environment does not allow you to configure a default browser, you can add a configuration parameter to [Thunderbird]{.application} so that a browser will start when you click on an Internet/intranet/local URL. The procedure to check or modify any of the configuration parameters is quite simple and the instructions here can be used to view or modify any of the parameters.

First, open the configuration dialog by opening the [“[Edit]{.quote}”]{.quote} drop-down menu. Choose [“[Settings]{.quote}”]{.quote} and then scroll down to the bottom of the page. Then, click the [“[Config Editor]{.quote}”]{.quote} button. Click on the [“[I accept the risk!]{.quote}”]{.quote} button. This will display a list of the configuration preferences and information related to each one. You can use the [“[Filter:]{.quote}”]{.quote} bar to enter search criteria and narrow down the listed items. Changing a preference can be done using two methods. One, if the preference has a boolean value (True/False), simply double-click on the preference to toggle the value and two, for other preferences simply right-click on the desired line, choose [“[Modify]{.quote}”]{.quote} from the menu and change the value. Creating new preference items is accomplished in the same way, except choose [“[New]{.quote}”]{.quote} from the menu and provide the desired data into the fields when prompted.

If you use a desktop environment such as [GNOME]{.application} or [KDE]{.application}, a desktop file `thunderbird.desktop`{.filename} may be created, in order to include a [“[[Thunderbird]{.application}]{.quote}”]{.quote} entry in the menu. Run the following commands as the `root`{.systemitem} user:

``` root
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
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [thunderbird]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous libraries and modules in the /usr/lib/thunderbird directory]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/thunderbird]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------------
  []{#thunderbird-prog}[[**thunderbird**]{.command}]{.term}   is [Mozilla]{.application}'s email and newsgroup client
  ----------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](rxvt-unicode.md "rxvt-unicode-9.31"){accesskey="p"}

    rxvt-unicode-9.31

-   [Next](tigervnc.md "Tigervnc-1.16.0"){accesskey="n"}

    Tigervnc-1.16.0

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
