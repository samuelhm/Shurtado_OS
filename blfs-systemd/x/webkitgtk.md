::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){accesskey="p"}

    Vulkan-Loader-1.4.350.0

-   [Next](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){accesskey="n"}

    xdg-desktop-portal-1.20.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#webkitgtk}WebKitGTK-2.52.0 {#webkitgtk-2.52.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to WebKitGTK {#introduction-to-webkitgtk .sect2}

The [WebKitGTK]{.application} package is a port of the portable web rendering engine [WebKit]{.application} to the [GTK-3]{.application} and [GTK-4]{.application} platforms.

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
-   Download (HTTP): [https://webkitgtk.org/releases/webkitgtk-2.52.0.tar.xz](https://webkitgtk.org/releases/webkitgtk-2.52.0.tar.xz){.ulink}

-   Download MD5 sum: cae3b10032127b283c91a57c0afe9e8b

-   Download size: 66 MB

-   Estimated disk space required: 1.4 GB (187 MB installed, add 182 MB for GTK-4)

-   Estimated build time: 23 SBU (for GTK-3, using parallelism=8, add 23 SBU for GTK-4)
:::

### WebKitGTK Dependencies

#### Required

[Cairo-1.18.4](cairo.md "Cairo-1.18.4"){.xref}, [CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [gst-plugins-bad-1.28.3](../multimedia/gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){.xref}, [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, [libsecret-0.21.7](../gnome/libsecret.md "libsecret-0.21.7"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}, [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref}, [unifdef-2.12](../general/unifdef.md "unifdef-2.12"){.xref}, and [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref}

#### Recommended

[bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref}, [enchant-2.8.16](../general/enchant.md "enchant-2.8.16"){.xref}, [GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref} (runtime), [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [hicolor-icon-theme-0.18](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}, [libavif-1.4.2](../general/libavif.md "libavif-1.4.2"){.xref}, [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, and [xdg-dbus-proxy-0.1.7](../general/xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, [WOFF2-1.0.2](../general/woff2.md "woff2-1.0.2"){.xref} (deprecated), [ccache](https://ccache.dev/){.ulink}, [flite](http://www.festvox.org/flite/){.ulink}, [Hyphen](https://sourceforge.net/projects/hunspell/files/Hyphen/){.ulink}, [libbacktrace](https://github.com/ianlancetaylor/libbacktrace){.ulink}, [libmanette](https://gnome.pages.gitlab.gnome.org/libmanette/){.ulink}, [libspiel](https://github.com/project-spiel/libspiel){.ulink}, and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}
::::::

:::: {.installation lang="en"}
## Installation of WebKitGTK {#installation-of-webkitgtk .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This package allows building with either GTK-3 or GTK-4, but not both in the same build. The GTK-4 version is needed for packages such as [Epiphany-50.4](../xsoft/epiphany.md "Epiphany-50.4"){.xref}. Other packages, such as [Balsa-2.6.5](../xsoft/balsa.md "Balsa-2.6.5"){.xref} or [Evolution-3.60.2](../gnome/evolution.md "Evolution-3.60.2"){.xref}, require the GTK-3 version. Both versions can be installed side by side on the same system. We give build instructions for both cases below, but the only difference is the setting of [**-D USE_GTK4**]{.command}

With the default [“[release]{.quote}”]{.quote} build configuration, some source files of this package require more than 4 GiB of RAM to be built. As the result, you should pass *`-j`*`<N>`** to [**ninja**]{.command} (replacing *`<N>`* with the quotient of the amount of available RAM and 4 GiB) to limit the number of parallel jobs and avoid the job from being killed by the kernel OOM killer.

On a 32-bit system, the sum of RAM and swap space used by a build job (in fact, any single process) cannot exceed 4 GiB. So if you are building this package on a 32-bit system, you must add the [**-D CMAKE_CXX_FLAGS_RELEASE="-O2 -DNDEBUG"**]{.command} option to the [**cmake**]{.command} to disable some optimizations which need a lot of memory to limit the memory usage of individual build jobs. Performance will be impacted slightly, but not at a level where it is noticeable during normal usage.
:::

If you want to install the GTK-3 version of [WebKitGTK]{.application}, run the following commands:

``` userinput
mkdir -vp build &&
cd        build &&

cmake -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D PORT=GTK                     \
      -D LIB_INSTALL_DIR=/usr/lib     \
      -D USE_LIBBACKTRACE=OFF         \
      -D USE_LIBHYPHEN=OFF            \
      -D ENABLE_GAMEPAD=OFF           \
      -D ENABLE_MINIBROWSER=ON        \
      -D ENABLE_DOCUMENTATION=OFF     \
      -D ENABLE_WEBDRIVER=OFF         \
      -D USE_WOFF2=OFF                \
      -D USE_GTK4=OFF                 \
      -D ENABLE_BUBBLEWRAP_SANDBOX=ON \
      -D USE_SYSPROF_CAPTURE=NO       \
      -D ENABLE_SPEECH_SYNTHESIS=OFF  \
      -W no-dev -G Ninja ..           &&
ninja
```

This package does not have a working test suite. However, there is a usable basic graphical web browser in the build directory, [build/bin/MiniBrowser]{.application}. If launching it fails, there is a problem with the build.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you want to install the GTK-4 version of [WebKitGTK]{.application}, run the following commands:

``` userinput
rm -rf * .[^.]* &&

cmake -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON      \
      -D PORT=GTK                         \
      -D LIB_INSTALL_DIR=/usr/lib         \
      -D USE_LIBBACKTRACE=OFF             \
      -D USE_LIBHYPHEN=OFF                \
      -D ENABLE_GAMEPAD=OFF               \
      -D ENABLE_MINIBROWSER=ON            \
      -D ENABLE_DOCUMENTATION=OFF         \
      -D USE_WOFF2=OFF                    \
      -D USE_GTK4=ON                      \
      -D ENABLE_BUBBLEWRAP_SANDBOX=ON     \
      -D USE_SYSPROF_CAPTURE=NO           \
      -D ENABLE_SPEECH_SYNTHESIS=OFF      \
      -W no-dev -G Ninja ..               &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

As the `-D ENABLE_DOCUMENTATION=OFF`{.option} option is used, the documentation is not rebuilt nor installed now. If you need the documentation, you can either install [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and remove this option from the [**cmake**]{.command} command, or install the pre-built documentation (only for the GTK-4 version) instead:

``` root
install -vdm755 /usr/share/gtk-doc/html &&
cp -rv ../Documentation/* /usr/share/gtk-doc/html
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D USE_LIBBACKTRACE=OFF`*: This switch disables the use of libbacktrace for dumping a stack trace when a crash happens. You need to install [libbacktrace](https://github.com/ianlancetaylor/libbacktrace){.ulink} if you wish to enable it (replacing OFF with ON or just removing the switch).

*`-D USE_LIBHYPHEN=OFF`*: This switch disables the default automatic hyphenation implementation. You need to install [Hyphen](https://sourceforge.net/projects/hunspell/files/Hyphen/){.ulink} if you wish to enable it (replacing OFF with ON or just removing the switch).

*`-D USE_WOFF2=OFF`*: Disable the use of the [WOFF2-1.0.2](../general/woff2.md "woff2-1.0.2"){.xref} package. The upstream now prefers to use [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref} (built with its optional dependency [Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}) for the WOFF support instead.

*`-D ENABLE_DOCUMENTATION=OFF`*: This switch disables regenerating the documentation. Remove this switch if you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to regenerate the documentation.

*`-D ENABLE_GAMEPAD=OFF`*: This switch disables gamepad support. Remove this switch if you have [libmanette](https://gnome.pages.gitlab.gnome.org/libmanette/){.ulink} installed and wish to enable it.

*`-D ENABLE_MINIBROWSER=ON`*: This switch enables compiling and installing the MiniBrowser.

*`-D ENABLE_WEBDRIVER=OFF`*: This switch disables compiling and installing [**WebKitWebDriver**]{.command}. We use it for the GTK-3 build because the [**WebKitWebDriver**]{.command} from the GTK-3 build will be overwritten by the GTK-4 build anyway. Remove this option if you don't plan to build this package with GTK-4.

*`-D ENABLE_BUBBLEWRAP_SANDBOX=ON`*: This switch enables the Bubblewrap sandbox, which helps mitigate the impact of most security vulnerabilities in this package. Change this switch to OFF if you do not want to install [bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, or [xdg-dbus-proxy-0.1.7](../general/xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){.xref}, but note that this may put you at risk.

*`-D USE_SYSPROF_CAPTURE=NO`*: This switch disables a hard dependency on [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}.

*`-D ENABLE_SPEECH_SYNTHESIS=OFF`*: This switch disables building speech synthesis support into WebKitGTK because it requires additional external dependencies. You will need both [flite](http://www.festvox.org/flite/){.ulink} and [libspiel](https://github.com/project-spiel/libspiel){.ulink} if you wish to enable this.

`-D USE_SYSTEM_MALLOC=ON`{.option}: This switch enables building against the system installed [malloc]{.application}.

`-D ENABLE_GEOLOCATION=OFF`{.option}: Use this switch if you don't want to install [GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref}.

`-D USE_AVIF=OFF`{.option}: Use this switch if you don't want to install [libavif-1.4.2](../general/libavif.md "libavif-1.4.2"){.xref}. Note that you will not have support for AVIF images if you do this.

`-D USE_JPEGXL=OFF`{.option}: Use this switch if the recommended package [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref} is not installed. Note that you will not have support for JPEG XL images if this option is passed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [WebKitWebDriver]{.segbody}
:::

::: seg
**Installed Libraries:** [libjavascriptcoregtk-4.1.so, libjavascriptcoregtk-6.0.so, libwebkit2gtk-4.1.so, and libwebkitgtk-6.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/webkitgtk-4.1, /usr/include/webkitgtk-6.0, /usr/lib{,exec}/webkit2gtk-4.1, /usr/lib{,exec}/webkitgtk-6.0, /usr/share/gtk-doc/html/{jsc-glib,webkit2gtk{,-web-extension}}-4.1 (optional), and /usr/share/gtk-doc/html/{jsc-glib,webkit2gtk{,-web-process-extension}}-6.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------
  []{#WebKitWebDriver}[[**WebKitWebDriver**]{.command}]{.term}                      allows debugging and automation of web pages and browsers
  []{#libjavascriptcoregtk-4.1} [`libjavascriptcoregtk-4.1.so`{.filename}]{.term}   contains core JavaScript API functions used by [**jsc**]{.command} and `libwebkit2gtk-4.1`{.filename}
  []{#libjavascriptcoregtk-6.0}[`libjavascriptcoregtk-6.0.so`{.filename}]{.term}    contains core JavaScript API functions used by [**jsc**]{.command} and `libwebkitgtk-6.0`{.filename}
  []{#libwebkit2gtk-4}[`libwebkit2gtk-4.1.so`{.filename}]{.term}                    contains the [WebKit2]{.application} API functions
  []{#libwebkitgtk-6}[`libwebkitgtk-6.0.so`{.filename}]{.term}                      contains the [WebKit]{.application} API functions for GTK-4 applications
  --------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){accesskey="p"}

    Vulkan-Loader-1.4.350.0

-   [Next](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){accesskey="n"}

    xdg-desktop-portal-1.20.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
