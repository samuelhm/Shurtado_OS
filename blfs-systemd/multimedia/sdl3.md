::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sdl2.md "sdl2-compat-2.32.68"){accesskey="p"}

    sdl2-compat-2.32.68

-   [Next](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){accesskey="n"}

    sound-theme-freedesktop-0.8

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sdl3}SDL3-3.4.10 {#sdl3-3.4.10 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SDL3 {#introduction-to-sdl3 .sect2}

The Simple DirectMedia Layer Version 3 ([SDL3]{.application} for short) is a cross-platform library designed to make it easy to write multimedia software, such as games and emulators.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.libsdl.org/release/SDL3-3.4.10.tar.gz](https://www.libsdl.org/release/SDL3-3.4.10.tar.gz){.ulink}

-   Download MD5 sum: 8d8f2df5bc7818ec1080ce8e1611db9c

-   Download size: 15 MB

-   Estimated disk space required: 112 MB (add 103 MB for tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; add 0.3 SBU for tests)
:::

### SDL3 Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [pipewire-1.6.6](pipewire.md "Pipewire-1.6.6"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}, [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref} (if those are not present, the corresponding modules are not built)

#### Optional

[ibus-1.5.34](../general/ibus.md "ibus-1.5.34"){.xref}, [jack](https://jackaudio.org/){.ulink}, and [sndio](https://sndio.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of SDL3 {#installation-of-sdl3 .sect2}

Install [SDL3]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.testing lang="en"}
## Testing SDL3 {#testing-sdl3 .sect2}

If you want to build the tests, issue the following commands:

``` userinput
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

Now you will be able to run the tests in `TESTS/usr/libexec/installed-tests/SDL3`{.filename}. You will have to run the tests individually. Some of them may need to be manually killed and audio will need to be working so that you can hear from the default audio output.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D SDL_TEST_LIBRARY=OFF`*: This parameter disables building an unnecessary static library meant for the tests. It gets built in the testing section.

*`-D SDL_STATIC=OFF`*: This parameter disables building static libraries.

*`-D SDL_RPATH=OFF`*: This parameter disables installing with rpath. It can cause security issues otherwise.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libSDL3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/SDL3 and /usr/lib/cmake/SDL3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#libsdl3}[`libSDL3.so`{.filename}]{.term}   contains functions that provide low level access to audio, keyboard, mouse, joystick, 3D hardware via OpenGL, and the 2D frame buffer across multiple platforms
  ---------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](sdl2.md "sdl2-compat-2.32.68"){accesskey="p"}

    sdl2-compat-2.32.68

-   [Next](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){accesskey="n"}

    sound-theme-freedesktop-0.8

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
