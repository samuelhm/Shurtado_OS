::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](shadow.md "Shadow-4.19.4"){accesskey="p"}

    Shadow-4.19.4

-   [Next](ncurses.md "Ncurses-6.6"){accesskey="n"}

    Ncurses-6.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gcc}8.30. GCC-16.1.0 {#gcc-16.1.0 .sect1}

::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The GCC package contains the GNU compiler collection, which includes the C and C++ compilers.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [45 SBU (with tests)]{.segbody}
:::

::: seg
**Required disk space:** [6.6 GB]{.segbody}
:::
:::::
::::::
:::::::

:::::: {.installation lang="en"}
## 8.30.1. Installation of GCC {#installation-of-gcc .sect2}

If building on x86_64, change the default directory name for 64-bit libraries to ["[lib]{.quote}"]{.quote}:

``` userinput
case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac
```

The GCC documentation recommends building GCC in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Prepare GCC for compilation:

``` userinput
../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --enable-default-pie     \
             --enable-default-ssp     \
             --enable-host-pie        \
             --enable-targets=all     \
             --disable-multilib       \
             --disable-bootstrap      \
             --disable-fixincludes    \
             --with-system-zlib
```

We only enable C and C++ here to save the build time as no packages in LFS and BLFS require GCC to compile other languages. Append `algol68`{.literal} for Algol 68, `fortran`{.literal} for Fortran, `go`{.literal} for Go, `objc`{.literal} for Objective C, `obj-c++`{.literal} for Objective C++, and/or `m2`{.literal} for Modula 2 into the value of *`--enable-languages`* option if you want to compile programs in one or more of those languages with GCC.

GCC also supports the Ada, COBOL, and D languages. But that would require some dependencies which are not available in the base LFS system and would exceed the scope of this book. Read [the upstream documentation](https://gcc.gnu.org/install/prerequisites.html){.ulink} for details.

::: variablelist
**The meaning of the new configure parameters:**

[*`LD=ld`*]{.term}

:   This parameter makes the configure script use the ld program installed by the Binutils package built earlier in this chapter, rather than the cross-built version which would otherwise be used.

[*`--disable-bootstrap`*]{.term}

:   By default, the build system of GCC will bootstrap it in 3 stages unless it\'s built as a cross-compiler or it is being cross-compiled. The bootstrap process is needed for robustness, especially when upgrading GCC to a new version. In LFS we are using a different method to bootstrap GCC (as we introduced in [Toolchain Technical Notes](../partintro/toolchaintechnotes.md "Toolchain Technical Notes"){.xref}), so here we don\'t need the bootstrap process provided by the build system and we disable it to significantly reduce the build time. Remove this option when you upgrade GCC on a complete LFS system (instead of building LFS).

[*`--disable-fixincludes`*]{.term}

:   By default, during the installation of GCC some system headers would be ["[fixed]{.quote}"]{.quote} to be used with GCC. This is not necessary for a modern Linux system, and potentially harmful if a package is reinstalled after installing GCC. This switch prevents GCC from ["[fixing]{.quote}"]{.quote} the headers.

[*`--with-system-zlib`*]{.term}

:   This switch tells GCC to link to the system installed copy of the Zlib library, rather than its own internal copy.

[*`--enable-targets=all`*]{.term}

:   This switch tells GCC to enable 64-bit code generation support even if we are building it for a 32-bit system. It\'s needed to build GRUB for 64-bit UEFI. This switch has no effect if building for 64-bit.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[]{#pie-ssp-info}

PIE (position-independent executables) are binary programs that can be loaded anywhere in memory. Without PIE, the security feature named ASLR (Address Space Layout Randomization) can be applied for the shared libraries, but not for the executables themselves. Enabling PIE allows ASLR for the executables in addition to the shared libraries, and mitigates some attacks based on fixed addresses of sensitive code or data in the executables.

SSP (Stack Smashing Protection) is a technique to ensure that the parameter stack is not corrupted. Stack corruption can, for example, alter the return address of a subroutine, thus transferring control to some dangerous code (existing in the program or shared libraries, or injected by the attacker somehow).
:::

Compile the package:

``` userinput
make
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

In this section, the test suite for GCC is considered important, but it takes a long time. First-time builders are encouraged to run the test suite. The time to run the tests can be reduced significantly by adding -jx to the [**make -k check**]{.command} command below, where x is the number of CPU cores on your system.
:::

GCC may need more stack space compiling some extremely complex code patterns. As a precaution for the host distros with a tight stack limit, explicitly set the stack size hard limit to infinite. On most host distros (and the final LFS system) the hard limit is infinite by default, but there is no harm done by setting it explicitly. It\'s not necessary to change the stack size soft limit because GCC will automatically set it to an appropriate value, as long as the value does not exceed the hard limit:

``` userinput
ulimit -s -H unlimited
```

Test the results as a non-privileged user, but do not stop at errors:

``` userinput
chown -R tester .
su tester -c "PATH=$PATH make -k check"
```

To extract a summary of the test suite results, run:

``` userinput
../contrib/test_summary -t
```

To filter out only the summaries, pipe the output through **`grep -A7 Summ`**.

Results can be compared with those located at [https://www.linuxfromscratch.org/lfs/build-logs/development/](https://www.linuxfromscratch.org/lfs/build-logs/development/){.ulink} and [https://gcc.gnu.org/ml/gcc-testresults/](https://gcc.gnu.org/ml/gcc-testresults/){.ulink}.

In the `gcc.target/i386`{.filename} tests, the tests named `auto-init-padding-9.c`{.filename}, `builtin-memmove-*.c`{.filename}, `mem{cpy,set}-pr120683-*.c`{.filename}, `pr111657-1.c`{.filename}, `pr115102.c`{.filename}, `pr116896.c`{.filename}, `pr120881-2a.c`{.filename}, and `pr122343-4a.c`{.filename} are known to fail. The test named `shift-gf2p8affine-2.c`{.filename} is known to fail if the processor does not support AVX512.

In the `g++.target/i386`{.filename} tests, the tests named `memset-pr108585-1{a,b}.C`{.filename}, `mv{,c}-symbols*.C`{.filename}, `pr112824-2.C`{.filename}, and `pr116896-1.C`{.filename} are known to fail.

Additionally, the tests `gcc.dg/ipa/pr122458.c`{.filename}, `gcc.dg/lto/toplevel-*-asm-*`{.filename}, and `gcc.dg/plugin/crash-test-nested-*.c`{.filename} are known to fail. The test `g++.dg/gomp/deprecate-1.C`{.filename} is known to fail sometimes.

The LFS editors have investigated those failures and confirmed none indicates a critical issue. Most of them are because the test case author did not anticipate *`--enable-default-ssp`* or *`--enable-default-pie`*.

A few unexpected failures cannot always be avoided. In some cases test failures depend on the specific hardware of the system. Unless the test results are vastly different from those at the above URL, it is safe to continue.

Install the package:

``` userinput
make install
```

The GCC build directory is owned by `tester`{.systemitem} now, and the ownership of the installed header directory (and its content) is incorrect. Change the ownership to the `root`{.systemitem} user and group:

``` userinput
chown -v -R root:root $(gcc -print-file-name=include){,-fixed}
```

Create a symlink required by the [FHS](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s09.html){.ulink} for \"historical\" reasons.

``` userinput
ln -svr /usr/bin/cpp /usr/lib
```

Many packages use the name [**cc**]{.command} to call the C compiler. We\'ve already created [**cc**]{.command} as a symlink in [gcc-pass2](../chapter06/gcc-pass2.md "6.18. GCC-16.1.0 - Pass 2"){.xref}, create its man page as a symlink as well:

``` userinput
ln -sv gcc.1 /usr/share/man/man1/cc.1
```

Add a compatibility symlink to enable building programs with Link Time Optimization (LTO):

``` userinput
ln -sfvr $(gcc -print-prog-name=liblto_plugin.so) /usr/lib/bfd-plugins/
```

Now that our final toolchain is in place, it is important to again ensure that compiling and linking will work as expected. We do this by performing some sanity checks:

``` userinput
echo 'int main(){}' | cc -x c - -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'
```

There should be no errors, and the output of the last command will be (allowing for platform-specific differences in the dynamic linker name):

``` screen
[Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
```

Now make sure that we\'re set up to use the correct start files:

``` userinput
grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log
```

The output of the last command should be:

``` screen
/usr/lib/gcc/x86_64-pc-linux-gnu/16.1.0/../../../../lib/Scrt1.o succeeded
/usr/lib/gcc/x86_64-pc-linux-gnu/16.1.0/../../../../lib/crti.o succeeded
/usr/lib/gcc/x86_64-pc-linux-gnu/16.1.0/../../../../lib/crtn.o succeeded
```

Depending on your machine architecture, the above may differ slightly. The difference will be the name of the directory after `/usr/lib/gcc`{.filename}. The important thing to look for here is that [**gcc**]{.command} has found all three `crt*.o`{.filename} files under the `/usr/lib`{.filename} directory.

Verify that the compiler is searching for the correct header files:

``` userinput
grep -B4 '^ /usr/include' dummy.log
```

This command should return the following output:

``` screen
#include <...> search starts here:
 /usr/lib/gcc/x86_64-pc-linux-gnu/16.1.0/include
 /usr/local/include
 /usr/lib/gcc/x86_64-pc-linux-gnu/16.1.0/include-fixed
 /usr/include
```

Again, the directory named after your target triplet may be different than the above, depending on your system architecture.

Next, verify that the new linker is being used with the correct search paths:

``` userinput
grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g'
```

References to paths that have components with \'-linux-gnu\' should be ignored, but otherwise the output of the last command should be:

``` screen
SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib64")
SEARCH_DIR("/usr/local/lib64")
SEARCH_DIR("/lib64")
SEARCH_DIR("/usr/lib64")
SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib")
SEARCH_DIR("/usr/local/lib")
SEARCH_DIR("/lib")
SEARCH_DIR("/usr/lib");
```

A 32-bit system may use a few other directories. For example, here is the output from an i686 machine:

``` screen
SEARCH_DIR("/usr/i686-pc-linux-gnu/lib32")
SEARCH_DIR("/usr/local/lib32")
SEARCH_DIR("/lib32")
SEARCH_DIR("/usr/lib32")
SEARCH_DIR("/usr/i686-pc-linux-gnu/lib")
SEARCH_DIR("/usr/local/lib")
SEARCH_DIR("/lib")
SEARCH_DIR("/usr/lib");
```

Next make sure that we\'re using the correct libc:

``` userinput
grep "/lib.*/libc.so.6 " dummy.log
```

The output of the last command should be:

``` screen
attempt to open /usr/lib/libc.so.6 succeeded
```

Make sure GCC is using the correct dynamic linker:

``` userinput
grep found dummy.log
```

The output of the last command should be (allowing for platform-specific differences in dynamic linker name):

``` screen
found ld-linux-x86-64.so.2 at /usr/lib/ld-linux-x86-64.so.2
```

If the output does not appear as shown above or is not received at all, then something is seriously wrong. Investigate and retrace the steps to find out where the problem is and correct it. Any issues should be resolved before continuing with the process.

Once everything is working correctly, clean up the test files:

``` userinput
rm -v a.out dummy.log
```

Finally, move a misplaced file:

``` userinput
mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib
```
::::::

::::::::: {.content lang="en"}
## []{#contents-gcc}8.30.2. Contents of GCC {#contents-of-gcc .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [c++, cc (link to gcc), cpp, g++, gcc, gcc-ar, gcc-nm, gcc-ranlib, gcov, gcov-dump, gcov-tool, and lto-dump]{.segbody}
:::

::: seg
**Installed libraries:** [libasan.{a,so}, libatomic.{a,so}, libcc1.so, libgcc.a, libgcc_eh.a, libgcc_s.so, libgcov.a, libgomp.{a,so}, libhwasan.{a,so}, libitm.{a,so}, liblsan.{a,so}, liblto_plugin.so, libquadmath.{a,so}, libssp.{a,so}, libssp_nonshared.a, libstdc++.{a,so}, libstdc++exp.a, libstdc++fs.a, libsupc++.a, libtsan.{a,so}, and libubsan.{a,so}]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/c++, /usr/lib/gcc, /usr/libexec/gcc, and /usr/share/gcc-16.1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#c}[[**c++**]{.command}]{.term}                      The C++ compiler
  []{#cc}[[**cc**]{.command}]{.term}                      The C compiler
  []{#cpp}[[**cpp**]{.command}]{.term}                    The C preprocessor; it is used by the compiler to expand the #include, #define, and similar directives in the source files
  []{#g}[[**g++**]{.command}]{.term}                      The C++ compiler
  []{#gcc}[[**gcc**]{.command}]{.term}                    The C compiler
  []{#gcc-ar}[[**gcc-ar**]{.command}]{.term}              A wrapper around [**ar**]{.command} that adds a plugin to the command line. This program is only used to add \"link time optimization\" and is not useful with the default build options.
  []{#gcc-nm}[[**gcc-nm**]{.command}]{.term}              A wrapper around [**nm**]{.command} that adds a plugin to the command line. This program is only used to add \"link time optimization\" and is not useful with the default build options.
  []{#gcc-ranlib}[[**gcc-ranlib**]{.command}]{.term}      A wrapper around [**ranlib**]{.command} that adds a plugin to the command line. This program is only used to add \"link time optimization\" and is not useful with the default build options.
  []{#gcov}[[**gcov**]{.command}]{.term}                  A coverage testing tool; it is used to analyze programs to determine where optimizations will have the greatest effect
  []{#gcov-dump}[[**gcov-dump**]{.command}]{.term}        Offline gcda and gcno profile dump tool
  []{#gcov-tool}[[**gcov-tool**]{.command}]{.term}        Offline gcda profile processing tool
  []{#lto-dump}[[**lto-dump**]{.command}]{.term}          Tool for dumping object files produced by GCC with LTO enabled
  []{#libasan}[`libasan`{.filename}]{.term}               The Address Sanitizer runtime library
  []{#libatomic}[`libatomic`{.filename}]{.term}           GCC atomic built-in runtime library
  []{#libcc1}[`libcc1`{.filename}]{.term}                 A library that allows GDB to make use of GCC
  []{#libgcc}[`libgcc`{.filename}]{.term}                 Contains run-time support for [**gcc**]{.command}
  []{#libgcov}[`libgcov`{.filename}]{.term}               This library is linked into a program when GCC is instructed to enable profiling
  []{#libgomp}[`libgomp`{.filename}]{.term}               GNU implementation of the OpenMP API for multi-platform shared-memory parallel programming in C/C++ and Fortran
  []{#libhwasan}[`libhwasan`{.filename}]{.term}           The Hardware-assisted Address Sanitizer runtime library
  []{#libitm}[`libitm`{.filename}]{.term}                 The GNU transactional memory library
  []{#liblsan}[`liblsan`{.filename}]{.term}               The Leak Sanitizer runtime library
  []{#liblto_plugin}[`liblto_plugin`{.filename}]{.term}   GCC\'s LTO plugin allows Binutils to process object files produced by GCC with LTO enabled
  []{#libquadmath}[`libquadmath`{.filename}]{.term}       GCC Quad Precision Math Library API
  []{#libssp}[`libssp`{.filename}]{.term}                 Contains routines supporting GCC\'s stack-smashing protection functionality. Normally it is not used, because Glibc also provides those routines.
  []{#libstdc}[`libstdc++`{.filename}]{.term}             The standard C++ library
  []{#libstdcexp}[`libstdc++exp`{.filename}]{.term}       Experimental C++ Contracts library
  []{#libstdcfs}[`libstdc++fs`{.filename}]{.term}         ISO/IEC TS 18822:2015 Filesystem library
  []{#libsupc}[`libsupc++`{.filename}]{.term}             Provides supporting routines for the C++ programming language
  []{#libtsan}[`libtsan`{.filename}]{.term}               The Thread Sanitizer runtime library
  []{#libubsan}[`libubsan`{.filename}]{.term}             The Undefined Behavior Sanitizer runtime library
  ------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](shadow.md "Shadow-4.19.4"){accesskey="p"}

    Shadow-4.19.4

-   [Next](ncurses.md "Ncurses-6.6"){accesskey="n"}

    Ncurses-6.6

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
