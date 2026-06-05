::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](firefox.md "Firefox-140.11.0esr"){accesskey="p"}

    Firefox-140.11.0esr

-   [Next](other.md "Other X-based Programs"){accesskey="n"}

    Other X-based Programs

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#seamonkey}Seamonkey-2.53.23 {#seamonkey-2.53.23 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::::::: {.package lang="en"}
## Introduction to Seamonkey {#introduction-to-seamonkey .sect2}

[Seamonkey]{.application} is a browser suite, a descendant of [Netscape]{.application}. It includes the browser, composer, mail and news clients, and an IRC client.

It is the community-driven follow-on to the Mozilla Application Suite, created after Mozilla decided to focus on separate applications for browsing and e-mail. Those applications are [Firefox-140.11.0](firefox.md "Firefox-140.11.0esr"){.xref} and [Thunderbird-140.11.0esr](thunderbird.md "Thunderbird-140.11.0esr"){.xref}.

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
-   Download (HTTP): [https://archive.seamonkey-project.org/releases/2.53.23/source/seamonkey-2.53.23.source.tar.xz](https://archive.seamonkey-project.org/releases/2.53.23/source/seamonkey-2.53.23.source.tar.xz){.ulink}

-   Download MD5 sum: e4aee41da61978e44a83b549a360c3b5

-   Download size: 239 MB

-   Estimated disk space required: 3 GB (138 MB installed)

-   Estimated build time: 6.3 SBU (with parallelism=8)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/seamonkey-2.53.23-libvpx_security_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/seamonkey-2.53.23-libvpx_security_fixes-1.patch){.ulink}

