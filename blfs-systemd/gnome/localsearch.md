::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](tinysparql.md "tinysparql-3.11.1"){accesskey="p"}

    tinysparql-3.11.1

-   [Next](gsound.md "GSound-1.0.3"){accesskey="n"}

    GSound-1.0.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#localsearch}localsearch-3.11.1 {#localsearch-3.11.1 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Localsearch {#introduction-to-localsearch .sect2}

The [Localsearch]{.application} package contains a filesystem indexer as well as a metadata extractor.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/localsearch/3.11/localsearch-3.11.1.tar.xz](https://download.gnome.org/sources/localsearch/3.11/localsearch-3.11.1.tar.xz){.ulink}

-   Download MD5 sum: 1406955c072af72776fdcbb9b12dc103

-   Download size: 4.3 MB

-   Estimated disk space required: 79 MB

-   Estimated build time: 0.2 SBU (with parallelism=4; add as much as 1.3 SBU for tests, dependent on disk speed)
:::

### Localsearch Dependencies

#### Required

[gexiv2-0.16.0](gexiv2.md "gexiv2-0.16.0"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, and [tinysparql-3.11.1](tinysparql.md "tinysparql-3.11.1"){.xref}

#### Recommended

[Exempi-2.6.6](../general/exempi.md "Exempi-2.6.6"){.xref}, [giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref}, [libgxps-0.3.2](../general/libgxps.md "libgxps-0.3.2"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}

#### Optional

[asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} (to build manual pages; note that manual pages are required for some tests), [CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [gst-plugins-good-1.28.3](../multimedia/gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref} (for one test), [libgsf-1.14.58](../general/libgsf.md "libgsf-1.14.58"){.xref}, [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} (for functional tests), [totem-pl-parser-3.26.7](totem-pl-parser.md "totem-pl-parser-3.26.7"){.xref}, [libcue](https://github.com/lipnitsk/libcue){.ulink}, [libitpcdata](https://libiptcdata.sourceforge.net/){.ulink}, [libosinfo](https://libosinfo.org){.ulink}, and [gupnp](https://gitlab.gnome.org/GNOME/gupnp){.ulink}
:::::

::: {.kernel lang="en"}
## []{#localsearch-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration, then recompile the kernel and reboot if necessary:

``` screen
Security options --->
  [*]        Enable different security models                         [SECURITY]
  [*]        Landlock support                                [SECURITY_LANDLOCK]
  # List more Linux Security Modules here (separated with comma) if needed,
  # for example 'landlock,lockdown,smack':
  (landlock) Ordered list of enabled LSMs                                  [LSM]
```
:::

::::: {.installation lang="en"}
## Installation of Localsearch {#installation-of-localsearch .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading this package from a version where it was known as [tracker-miners]{.application}, there are several files which will cause conflicts. Before installing this package, remove these files as the `root`{.systemitem} user:
:::

``` root
rm -fv /etc/xdg/autostart/tracker-miner-fs-3.desktop                           &&
rm -fv /usr/lib/systemd/user/tracker-miner-fs-3.service                        &&
rm -fv /usr/lib/systemd/user/tracker-miner-fs-control-3.service                &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Miner.Files.service &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Writeback.service   &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Miner.Files.Control.service
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you plan to run the tests, some timeouts are too short when using spinning disks. There are two places where timeouts are used: first, individual tests inside a group of tests have a default timeout of 10s. This can be changed by setting the environment variable `TRACKER_TESTS_AWAIT_TIMEOUT`{.envar} to the desired value when running the tests (see below). Second, a global timeout for a group of tests is fixed at configuration time. The default value in the `functional-tests`{.filename} directory (other directories have only short lived tests) may be increased with the following command (replace 200 with a value suitable for your machine):

``` userinput
sed -i s/120/200/ tests/functional-tests/meson.build
```
:::

Install [Localsearch]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr             \
            --buildtype=release       \
            -D man=false              \
            -D functional_tests=false \
            ..                        &&
ninja
```

To test the results, issue the following commands. Make sure that you adjust the individual test timeout to a value suitable for your machine, please read the note above for more details.

``` userinput
meson configure -D man=true -D functional_tests=true &&
ninja                                                &&
dbus-run-session env LC_ALL=C.UTF-8 TRACKER_TESTS_AWAIT_TIMEOUT=20 \
                 ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false`*: This switch prevents the build process from generating man pages. Omit this switch if you have [asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} installed and wish to generate and install the man pages.

*`-D functional_tests=false`*: This switch prevents the setup process to require [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and fail if it is not installed. You can remove this switch if it is installed.

`-D seccomp=false`{.option}: This option disables the seccomp system call filter. On some architectures, such as ARM, the functions that localsearch uses are not guarded properly, and localsearch will get killed with a SIGSYS signal as a result of this. Note that disabling seccomp may cause the system to be compromised worse in the event that a security vulnerability in localsearch or its dependencies is exploited, and it is [*NOT*]{.emphasis} recommended.

`-D landlock=disabled`{.option}: This switch disables the Landlock file access sandbox. Use it if you don't want to build the kernel with Landlock support. Note that disabling Landlock may cause the system to be compromised worse in the event that a security vulnerability in localsearch or its dependencies is exploited, and this is [*NOT*]{.emphasis} recommended.

`-D battery_detection=none`{.option}: Use this option if you have not installed the recommended dependency upower. Do not use this option if your system has a battery (laptop battery or UPS), or else localsearch may waste battery life when A/C power is unavailable.

`-D libav=disabled`{.option}: Use this option if you have not installed the recommended dependency ffmpeg. Note that using this will cause 7 test failures, and will also significantly hamper the functionality of this package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [localsearch]{.segbody}
:::

::: seg
**Installed Libraries:** [Several modules under /usr/lib/localsearch-3.0]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/localsearch-3.0 and /usr/share/localsearch3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -----------------------------------------------------------------------------
  []{#localsearch-prog}[[**localsearch**]{.command}]{.term}   starts, stops, restarts, and lists daemons responsible for indexing content
  ----------------------------------------------------------- -----------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](tinysparql.md "tinysparql-3.11.1"){accesskey="p"}

    tinysparql-3.11.1

-   [Next](gsound.md "GSound-1.0.3"){accesskey="n"}

    GSound-1.0.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
