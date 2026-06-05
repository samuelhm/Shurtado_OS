::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](qt6.md "Qt-6.11.1"){accesskey="p"}

    Qt-6.11.1

-   [Next](startup-notification.md "startup-notification-0.12"){accesskey="n"}

    startup-notification-0.12

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qtwebengine}QtWebEngine-6.11.1 {#qtwebengine-6.11.1 .sect1}

::::::::::::::::::::::: {.sect1 lang="en"}
::::::::: {.package lang="en"}
## Introduction to QtWebEngine {#introduction-to-qtwebengine .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This package has historically had frequent updates that address security vulnerabilities. To determine the latest status check the [BLFS Security Advisories](https://rivendell.linuxfromscratch.org/blfs/advisories/){.ulink}.
:::

[QtWebEngine]{.application} integrates [Chromium]{.application}'s web capabilities into Qt. It ships with its own copy of ninja which it uses for the build if it cannot find a system copy, and various copies of libraries from ffmpeg, icu, libvpx, and zlib (including libminizip) which have been forked by the [Chromium]{.application} developers.

This package and browsers using it may be useful if you need to use a website designed for Google Chrome or other Chromium-based browsers.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

QtWebEngine uses a forked copy of Chromium, and is therefore vulnerable to many issues found there. The Qt developers seem to fork a newer version for minor Qt versions, but because Chromium moves to newer versions very often, by the time the Qt developers get a forked version to pass their extended tests it is always an old version and security fixes from Chromium (some of which have a CVE number) can take several months to appear in a QtWebEngine release, even if the severity has been rated as Critical.

Therefore, you should be wary of using QtWebEngine in a sensitive context and should always update to the next release as soon as it appears in this book, even if is not flagged as a Security Update. Identifying which vulnerabilities have been fixed in a particular release requires pulling the appropriate 'based-NNN' branch just before the previous and current releases and is often impractical. Reports of fixed QTBUG items do not seem to be available and there is not any documentation in the tarball for changes after the qt-5 versions.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

By default, ninja will use all online CPUs +2 (if at least 4 exist), even if they are not available to the current task because the build terminal has been restricted with 'taskset'. In BLFS, this package takes more time to build than any other. In one example, the build of this package crashed at about the 90 percent point due to an out of memory problem on a system with 24 cores and 32 GB of memory.

To work around this, see the Command Explanations below.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.qt.io/official_releases/qt/6.11/6.11.1/submodules/qtwebengine-everywhere-src-6.11.1.tar.xz](https://download.qt.io/official_releases/qt/6.11/6.11.1/submodules/qtwebengine-everywhere-src-6.11.1.tar.xz){.ulink}

-   Download MD5 sum: ff89f051b0bfc80c261551f6a7872c66

-   Download size: 552 MB

-   Estimated disk space required: 12 GB (392 MB installed)

-   Estimated build time: 47 SBU (using parallelism=8)
:::

### qtwebengine Dependencies

#### Required

[Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [html5lib-1.1](../general/python-modules.md#html5lib "html5lib-1.1"){.xref}, [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref}, and [Qt-6.11.1](qt6.md "Qt-6.11.1"){.xref}

#### Recommended

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If these packages are not installed, the build process will compile and install its own (perhaps older) version, with the side effect of increasing build and installed disk space and build time.
:::

either [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref} or [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref} (or both), [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [Opus-1.6.1](../multimedia/opus.md "Opus-1.6.1"){.xref}, and [pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref}

#### Optional

[MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, [jsoncpp](https://github.com/open-source-parsers/jsoncpp/releases){.ulink}, [libsrtp](https://github.com/cisco/libsrtp/releases){.ulink}, and [snappy](https://google.github.io/snappy/){.ulink}
:::::::::

::: {.installation lang="en"}
## Installation of qtwebengine {#installation-of-qtwebengine .sect2}

Install [qtwebengine]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_MESSAGE_LOG_LEVEL=STATUS             \
      -D QT_FEATURE_webengine_system_ffmpeg=ON      \
      -D QT_FEATURE_webengine_system_icu=ON         \
      -D QT_FEATURE_webengine_proprietary_codecs=ON \
      -D QT_FEATURE_webengine_webrtc_pipewire=ON    \
      -D QT_BUILD_EXAMPLES_BY_DEFAULT=OFF           \
      -D QT_GENERATE_SBOM=OFF                       \
      -G Ninja ..                                   &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`CMAKE_MESSAGE_LOG_LEVEL=STATUS`*: Output interesting messages that project users might be interested in. Ideally these should be concise, no more than a single line, but still informative.

*`QT_FEATURE_webengine_system_*`*: Specify what external packages the system should use.

*`QT_BUILD_EXAMPLES_BY_DEFAULT=OFF`*: Do not build examples by default.

`NINJAJOBS=4 make`{.option}: If you patched system ninja in LFS to recognize the NINJAJOBS environment variable, this command will run system ninja with the specified number of jobs (i.e. 4). There are several reasons why you might want to use options like this this:

::: itemizedlist
-   Building on a subset of CPUs allows measuring the build time for a smaller number of processors, and/or running other CPU-intensive tasks at the same time. For an editor on a machine with a lot of CPUs, trying to measure the build time for a 4-CPU machine, `NINJAJOBS=4 make`{.option} will give a reasonable approximation (there is a short period where N+2 python and node jobs run).

-   On a machine with only 4 CPUs online, the default of scheduling N+2 jobs for qtwebengine is slower by between 3% and 7%, probably because of the size of the C++ files and their many includes and templates. Therefore, if in doubt set NINJAJOBS to the number of CPUs.

-   Reducing the number of cores being used on long running, CPU intensive packages may alleviate heat problems.

-   Reducing the number of cores will prevent potential out-of-memory problems on systems that do not have enough memory (or swap) when all cores are active. A suggested approach is to limit the number of cores to about one core for each 1.5 GB of combined RAM and swap space.
:::
::::

:::: {.configuration lang="en"}
## Configuring QtWebEngine {#configuring-qtwebengine .sect2}

::: {.sect3 lang="en"}
### []{#qtwebengine-config}Configuration Information {#configuration-information .sect3}

If you are upgrading from an older minor version of this application, for some webpages to load you may need to clear the [*browser*]{.emphasis} caches, e.g. for [falkon]{.application} they will be found in `~/.cache/falkon/`{.filename}. You will need to do this if the browser starts to render the page and then changes to a blank tab with a message that something went wrong, and a button to Retry. Even after removing the old caches, you may need to retry a few times for each affected tab.

If a browser using this package fails to run and when run from a term it reports 'Trace/breakpoint trap' that is probably a kernel configuration issue - there is no need to rebuild QtWebEngine, see the next section, recompile the kernel and reboot to the new kernel.
:::
::::

::: {.kernel lang="en"}
## []{#qtwebengine-kernel}Kernel Configuration {#kernel-configuration .sect2}

This package does not require any of the optional kernel namespace items, but if User namespace is enabled [(as happens in some unit files, for hardening)]{.phrase} PID namespace must also be enabled. In that case enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    # Enable or disable *both* of them:
    [ /*] User namespace                                               [USER_NS]
    [ /*] PID Namespaces                                                [PID_NS]
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [qtwebengine_convert_dict and QtWebEngineProcess (both in \$QT6DIR/libexec)]{.segbody}
:::

::: seg
**Installed Libraries:** [libQt6Pdf.so, libQt6PdfQuick.so, libQt6PdfWidgets.so, libQt6WebEngineCore.so, libQt6WebEngineiQuick.so, libQt6WebEngineQuickDelegatesQml.so, and libQt6WebEngineWidgets.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$QT6DIR/include/QtPdf, \$QT6DIR/include/QtPdfQuick, \$QT6DIR/include/QtPdfWidgets, \$QT6DIR/include/QtWebEngineCore, \$QT6DIR/include/QtWebEngineQuick, \$QT6DIR/include/QtWebEngineWidgets, \$QT6DIR/qml/QtWebEngine, and \$QT6DIR/translations/qtwebengine_locales]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  []{#qtwebengine_convert_dict}[[**qtwebengine_convert_dict**]{.command}]{.term}   converts hunspell dictionaries (`.dic`{.literal}) to Chromium format (`.bdic`{.literal})
  []{#QtWebEngineProcess}[[**QtWebEngineProcess**]{.command}]{.term}               is a libexec program which runs a zygote process (one that listens for spawn requests from a master process and will fork itself in response)
  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](qt6.md "Qt-6.11.1"){accesskey="p"}

    Qt-6.11.1

-   [Next](startup-notification.md "startup-notification-0.12"){accesskey="n"}

    startup-notification-0.12

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
