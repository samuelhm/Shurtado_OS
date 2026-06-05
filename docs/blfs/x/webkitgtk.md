<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](vulkan-loader.md "Vulkan-Loader-1.4.350.0")

    Vulkan-Loader-1.4.350.0

-   [Next](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4")

    xdg-desktop-portal-1.20.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# WebKitGTK-2.52.0 {#webkitgtk-2.52.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to WebKitGTK {#introduction-to-webkitgtk}

The <span class="application">WebKitGTK</span> package is a port of the portable web rendering engine <span class="application">WebKit</span> to the <span class="application">GTK-3</span> and <span class="application">GTK-4</span> platforms.

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
-   Download (HTTP): <a class="ulink" href="https://webkitgtk.org/releases/webkitgtk-2.52.0.tar.xz">https://webkitgtk.org/releases/webkitgtk-2.52.0.tar.xz</a>

-   Download MD5 sum: cae3b10032127b283c91a57c0afe9e8b

-   Download size: 66 MB

-   Estimated disk space required: 1.4 GB (187 MB installed, add 182 MB for GTK-4)

-   Estimated build time: 23 SBU (for GTK-3, using parallelism=8, add 23 SBU for GTK-4)
</div>

### WebKitGTK Dependencies

#### Required

<a class="xref" href="cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../multimedia/gst10-plugins-bad.md" title="gst-plugins-bad-1.28.3">gst-plugins-bad-1.28.3</a>, <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../general/unifdef.md" title="unifdef-2.12">unifdef-2.12</a>, and <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Recommended

<a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a>, <a class="xref" href="../general/enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>, <a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a> (runtime), <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>, <a class="xref" href="../general/libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>, <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, and <a class="xref" href="../general/xdg-dbus-proxy.md" title="xdg-dbus-proxy-0.1.7">xdg-dbus-proxy-0.1.7</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, <a class="xref" href="../general/woff2.md" title="woff2-1.0.2">WOFF2-1.0.2</a> (deprecated), <a class="ulink" href="https://ccache.dev/">ccache</a>, <a class="ulink" href="http://www.festvox.org/flite/">flite</a>, <a class="ulink" href="https://sourceforge.net/projects/hunspell/files/Hyphen/">Hyphen</a>, <a class="ulink" href="https://github.com/ianlancetaylor/libbacktrace">libbacktrace</a>, <a class="ulink" href="https://gnome.pages.gitlab.gnome.org/libmanette/">libmanette</a>, <a class="ulink" href="https://github.com/project-spiel/libspiel">libspiel</a>, and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>
</div>

<div class="installation" lang="en">
## Installation of WebKitGTK {#installation-of-webkitgtk}

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

This package allows building with either GTK-3 or GTK-4, but not both in the same build. The GTK-4 version is needed for packages such as <a class="xref" href="../xsoft/epiphany.md" title="Epiphany-50.4">Epiphany-50.4</a>. Other packages, such as <a class="xref" href="../xsoft/balsa.md" title="Balsa-2.6.5">Balsa-2.6.5</a> or <a class="xref" href="../gnome/evolution.md" title="Evolution-3.60.2">Evolution-3.60.2</a>, require the GTK-3 version. Both versions can be installed side by side on the same system. We give build instructions for both cases below, but the only difference is the setting of <span class="command"><strong>-D USE_GTK4</strong></span>

With the default <span class="quote">“<span class="quote">release</span>”</span> build configuration, some source files of this package require more than 4 GiB of RAM to be built. As the result, you should pass *`-j`*`<N>`** to <span class="command"><strong>ninja</strong></span> (replacing *`<N>`* with the quotient of the amount of available RAM and 4 GiB) to limit the number of parallel jobs and avoid the job from being killed by the kernel OOM killer.

On a 32-bit system, the sum of RAM and swap space used by a build job (in fact, any single process) cannot exceed 4 GiB. So if you are building this package on a 32-bit system, you must add the <span class="command"><strong>-D CMAKE_CXX_FLAGS_RELEASE="-O2 -DNDEBUG"</strong></span> option to the <span class="command"><strong>cmake</strong></span> to disable some optimizations which need a lot of memory to limit the memory usage of individual build jobs. Performance will be impacted slightly, but not at a level where it is noticeable during normal usage.
</div>

If you want to install the GTK-3 version of <span class="application">WebKitGTK</span>, run the following commands:

```bash
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

This package does not have a working test suite. However, there is a usable basic graphical web browser in the build directory, <span class="application">build/bin/MiniBrowser</span>. If launching it fails, there is a problem with the build.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you want to install the GTK-4 version of <span class="application">WebKitGTK</span>, run the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

As the <code class="option">-D ENABLE_DOCUMENTATION=OFF</code> option is used, the documentation is not rebuilt nor installed now. If you need the documentation, you can either install <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and remove this option from the <span class="command"><strong>cmake</strong></span> command, or install the pre-built documentation (only for the GTK-4 version) instead:

```bash
install -vdm755 /usr/share/gtk-doc/html &&
cp -rv ../Documentation/* /usr/share/gtk-doc/html
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D USE_LIBBACKTRACE=OFF`*: This switch disables the use of libbacktrace for dumping a stack trace when a crash happens. You need to install <a class="ulink" href="https://github.com/ianlancetaylor/libbacktrace">libbacktrace</a> if you wish to enable it (replacing OFF with ON or just removing the switch).

*`-D USE_LIBHYPHEN=OFF`*: This switch disables the default automatic hyphenation implementation. You need to install <a class="ulink" href="https://sourceforge.net/projects/hunspell/files/Hyphen/">Hyphen</a> if you wish to enable it (replacing OFF with ON or just removing the switch).

*`-D USE_WOFF2=OFF`*: Disable the use of the <a class="xref" href="../general/woff2.md" title="woff2-1.0.2">WOFF2-1.0.2</a> package. The upstream now prefers to use <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a> (built with its optional dependency <a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>) for the WOFF support instead.

*`-D ENABLE_DOCUMENTATION=OFF`*: This switch disables regenerating the documentation. Remove this switch if you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to regenerate the documentation.

*`-D ENABLE_GAMEPAD=OFF`*: This switch disables gamepad support. Remove this switch if you have <a class="ulink" href="https://gnome.pages.gitlab.gnome.org/libmanette/">libmanette</a> installed and wish to enable it.

*`-D ENABLE_MINIBROWSER=ON`*: This switch enables compiling and installing the MiniBrowser.

*`-D ENABLE_WEBDRIVER=OFF`*: This switch disables compiling and installing <span class="command"><strong>WebKitWebDriver</strong></span>. We use it for the GTK-3 build because the <span class="command"><strong>WebKitWebDriver</strong></span> from the GTK-3 build will be overwritten by the GTK-4 build anyway. Remove this option if you don't plan to build this package with GTK-4.

*`-D ENABLE_BUBBLEWRAP_SANDBOX=ON`*: This switch enables the Bubblewrap sandbox, which helps mitigate the impact of most security vulnerabilities in this package. Change this switch to OFF if you do not want to install <a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, or <a class="xref" href="../general/xdg-dbus-proxy.md" title="xdg-dbus-proxy-0.1.7">xdg-dbus-proxy-0.1.7</a>, but note that this may put you at risk.

*`-D USE_SYSPROF_CAPTURE=NO`*: This switch disables a hard dependency on <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>.

*`-D ENABLE_SPEECH_SYNTHESIS=OFF`*: This switch disables building speech synthesis support into WebKitGTK because it requires additional external dependencies. You will need both <a class="ulink" href="http://www.festvox.org/flite/">flite</a> and <a class="ulink" href="https://github.com/project-spiel/libspiel">libspiel</a> if you wish to enable this.

<code class="option">-D USE_SYSTEM_MALLOC=ON</code>: This switch enables building against the system installed <span class="application">malloc</span>.

<code class="option">-D ENABLE_GEOLOCATION=OFF</code>: Use this switch if you don't want to install <a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a>.

<code class="option">-D USE_AVIF=OFF</code>: Use this switch if you don't want to install <a class="xref" href="../general/libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>. Note that you will not have support for AVIF images if you do this.

<code class="option">-D USE_JPEGXL=OFF</code>: Use this switch if the recommended package <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a> is not installed. Note that you will not have support for JPEG XL images if this option is passed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">WebKitWebDriver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libjavascriptcoregtk-4.1.so, libjavascriptcoregtk-6.0.so, libwebkit2gtk-4.1.so, and libwebkitgtk-6.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/webkitgtk-4.1, /usr/include/webkitgtk-6.0, /usr/lib{,exec}/webkit2gtk-4.1, /usr/lib{,exec}/webkitgtk-6.0, /usr/share/gtk-doc/html/{jsc-glib,webkit2gtk{,-web-extension}}-4.1 (optional), and /usr/share/gtk-doc/html/{jsc-glib,webkit2gtk{,-web-process-extension}}-6.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------
  <a id="WebKitWebDriver"></a><span class="command"><span class="term"><strong>WebKitWebDriver</strong></span></span>                      allows debugging and automation of web pages and browsers
  <a id="libjavascriptcoregtk-4.1"></a> <span class="term"><code class="filename">libjavascriptcoregtk-4.1.so</code></span>   contains core JavaScript API functions used by <span class="command"><strong>jsc</strong></span> and <code class="filename">libwebkit2gtk-4.1</code>
  <a id="libjavascriptcoregtk-6.0"></a><span class="term"><code class="filename">libjavascriptcoregtk-6.0.so</code></span>    contains core JavaScript API functions used by <span class="command"><strong>jsc</strong></span> and <code class="filename">libwebkitgtk-6.0</code>
  <a id="libwebkit2gtk-4"></a><span class="term"><code class="filename">libwebkit2gtk-4.1.so</code></span>                    contains the <span class="application">WebKit2</span> API functions
  <a id="libwebkitgtk-6"></a><span class="term"><code class="filename">libwebkitgtk-6.0.so</code></span>                      contains the <span class="application">WebKit</span> API functions for GTK-4 applications
  --------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vulkan-loader.md "Vulkan-Loader-1.4.350.0")

    Vulkan-Loader-1.4.350.0

-   [Next](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4")

    xdg-desktop-portal-1.20.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
