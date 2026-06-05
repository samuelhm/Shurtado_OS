::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sbc.md "SBC-2.2"){accesskey="p"}

    SBC-2.2

-   [Next](sdl3.md "SDL3-3.4.10"){accesskey="n"}

    SDL3-3.4.10

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sdl2}sdl2-compat-2.32.68 {#sdl2-compat-2.32.68 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to sdl2-compat {#introduction-to-sdl2-compat .sect2}

The sdl2-compat package provides a compatibility layer for packages that require SDL2, utilizing SDL3 as the backend.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.libsdl.org/release/sdl2-compat-2.32.68.tar.gz](https://www.libsdl.org/release/sdl2-compat-2.32.68.tar.gz){.ulink}

-   Download MD5 sum: 1c5594cf711be75ffca88586a4d8781e

-   Download size: 2.7 MB

-   Estimated disk space required: 63 MB (add 29 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for tests)
:::

### sdl2-compat Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} and [SDL3-3.4.10](sdl3.md "SDL3-3.4.10"){.xref}
:::::

::: {.installation lang="en"}
## Installation of sdl2-compat {#installation-of-sdl2-compat .sect2}

Install [sdl2-compat]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D SDL2COMPAT_STATIC=OFF       \
      -D SDL2COMPAT_TESTS=OFF        \
      -W no-dev -G Ninja ..          &&

ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
rm -vf /usr/lib/libSDL2_test.a
```
:::

::: {.testing lang="en"}
## Testing sdl2-compat {#testing-sdl2-compat .sect2}

If you want to build the tests, issue the following commands:

``` userinput
mkdir ../build-tests &&
cd    ../build-tests &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D SDL2COMPAT_INSTALL_TESTS=ON \
      -D SDL2COMPAT_STATIC=OFF       \
      -D SDL2COMPAT_TESTS=ON         \
      -W no-dev -G Ninja ..          &&

ninja &&
DESTDIR=$PWD/TESTS ninja install
```

Now you will be able to run the tests in `TESTS/usr/libexec/installed-tests/SDL2_compat`{.filename}. You will have to run the tests individually. Some of them may need to be manually killed and audio will need to be working so that you can hear from the default audio output.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D SDL2COMPAT_STATIC=OFF`*: This parameter disables building the static libraries.

*`-D SDL2COMPAT_TESTS=OFF`*: This parameter disables building the tests.

[**rm -vf /usr/lib/libSDL2_test.a**]{.command}: This command removes a useless static library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [sdl2-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libSDL2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/SDL2 and /usr/lib/cmake/SDL2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
  []{#sdl2-config}[[**sdl2-config**]{.command}]{.term}   determines the compile and linker flags that should be used to compile and link programs that use `libSDL2`{.filename}
  []{#libsdl2}[`libSDL2.so`{.filename}]{.term}           provides compatibility functions for SDL2 applications using SDL3
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](sbc.md "SBC-2.2"){accesskey="p"}

    SBC-2.2

-   [Next](sdl3.md "SDL3-3.4.10"){accesskey="n"}

    SDL3-3.4.10

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
