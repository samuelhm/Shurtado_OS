<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](simdutf.md "simdutf-9.0.0")

    simdutf-9.0.0

-   [Next](spirv-headers.md "SPIRV-Headers-1.4.350.0")

    SPIRV-Headers-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SpiderMonkey from firefox-140.11.0 {#spidermonkey-from-firefox-140.11.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SpiderMonkey {#introduction-to-spidermonkey}

<span class="application">SpiderMonkey</span> is Mozilla's JavaScript and WebAssembly Engine, written in C++ and Rust. In BLFS, the source code of SpiderMonkey is taken from Firefox.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz">https://archive.mozilla.org/pub/firefox/releases/140.11.0esr/source/firefox-140.11.0esr.source.tar.xz</a>

-   Download MD5 sum: 652763dfff0895c534f991a38b48c946

-   Download size: 610 MB

-   Estimated disk space required: 4.7 GB (52 MB installed after removing 42 MB static lib; add 29 MB for the main and jit tests)

-   Estimated build time: 1.9 SBU (with parallelism=4; add 0.4 SBU for the main tests and 2.6 SBU for the jit tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/spidermonkey-140.11.0-python_3.14_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/spidermonkey-140.11.0-python_3.14_fixes-1.patch</a>
</div>

### SpiderMonkey Dependencies

#### Required

<a class="xref" href="cbindgen.md" title="Cbindgen-0.29.3">Cbindgen-0.29.3</a>, <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Recommended

<a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with <span class="application">Clang</span>, required for 32-bit systems without SSE2 capabilities)

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

If you are building this package on a 32-bit system, and Clang is not installed or you're overriding the default compiler choice with the environment variable <code class="envar">CXX</code>, please read the Command Explanations section first.
</div>
</div>

<div class="installation" lang="en">
## Installation of SpiderMonkey {#installation-of-spidermonkey}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Unlike most other packages in BLFS, the instructions below require you to untar <code class="filename">firefox-140.11.0esr.tar.xz</code> and change into the <code class="filename">firefox-140.11.0</code> directory.

Extracting the tarball will reset the permissions of the current directory to 0755 if you have permission to do that. If you do this in a directory where the sticky bit is set, such as <code class="filename">/tmp</code> it will end with error messages:

<div class="literallayout">
tar: .: Cannot utime: Operation not permitted\
tar: .: Cannot change mode to rwxr-xr-t: Operation not permitted\
tar: Exiting with failure status due to previous errors\
</div>

This does finish with non-zero status, but it does <span class="emphasis"><em>NOT</em></span> mean there is a real problem. Do not untar as the <code class="systemitem">root</code> user in a directory where the sticky bit is set - that will unset it.
</div>

First, apply a patch to fix compatibility with Python 3.14:

```bash
patch -Np1 -i ../spidermonkey-140.11.0-python_3.14_fixes-1.patch
```

Install <span class="application">SpiderMonkey</span> by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are compiling this package in chroot you must ensure that <code class="filename">/dev/shm</code> is mounted. If you do not do this, the <span class="application">Python</span> configuration will fail with a traceback report referencing <code class="filename">/usr/lib/pythonN.N/multiprocessing/synchronize.py</code>. As the <code class="systemitem">root</code> user, run:

```bash
mountpoint -q /dev/shm || mount -t tmpfs devshm /dev/shm
```

Compiling the C++ code respects \$MAKEFLAGS and defaults to 'j1', the rust code will use all processors.
</div>

```bash
mkdir obj &&
cd    obj &&

../js/src/configure --prefix=/usr            \
                    --disable-debug-symbols  \
                    --disable-jemalloc       \
                    --enable-readline        \
                    --enable-rust-simd       \
                    --with-intl-api          \
                    --with-system-icu        \
                    --with-system-zlib       &&
make
```

To run the SpiderMonkey test suite, issue:

```bash
make -C js/src check-jstests \
     JSTESTS_EXTRA_ARGS="--timeout 300 --wpt=disabled" | tee jstest.log
```

Because we are building with system ICU, a little over 100 tests, depending on ICU version, (out of a total of more than 50,000) are known to fail. The list of failed tests can be extracted via <span class="command"><strong>grep 'UNEXPECTED-FAIL' jstest.log</strong></span>. Pass the <code class="option">-c</code> option to <span class="command"><strong>grep</strong></span> if you only want the total number of failed tests.

The test suite is executed with all CPU cores available: even in a cgroup with less cores assigned, it still attempts to spawn as many testing jobs as the number of <span class="emphasis"><em>all</em></span> cores in the system; fortunately the kernel still won't run these jobs on cores not assigned to the cgroup so the CPU usage is still controlled.

To run the JIT test suite, issue the following command:

```bash
make -C js/src check-jit-test
```

Like the SpiderMonkey test suite, the number of test jobs is same as the number of all CPU cores in the system even if a cgroup is used. To make things worse, some test cases can use up to 4 GB of system memory, so the peak memory usage may be very large if your CPU have multiple cores. Running the JIT test suite without enough memory may invoke the kernel OOM killer and cause stability issues. If you don't have enough system memory available, append <code class="option">JITTEST_EXTRA_ARGS=-j</code>*`N`* to the command and replace *`N`* with the number of test jobs your available system memory can hold. For example, if you have 15 GB system memory available and 4 CPU cores, append <code class="option">JITTEST_EXTRA_ARGS=-j3</code> to run the test suite with 3 parallel jobs so the memory usage won't exceed 12 GB.

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

An issue in the installation process causes any running program which links to SpiderMonkey shared library (for example, GNOME Shell) to crash if SpiderMonkey is reinstalled, or upgraded or downgraded without a change of the major version number (140 in 140.11.0). To work around this issue, remove the old version of the SpiderMonkey shared library before installation:

```bash
rm -fv /usr/lib/libmozjs-140.so
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
rm -v /usr/lib/libjs_static.ajs &&
sed -i '/@NSPR_CFLAGS@/d' /usr/bin/js140-config
```

Still as the <code class="systemitem">root</code> user, fix an issue with one of the installed headers:

```bash
sed '$i#define XP_UNIX' -i /usr/include/mozjs-140/js-config.h
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-debug-symbols`*: Don't generate debug symbols since they are very large and most users won't need it. Remove it if you want to debug SpiderMonkey.

*`--disable-jemalloc`*: This switch disables the internal memory allocator used in SpiderMonkey. jemalloc is only intended for the Firefox browser environment. For other applications using SpiderMonkey, the application may crash as items allocated in the jemalloc allocator are freed on the system (glibc) allocator.

*`--enable-readline`*: This switch enables Readline support in the SpiderMonkey command line interface.

*`--enable-rust-simd`*: This switch enables SIMD optimization in the shipped encoding_rs crate.

*`--with-intl-api`*: This enables the internationalization functions required by <span class="application">Gjs</span>.

*`--with-system-*`*: These parameters allow the build system to use system versions of the above libraries. These are required for stability.

<span class="command"><strong>rm -v /usr/lib/libjs_static.ajs</strong></span>: Remove a large static library which is not used by any BLFS package.

<span class="command"><strong>sed -i '/@NSPR_CFLAGS@/d' /usr/bin/js140-config</strong></span>: Prevent <span class="command"><strong>js140-config</strong></span> from using buggy CFLAGS.

<code class="envar">CC=gcc CXX=g++</code>: BLFS used to prefer to use gcc and g++ instead of upstream's defaults of the <span class="application">clang</span> programs. With the release of gcc-12 the build takes longer with gcc and g++, primarily because of extra warnings, and is bigger. Pass these environment variables to the configure script if you wish to continue to use gcc, g++ (by exporting them and unset them after the installation, or simply prepending them before the <span class="command"><strong>../js/src/configure</strong></span> command). If you are building on a 32-bit system, also see below.

<code class="envar">CXXFLAGS="-msse2 -mfpmath=sse"</code>: Use SSE2 instead of 387 for double-precision floating-point operations. It's needed by GCC to satisfy the expectations of upstream (Mozilla) developers with floating-point arithmetic. Use it if you are building this package on a 32-bit system with GCC (if Clang is not installed or GCC is explicitly specified). Note that this will cause SpiderMonkey to crash on a processor without SSE2 capability. If you are running the system on such an old processor, Clang is strictly needed. This setting is not needed on 64-bit systems because all 64-bit x86 processors support SSE2 and the 64-bit compilers (both Clang and GCC) use SSE2 by default.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">js140 and js140-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmozjs-140.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/mozjs-140</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ----------------------------------------------------------------------------
  <a id="js140"></a><span class="command"><span class="term"><strong>js140</strong></span></span>                  provides a command line interface to the <span class="application">JavaScript</span> engine
  <a id="js140-config"></a><span class="command"><span class="term"><strong>js140-config</strong></span></span>    is used to find the SpiderMonkey compiler and linker flags
  <a id="libmozjs-140"></a> <span class="term"><code class="filename">libmozjs-140.so</code></span>   contains the Mozilla JavaScript API functions
  --------------------------------------------------------- ----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](simdutf.md "simdutf-9.0.0")

    simdutf-9.0.0

-   [Next](spirv-headers.md "SPIRV-Headers-1.4.350.0")

    SPIRV-Headers-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