-   Recommended patch (required for building with system ICU-75 or newer): [https://www.linuxfromscratch.org/patches/blfs/svn/seamonkey-2.53.23-cxx17-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/seamonkey-2.53.23-cxx17-1.patch){.ulink}
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tarball [*seamonkey-2.53.23.source.tar.xz*]{.emphasis} will untar to [*seamonkey-2.53.23*]{.emphasis} directory.
:::

### Seamonkey Dependencies

#### Required

[Cbindgen-0.29.3](../general/cbindgen.md "Cbindgen-0.29.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [Python-3.11.1](../general/python311.md "Python-3.11.1"){.xref}, [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, and [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}

#### Recommended

[ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libevent-2.1.12](../basicnet/libevent.md "libevent-2.1.12"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (with clang), [NSPR-4.39](../general/nspr.md "NSPR-4.39"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, and [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you don't install recommended dependencies, then internal copies of those packages will be used. They might be tested to work, but they can be out of date or contain security holes.
:::

#### Optional

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [dbus-glib-0.114](../general/dbus-glib.md "dbus-glib-0.114"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, [Wireless Tools-29](../basicnet/wireless_tools.md "Wireless Tools-29"){.xref}, [Hunspell](https://hunspell.sourceforge.net/){.ulink} and [Watchman](https://facebook.github.io/watchman/){.ulink}
:::::::::

::::: {.installation lang="en"}
## Installation of Seamonkey {#installation-of-seamonkey .sect2}

The configuration of [Seamonkey]{.application} is accomplished by creating a `mozconfig`{.filename} file containing the desired configuration options. A default `mozconfig`{.filename} file is created below. To see the entire list of available configuration options (and an abbreviated description of each one), issue [**python3 configure.py --help**]{.command}. You may also wish to review the entire file and uncomment any other desired options. Create the file by issuing the following command:

``` userinput
cat > mozconfig << "EOF"
# If you have a multicore machine, all cores will be used

# If you have installed DBus-Glib comment out this line:
ac_add_options --disable-dbus

# If you have installed dbus-glib, and you have installed (or will install)
# wireless-tools, and you wish to use geolocation web services, comment out
# this line
ac_add_options --disable-necko-wifi


# If you wish to use libproxy to determine proxy server information, you will
# need to install the libproxy package and then uncomment the option below:
#ac_add_options --enable-libproxy

# Uncomment these lines if you have installed optional dependencies:
#ac_add_options --enable-system-hunspell

# Uncomment the following option if you have not installed PulseAudio
#ac_add_options --disable-pulseaudio
# and uncomment this if you installed alsa-lib instead of PulseAudio
#ac_add_options --enable-alsa

# Comment out following options if you have not installed
# recommended dependencies:
ac_add_options --with-system-icu
ac_add_options --with-system-libevent
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-webp

# Disabling debug symbols makes the build much smaller and a little
# faster. Comment this if you need to run a debugger.
ac_add_options --disable-debug-symbols

# The elf-hack is reported to cause failed installs (after successful builds)
# on some machines. It is supposed to improve startup time and it shrinks
# libxul.so by a few MB.  With recent Binutils releases the linker already
# supports a much safer and generic way for this.
ac_add_options --disable-elf-hack
ac_add_options --enable-linker=bfd
export LDFLAGS="$LDFLAGS -Wl,-z,pack-relative-relocs"

# Seamonkey has some additional features that are not turned on by default,
# such as an IRC client, calendar, and DOM Inspector. The DOM Inspector
# aids with designing web pages. Comment these options if you do not
# desire these features.
ac_add_options --enable-calendar
ac_add_options --enable-dominspector
ac_add_options --enable-irc

# The BLFS editors recommend not changing anything below this line:
ac_add_options --prefix=/usr
ac_add_options --enable-application=comm/suite

ac_add_options --disable-crashreporter
ac_add_options --disable-updater
ac_add_options --disable-tests

# The SIMD code relies on the unmaintained packed_simd crate which
# fails to build with Rustc >= 1.78.0.  We may re-enable it once
# Mozilla ports the code to use std::simd and std::simd is stabilized.
ac_add_options --disable-rust-simd

ac_add_options --enable-strip
ac_add_options --enable-install-strip

# You cannot distribute the binary if you do this.
ac_add_options --enable-official-branding

ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman
ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib

export CC=clang CXX=clang++
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that `/dev/shm`{.filename} is mounted. If you do not do this, the [Python]{.application} configuration will fail with a traceback report referencing `/usr/lib/pythonN.N/multiprocessing/synchronize.py`{.filename}. As the `root`{.systemitem} user, run:

``` userinput
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```
:::

First, if you are building with system ICU, adapt the line break mapping for ICU-74 or later, apply a patch to build this package with the C++17 standard because the headers of ICU-75 or later require some C++17 features, fix a security issue in the bundled version of libvpx, and adapt the build system to use the correct library with ICU-76 or later:

``` userinput
(for i in {43..48}; do
   sed '/ZWJ/s/$/,CLASS_CHARACTER/' -i intl/lwbrk/LineBreaker.cpp || exit $?
done) &&

patch -Np1 -i ../seamonkey-2.53.23-cxx17-1.patch                 &&
patch -Np1 -i ../seamonkey-2.53.23-libvpx_security_fixes-1.patch &&

sed -i 's/icu-i18n/icu-uc &/' js/moz.configure
```

Next, remove a hunk of unused code violating the C++ standard. Clang has started to reject it even though it's unused since the 19.1.0 release:

``` userinput
sed -e '/ExclusiveData(ExclusiveData&&/,/^ *}/d' \
    -i js/src/threading/ExclusiveData.h
```

Next, fix a problem with the bundled 'distro' python module:

``` userinput
sed -e '1012 s/stderr=devnull/stderr=subprocess.DEVNULL/' \
    -e '1013 s/OSError/(OSError, subprocess.CalledProcessError)/' \
    -i third_party/python/distro/distro.py
```

Compile [Seamonkey]{.application} by running the following commands:

``` userinput
export PATH_PY311=/opt/python3.11/bin:$PATH &&
export MOZBUILD_STATE_PATH=${PWD}/mozbuild  &&
PATH=$PATH_PY311 AUTOCONF=true MACH_USE_SYSTEM_PYTHON=1 ./mach build
```

This package does not come with a test suite.

Install [Seamonkey]{.application} by issuing the following commands as the `root`{.systemitem} user:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If [**sudo**]{.command} or [**su**]{.command} is invoked for opening a shell running as the `root`{.systemitem} user, ensure `PATH_PY311`{.envar} is correctly passed or the following command will fail. For [**sudo**]{.command}, use the `--preserve-env=PATH_PY311`{.option} option. For [**su**]{.command}, do [*not*]{.emphasis} use the `-`{.option} or `--login`{.option} options.
:::

``` root
PATH=$PATH_PY311 MACH_USE_SYSTEM_PYTHON=1 ./mach install &&
chown -R 0:0 /usr/lib/seamonkey                          &&

cp -v $(find -name seamonkey.1 | head -n1) /usr/share/man/man1
```

Finally, unset temporary variables that were set above:

``` userinput
unset PATH_PY311 MOZBUILD_STATE_PATH
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export MOZBUILD_STATE_PATH=\${PWD}/mozbuild**]{.command}: The build tells you that it intends to create `~/.mozbuild`{.filename}, and offer you an option to press \<ENTER\> to accept this, or Ctrl-C to cancel and restart the build after specifying the directory. In practice, the message may not appear until after \<ENTER\> is keyed, i.e. the build stalls.

That directory is used for a (probably random) telemetry identifier. Creating this directory within the build directory and deleting it after the installation prevents it being used.

[**export CC=clang CXX=clang++**]{.command}: With the introduction of [gcc-12]{.application}, many more warnings are generated when compiling mozilla applications and that results in a much slower, and larger, build. Furthermore, building with GCC on i?86 is currently broken. Although upstream mozilla code defaults to using [llvm]{.application} unless overridden, the older configure code in [Seamonkey]{.application} defaults to gcc.

`./mach build --verbose`{.option}: Use this alternative if you need details of which files are being compiled, together with any C or C++ flags being used. But do not add '--verbose' to the install command, it is not accepted there.

`./mach build -jN`{.option}: The build should, by default, use all the online CPU cores. If using all the cores causes the build to swap because you have insufficient memory, using fewer cores can be faster.
:::

::: {.configuration lang="en"}
## Configuring Seamonkey {#configuring-seamonkey .sect2}

For installing various [Seamonkey]{.application} add-ons, refer to [Add-ons for Seamonkey](https://addons.thunderbird.net/en-US/seamonkey/){.ulink}.

Along with using the [“[Preferences]{.quote}”]{.quote} menu to configure [Seamonkey]{.application}'s options and preferences to suit individual tastes, finer grain control of many options is only available using a tool not available from the general menu system. To access this tool, you'll need to open a browser window and enter `about:config`{.systemitem} in the address bar. This will display a list of the configuration preferences and information related to each one. You can use the [“[Search:]{.quote}”]{.quote} bar to enter search criteria and narrow down the listed items. Changing a preference can be done using two methods. One, if the preference has a boolean value (True/False), simply double-click on the preference to toggle the value and two, for other preferences simply right-click on the desired line, choose [“[Modify]{.quote}”]{.quote} from the menu and change the value. Creating new preference items is accomplished in the same way, except choose [“[New]{.quote}”]{.quote} from the menu and provide the desired data into the fields when prompted.

If you use a desktop environment like [Gnome]{.application} or [KDE]{.application} you may wish to create a `seamonkey.desktop`{.filename} file so that [Seamonkey]{.application} appears in the panel's menus. If you didn't enable [Startup-Notification]{.application} in your mozconfig change the StartupNotify line to false. As the `root`{.systemitem} user:

``` root
mkdir -pv /usr/share/{applications,pixmaps}              &&

cat > /usr/share/applications/seamonkey.desktop << "EOF"
[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Seamonkey
Comment=The Mozilla Suite
Icon=seamonkey
Exec=seamonkey
Categories=Network;GTK;Application;Email;Browser;WebBrowser;News;
StartupNotify=true
Terminal=false
EOF

ln -sfv /usr/lib/seamonkey/chrome/icons/default/default128.png \
        /usr/share/pixmaps/seamonkey.png
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [seamonkey]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous libraries, browser, and email/newsgroup components, plugins, extensions, and helper modules installed in `/usr/lib/seamonkey`{.filename}]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/seamonkey]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------------------------
  []{#seamonkey-prog}[[**seamonkey**]{.command}]{.term}   is the Mozilla browser/email/newsgroup/chat client suite
  ------------------------------------------------------- ----------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](firefox.md "Firefox-140.11.0esr"){accesskey="p"}

    Firefox-140.11.0esr

-   [Next](other.md "Other X-based Programs"){accesskey="n"}

    Other X-based Programs

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
