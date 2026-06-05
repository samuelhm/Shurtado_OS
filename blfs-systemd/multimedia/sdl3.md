<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sdl2.md "sdl2-compat-2.32.68")

    sdl2-compat-2.32.68

-   [Next](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8")

    sound-theme-freedesktop-0.8

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SDL3-3.4.10 {#sdl3-3.4.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SDL3 {#introduction-to-sdl3}

The Simple DirectMedia Layer Version 3 (<span class="application">SDL3</span> for short) is a cross-platform library designed to make it easy to write multimedia software, such as games and emulators.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.libsdl.org/release/SDL3-3.4.10.tar.gz">https://www.libsdl.org/release/SDL3-3.4.10.tar.gz</a>

-   Download MD5 sum: 8d8f2df5bc7818ec1080ce8e1611db9c

-   Download size: 15 MB

-   Estimated disk space required: 112 MB (add 103 MB for tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; add 0.3 SBU for tests)
</div>

### SDL3 Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>, <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a> (if those are not present, the corresponding modules are not built)

#### Optional

<a class="xref" href="../general/ibus.md" title="ibus-1.5.34">ibus-1.5.34</a>, <a class="ulink" href="https://jackaudio.org/">jack</a>, and <a class="ulink" href="https://sndio.org/">sndio</a>
</div>

<div class="installation" lang="en">
## Installation of SDL3 {#installation-of-sdl3}

Install <span class="application">SDL3</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D SDL_TEST_LIBRARY=OFF      \
      -D SDL_STATIC=OFF            \
      -D SDL_RPATH=OFF             \
      -W no-dev -G Ninja ..        &&

ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="testing" lang="en">
## Testing SDL3 {#testing-sdl3}

If you want to build the tests, issue the following commands:

```bash
mkdir ../build-tests &&
cd    ../build-tests &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D SDL_STATIC=OFF            \
      -D SDL_RPATH=OFF             \
      -D SDL_TESTS=ON              \
      -D SDL_INSTALL_TESTS=ON      \
      -W no-dev -G Ninja ..        &&

ninja &&
DESTDIR=$PWD/TESTS ninja install
```

Now you will be able to run the tests in <code class="filename">TESTS/usr/libexec/installed-tests/SDL3</code>. You will have to run the tests individually. Some of them may need to be manually killed and audio will need to be working so that you can hear from the default audio output.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D SDL_TEST_LIBRARY=OFF`*: This parameter disables building an unnecessary static library meant for the tests. It gets built in the testing section.

*`-D SDL_STATIC=OFF`*: This parameter disables building static libraries.

*`-D SDL_RPATH=OFF`*: This parameter disables installing with rpath. It can cause security issues otherwise.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libSDL3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/SDL3 and /usr/lib/cmake/SDL3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libsdl3"></a><span class="term"><code class="filename">libSDL3.so</code></span>   contains functions that provide low level access to audio, keyboard, mouse, joystick, 3D hardware via OpenGL, and the 2D frame buffer across multiple platforms
  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sdl2.md "sdl2-compat-2.32.68")

    sdl2-compat-2.32.68

-   [Next](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8")

    sound-theme-freedesktop-0.8

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
