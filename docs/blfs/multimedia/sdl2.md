<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sbc.md "SBC-2.2")

    SBC-2.2

-   [Next](sdl3.md "SDL3-3.4.10")

    SDL3-3.4.10

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sdl2-compat-2.32.68 {#sdl2-compat-2.32.68}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sdl2-compat {#introduction-to-sdl2-compat}

The sdl2-compat package provides a compatibility layer for packages that require SDL2, utilizing SDL3 as the backend.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.libsdl.org/release/sdl2-compat-2.32.68.tar.gz">https://www.libsdl.org/release/sdl2-compat-2.32.68.tar.gz</a>

-   Download MD5 sum: 1c5594cf711be75ffca88586a4d8781e

-   Download size: 2.7 MB

-   Estimated disk space required: 63 MB (add 29 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for tests)
</div>

### sdl2-compat Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="sdl3.md" title="SDL3-3.4.10">SDL3-3.4.10</a>
</div>

<div class="installation" lang="en">
## Installation of sdl2-compat {#installation-of-sdl2-compat}

Install <span class="application">sdl2-compat</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
rm -vf /usr/lib/libSDL2_test.a
```
</div>

<div class="testing" lang="en">
## Testing sdl2-compat {#testing-sdl2-compat}

If you want to build the tests, issue the following commands:

```bash
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

Now you will be able to run the tests in <code class="filename">TESTS/usr/libexec/installed-tests/SDL2_compat</code>. You will have to run the tests individually. Some of them may need to be manually killed and audio will need to be working so that you can hear from the default audio output.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D SDL2COMPAT_STATIC=OFF`*: This parameter disables building the static libraries.

*`-D SDL2COMPAT_TESTS=OFF`*: This parameter disables building the tests.

<span class="command"><strong>rm -vf /usr/lib/libSDL2_test.a</strong></span>: This command removes a useless static library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">sdl2-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libSDL2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/SDL2 and /usr/lib/cmake/SDL2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
  <a id="sdl2-config"></a><span class="command"><span class="term"><strong>sdl2-config</strong></span></span>   determines the compile and linker flags that should be used to compile and link programs that use <code class="filename">libSDL2</code>
  <a id="libsdl2"></a><span class="term"><code class="filename">libSDL2.so</code></span>           provides compatibility functions for SDL2 applications using SDL3
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sbc.md "SBC-2.2")

    SBC-2.2

-   [Next](sdl3.md "SDL3-3.4.10")

    SDL3-3.4.10

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
