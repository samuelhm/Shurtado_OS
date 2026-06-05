::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](guile.md "Guile-3.0.11"){accesskey="p"}

    Guile-3.0.11

-   [Next](lua.md "Lua-5.4.8"){accesskey="n"}

    Lua-5.4.8

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#llvm}LLVM-22.1.0 {#llvm-22.1.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LLVM {#introduction-to-llvm .sect2}

The [LLVM]{.application} package contains a collection of modular and reusable compiler and toolchain technologies. The Low Level Virtual Machine (LLVM) Core libraries provide a modern source and target-independent optimizer, along with code generation support for many popular CPUs (as well as some less common ones!). These libraries are built around a well specified code representation known as the LLVM intermediate representation ("LLVM IR").

[Clang]{.application} provides new C, C++, Objective C and Objective C++ front-ends for [LLVM]{.application} and is required by some desktop packages such as [firefox]{.application} and for [rust]{.application} if that is built using the system [LLVM]{.application}.

The [Compiler RT]{.application} package provides runtime sanitizer and profiling libraries for developers who use [Clang]{.application} and [LLVM]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz](https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz){.ulink}

-   Download MD5 sum: eebd30f81349347d789f04b5ddd41112

-   Download size: 160 MB

-   Estimated disk space required: 4.7 GB (1.1 GB installed; add 23 GB for tests and 2.3 GB for documentation)

-   Estimated build time: 13 SBU (Add 19 SBU for tests; both using parallelism=8)
:::

### LLVM Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [libunwind-1.8.3](libunwind.md "libunwind-1.8.3"){.xref}, [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [psutil-7.2.2](python-modules.md#psutil "psutil-7.2.2"){.xref} (for tests), [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, [PyYAML-6.0.3](python-modules.md#PyYAML "PyYAML-6.0.3"){.xref} (for tests), [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref} (for tests), [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (rebuilt with PAM, for tests),]{.phrase} [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, [Zip-3.0](zip.md "Zip-3.0"){.xref}, [myst-parser](https://pypi.org/project/myst-parser){.ulink} (for building documentation), [OCaml](https://ocaml.org/){.ulink}, and [Z3](https://github.com/Z3Prover/z3){.ulink}
:::::

::: {.installation lang="en"}
## Installation of LLVM {#installation-of-llvm .sect2}

There are many Python scripts in this package which use [**/usr/bin/env python**]{.command} to access the system Python which on LFS is [Python-3.14.5](python3.md "Python-3.14.5"){.xref}. Use the following command to fix these scripts:

``` userinput
grep -rl '#!.*python$' | xargs sed -i '1s/python$/python3/'
```

Ensure installing the [**FileCheck**]{.command} program which is needed by the test suite of some packages (for example [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}):

``` userinput
sed 's/utility/tool/' -i llvm/utils/FileCheck/CMakeLists.txt
```

Install [LLVM]{.application} by running the following commands:

``` userinput
mkdir -v llvm/build &&
cd       llvm/build &&

CC=gcc CXX=g++                               \
cmake -D CMAKE_INSTALL_PREFIX=/usr           \
      -D CMAKE_SKIP_INSTALL_RPATH=ON         \
      -D LLVM_ENABLE_FFI=ON                  \
      -D CMAKE_BUILD_TYPE=Release            \
      -D LLVM_BUILD_LLVM_DYLIB=ON            \
      -D LLVM_LINK_LLVM_DYLIB=ON             \
      -D LLVM_ENABLE_RTTI=ON                 \
      -D LLVM_TARGETS_TO_BUILD="host;AMDGPU" \
      -D LLVM_ENABLE_PROJECTS=clang          \
      -D LLVM_ENABLE_RUNTIMES=compiler-rt    \
      -D LLVM_BINUTILS_INCDIR=/usr/include   \
      -D LLVM_INCLUDE_BENCHMARKS=OFF         \
      -D CLANG_DEFAULT_PIE_ON_LINUX=ON       \
      -D CLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang \
      -W no-dev -G Ninja ..                  &&
ninja
```

LLVM test suite can produce many core dump files. They will occupy a large amount of disk space, and the core dump process can significantly slow down the testing. To test the results with core dump disabled, [ensure [Systemd-260.2](systemd.md "Systemd-260.2"){.xref} and [Shadow-4.19.4](../postlfs/shadow.md "Shadow-4.19.4"){.xref} have been rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} support (if you are interacting via a SSH or graphical session, also ensure the [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} server or the desktop manager has been built with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}) and the current login session is started after updating the `/etc/pam.d/system-session`{.filename} file to include `pam_systemd.so`{.filename}, then]{.phrase} issue:

``` userinput
systemctl   --user start dbus &&
systemd-run --user --pty -d -G -p LimitCORE=0 ninja check-all
```

If `-jN`{.option} (N replaced with a number) is passed to [**ninja**]{.command}, the tests will be built with N logical cores, but run using all available logical cores. Run the test command in a cgroup ([pass the `-p AllowedCPUs=...`{.option} option to the [**systemd-run**]{.command} command,]{.phrase} read [the section called “Use Linux Control Group to Limit the Resource Usage”](../introduction/notes-on-building.md#build-in-cgroup "Use Linux Control Group to Limit the Resource Usage"){.xref} for details) to limit the number of logical cores for running the tests. Four tests named `Linux/pthread_join.cpp`{.filename} are known to fail. One test named `Linux/clone_setns.cpp`{.filename} will fail if `CONFIG_USER_NS`{.option} is not enabled in kernel configuration.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D LLVM_ENABLE_FFI=ON`*: This switch allows [LLVM]{.application} to use [libffi]{.application}.

*`-D LLVM_BUILD_LLVM_DYLIB=ON`*: This switch builds the libraries as static and links all of them into an unique shared one. This is the recommended way of building a shared library.

*`-D CMAKE_BUILD_TYPE=Release`*: This switch enables compiler optimizations in order to speed up the code and reduce its size. It also disables some compile checks which are not necessary on a production system.

*`-D LLVM_TARGETS_TO_BUILD="host;AMDGPU"`*: This switch enables building for the same target as the host, and also for the r600 AMD GPU used by the Mesa r600 and radeonsi drivers. The default is all of the targets. You can use a semicolon separated list. Valid targets are: host, AArch64, AMDGPU, ARM, AVR, BPF, Hexagon, Lanai, LoongArch, Mips, MSP430, NVPTX, PowerPC, RISCV, Sparc, SystemZ, VE, WebAssembly, X86, XCore, or all.

*`-D LLVM_ENABLE_PROJECTS=clang`*: This switch selects the LLVM subprojects to be built (in addition to the LLVM libraries). Read the `LLVM_ALL_PROJECTS`{.literal} definition in `llvm/CMakeLists.txt`{.filename} for the list of all the subprojects. For BLFS we only build clang (that the developers of some BLFS packages recommend to use instead of GCC).

*`-D LLVM_ENABLE_RUNTIMES=compiler-rt`*: This switch selects the LLVM runtime libraries to be built. For BLFS we only need compiler-rt (for some features of clang and [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}) and libclc, and the latter have to be built separately ([libclc-22.1.0](libclc.md "libclc-22.1.0"){.xref}) to avoid a circular dependency involving [SPIRV-LLVM-Translator-22.1.2](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){.xref}. So we only enable compiler-rt here.

*`-D LLVM_LINK_LLVM_DYLIB=ON`*: Used in conjunction with *`-D LLVM_BUILD_LLVM_DYLIB=ON`*, this switch enables linking the tools against the shared library instead of the static ones. It slightly reduces their size and also ensures that llvm-config will correctly use libLLVM-22.so.

*`-D LLVM_ENABLE_RTTI=ON`*: This switch is used to build LLVM with run-time type information. This is required for building [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}.

*`-D LLVM_BINUTILS_INCDIR=/usr/include`*: This switch is used to tell the build system the location of binutils headers, which were installed in LFS. This allows the building of `LLVMgold.so`{.filename}, which is needed for building programs with [**clang**]{.command} and Link Time Optimization (LTO).

*`-D LLVM_INCLUDE_BENCHMARKS=OFF`*: is used to disable generation build targets for the LLVM benchmarks. This option requires additional code that is not currently available.

*`-D CLANG_DEFAULT_PIE_ON_LINUX=ON`*: makes `-fpie`{.option} option the default when compiling programs. Together with the [ASLR](../appendices/glossary.md#gASLR "ASLR"){.xref} feature enabled in the kernel, this defeats some kind of attacks based on known memory layouts.

*`-D CLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang`*: makes [**clang**]{.command} and [**clang++**]{.command} search `/etc/clang`{.filename} for configuration files.

`-D BUILD_SHARED_LIBS=ON`{.option}: if used instead of *`-D LLVM_BUILD_LLVM_DYLIB=ON`* and *`-D LLVM_LINK_LLVM_DYLIB=ON`*, builds all the [LLVM]{.application} libraries (about 60) as shared libraries instead of static.

`-D LLVM_ENABLE_DOXYGEN=ON -D LLVM_ENABLE_DOCS=ON`{.option}: Enables the generation of browsable HTML documentation if you have installed [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}. The documentation will be built at the end of the build process.
:::

:::: {.configuration lang="en"}
## Configuring LLVM {#configuring-llvm .sect2}

::: {.sect3 lang="en"}
### []{#llvm-config-info}Configuration Information {#configuration-information .sect3}

If you've built Clang, as the `root`{.systemitem} user create two configuration files to make [SSP](../appendices/glossary.md#gSSP "SSP"){.xref} enabled by default for [**clang**]{.command} and [**clang++**]{.command}, so the default configuration of their SSP feature will be consistent with [GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref}:

``` root
mkdir -pv /etc/clang &&
for i in clang clang++; do
  echo -fstack-protector-strong > /etc/clang/$i.cfg
done
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [amdgpu-arch, analyze-build, bugpoint, c-index-test, clang, clang++ (symlinks to clang-22), clang-22, clang-check, clang-cl, clang-cpp (last two symlinks to clang), clang-extdef-mapping, clang-format, clang-installapi, clang-linker-wrapper, clang-nvlink-wrapper, clang-offload-bundler, clang-offload-packager, clang-refactor, clang-repl, clang-scan-deps, clang-sycl-linker, clang-tblgen, diagtool, dsymutil, FileCheck, git-clang-format, hmaptool, intercept-build, llc, lli, llvm-addr2line (symlink to llvm-symbolizer), llvm-ar, llvm-as, llvm-bcanalyzer, llvm-bitcode-strip (symlink to llvm-objcopy), llvm-cat, llvm-cfi-verify, llvm-cgdata, llvm-config, llvm-cov, llvm-c-test, llvm-ctxprog-util, llvm-cvtres, llvm-cxxdump, llvm-cxxfilt, llvm-cxxmap, llvm-debuginfo-analyzer, llvm-debuginfod, llvm-debuginfod-find, llvm-diff, llvm-dis, llvm-dlltool (symlink to llvm-ar), llvm-dwarfdump, llvm-dwarfutil, llvm-dwp, llvm-exegesis, llvm-extract, llvm-gsymutil, llvm-ifs, llvm-install-name-tool (symlink to llvm-objcopy), llvm-jitlink, llvm-lib (symlink to llvm-ar), llvm-libtool-darwin, llvm-link, llvm-lipo, llvm-lto, llvm-lto2, llvm-mc, llvm-mca, llvm-ml, llvm-modextract, llvm-mt, llvm-nm, llvm-objcopy, llvm-objdump, llvm-opt-report, llvm-otool (symlink to llv-objdump), llvm-pdbutil, llvm-profdata, llvm-profgen, llvm-ranlib (symlink to llvm-ar), llvm-rc, llvm-readelf (symlink to llvm-readobj), llvm-readobj, llvm-readtapi, llvm-reduce, llvm-remarkutil, llvm-rtdyld, llvm-sim, llvm-size, llvm-split, llvm-stress, llvm-strings, llvm-strip (symlink to llvm-objcopy), llvm-symbolizer, llvm-tblgen, llvm-tli-checker, llvm-undname, llvm-windres (symlink to llvm-rc), llvm-xray, nvptx-arch, opt, sancov, sanstats, scan-build, scan-build-py, scan-view, and verify-uselistorder]{.segbody}
:::

::: seg
**Installed Libraries:** [libLLVM.so, libLLVM\*.a (107 libraries), libLTO.so, libRemarks.so, libclang.so, libclang-cpp.so, libclang\*.a (43 libraries), and LLVMgold.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{clang,clang-c,llvm,llvm-c}, /usr/lib/{clang,cmake/{clang,llvm},libear,libscanbuild}, /usr/share/{clang,opt-viewer,scan-build,scan-view}, and /etc/clang]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#amdgpu-arch}[[**amdgpu-arch**]{.command}]{.term}                           lists AMD GPUs installed; at runtime it needs `libhsa-runtime64.so`{.filename} which is not a part of BLFS
  []{#analyze-build}[[**analyze-build**]{.command}]{.term}                       is a static analysis tool
  []{#bugpoint}[[**bugpoint**]{.command}]{.term}                                 is the automatic test case reduction tool
  []{#c-index-test}[[**c-index-test**]{.command}]{.term}                         is used to test the libclang API and demonstrate its usage
  []{#clang}[[**clang**]{.command}]{.term}                                       is the [Clang]{.application} C, C++, and Objective-C compiler
  []{#clang-check}[[**clang-check**]{.command}]{.term}                           is a tool to perform static code analysis and display Abstract Syntax Trees (AST)
  []{#clang-extdef-mapping}[[**clang-extdef-mapping**]{.command}]{.term}         is a tool to collect the USR name and location of external definitions in a source file
  []{#clang-format}[[**clang-format**]{.command}]{.term}                         is a tool to format C/C++/Java/JavaScript/Objective-C/Protobuf code
  []{#clang-linker-wrapper}[[**clang-linker-wrapper**]{.command}]{.term}         is a wrapper utility over the host linker
  []{#clang-offload-bundler}[[**clang-offload-bundler**]{.command}]{.term}       is a tool to bundle/unbundle OpenMP offloaded files associated with a common source file
  []{#clang-offload-packager}[[**clang-offload-packager**]{.command}]{.term}     is a tool to bundle several object files into a single binary, which can then be used to create a fatbinary containing offloading code
  []{#clang-refactor}[[**clang-refactor**]{.command}]{.term}                     is a Clang-based refactoring tool for C, C++ and Objective-C
  []{#clang-scan-deps}[[**clang-scan-deps**]{.command}]{.term}                   is a tool to scan for dependencies in a source file
  []{#clang-tblgen}[[**clang-tblgen**]{.command}]{.term}                         is a program that translates compiler-related target description (`.td`{.filename}) files into C++ code and other output formats
  []{#diagtool}[[**diagtool**]{.command}]{.term}                                 is a combination of tools for dealing with diagnostics in clang
  []{#FileCheck}[[**FileCheck**]{.command}]{.term}                               is a tool that reads two files (one from standard input, and one specified on the command line) and uses one to verify the other.
  []{#dsymutil}[[**dsymutil**]{.command}]{.term}                                 is a tool used to manipulate archived DWARF debug symbol files, compatible with the Darwin command [**dsymutil**]{.command}
  []{#git-clang-format}[[**git-clang-format**]{.command}]{.term}                 runs clang-format on git generated patches (requires [git-2.54.0](git.md "Git-2.54.0"){.xref})
  []{#hmaptool}[[**hmaptool**]{.command}]{.term}                                 is a Python tool to dump and construct header maps
  []{#intercept-build}[[**intercept-build**]{.command}]{.term}                   generates a database of build commands for a project
  []{#llc}[[**llc**]{.command}]{.term}                                           is the [LLVM]{.application} static compiler
  []{#lli}[[**lli**]{.command}]{.term}                                           is used to directly execute programs from [LLVM]{.application} bitcode
  []{#llvm-addr2line}[[**llvm-addr2line**]{.command}]{.term}                     is a tool used to convert addresses into file names and line numbers
  []{#llvm-ar}[[**llvm-ar**]{.command}]{.term}                                   is the [LLVM]{.application} archiver
  []{#llvm-as}[[**llvm-as**]{.command}]{.term}                                   is the [LLVM]{.application} assembler
  []{#llvm-bcanalyzer}[[**llvm-bcanalyzer**]{.command}]{.term}                   is the [LLVM]{.application} bitcode analyzer
  []{#llvm-bitcode-strip}[[**llvm-bitcode-strip**]{.command}]{.term}             strips LLVM bitcode from an object
  []{#llvm-cat}[[**llvm-cat**]{.command}]{.term}                                 is a tool to concatenate llvm modules
  []{#llvm-cfi-verify}[[**llvm-cfi-verify**]{.command}]{.term}                   identifies whether Control Flow Integrity protects all indirect control flow instructions in the provided object file, DSO, or binary
  []{#llvm-config}[[**llvm-config**]{.command}]{.term}                           Prints [LLVM]{.application} compilation options
  []{#llvm-cov}[[**llvm-cov**]{.command}]{.term}                                 is used to emit coverage information
  []{#llvm-c-test}[[**llvm-c-test**]{.command}]{.term}                           is a bytecode disassembler
  []{#llvm-cvtres}[[**llvm-cvtres**]{.command}]{.term}                           is a tool to convert Microsoft resource files to COFF
  []{#llvm-cxxdump}[[**llvm-cxxdump**]{.command}]{.term}                         is used as a C++ ABI Data Dumper
  []{#llvm-cxxfilt}[[**llvm-cxxfilt**]{.command}]{.term}                         is used to demangle C++ symbols in llvm code
  []{#llvm-cxxmap}[[**llvm-cxxmap**]{.command}]{.term}                           is used to remap C++ mangled symbols
  []{#llvm-debuginfo-analyzer}[[**llvm-debuginfo-analyzer**]{.command}]{.term}   prints a logical representation of low-level debug information
  []{#llvm-debuginfod}[[**llvm-debuginfod**]{.command}]{.term}                   is a service providing debug information over an HTTP API for analyzing stripped binaries
  []{#llvm-debuginfod-find}[[**llvm-debuginfod-find**]{.command}]{.term}         is an interface to the [**llvm-debuginfod**]{.command} daemon for finding debuginfod artifacts
  []{#llvm-diff}[[**llvm-diff**]{.command}]{.term}                               is the [LLVM]{.application} structural '[**diff**]{.command}'
  []{#llvm-dis}[[**llvm-dis**]{.command}]{.term}                                 is the [LLVM]{.application} disassembler
  []{#llvm-dwarfdump}[[**llvm-dwarfdump**]{.command}]{.term}                     prints the content of DWARF sections in object files
  []{#llvm-dwarfutil}[[**llvm-dwarfutil**]{.command}]{.term}                     is a tool to copy and manipulate debug info
  []{#llvm-dwp}[[**llvm-dwp**]{.command}]{.term}                                 merges split DWARF files
  []{#llvm-elfabi}[[**llvm-elfabi**]{.command}]{.term}                           is used to read information about an ELF binary's ABI
  []{#llvm-exegesis}[[**llvm-exegesis**]{.command}]{.term}                       is a benchmarking tool that uses information available in LLVM to measure host machine instruction characteristics like latency or port decomposition
  []{#llvm-extract}[[**llvm-extract**]{.command}]{.term}                         is used to extract a function from an [LLVM]{.application} module
  []{#llvm-gsymutil}[[**llvm-gsymutil**]{.command}]{.term}                       is used to process GSYM Symbolication Format files which convert memory addresses to function name and source file line. These files are smaller than DWARF or Breakpad files
  []{#llvm-ifs}[[**llvm-ifs**]{.command}]{.term}                                 is used to merge interface stubs with object files
  []{#llvm-install-name-tool}[[**llvm-install-name-tool**]{.command}]{.term}     is used to rewrite load commands into MachO binary format
  []{#llvm-jitlink}[[**llvm-jitlink**]{.command}]{.term}                         is used to parse relocatable object files to make their contents executable in a target process
  []{#llvm-libtool-darwin}[[**llvm-libtool-darwin**]{.command}]{.term}           provides basic libtool functionality on Darwin-based systems. This is mostly useful if you are generating binaries for macOS systems
  []{#llvm-link}[[**llvm-link**]{.command}]{.term}                               is the [LLVM]{.application} linker
  []{#llvm-lipo}[[**llvm-lipo**]{.command}]{.term}                               is used to create universal binaries from MachO files
  []{#llvm-lto}[[**llvm-lto**]{.command}]{.term}                                 is the [LLVM]{.application} LTO (link time optimization) linker
  []{#llvm-lto2}[[**llvm-lto2**]{.command}]{.term}                               is a test harness for the resolution based LTO interface
  []{#llvm-mc}[[**llvm-mc**]{.command}]{.term}                                   is a standalone machine code assembler/disassembler
  []{#llvm-mca}[[**llvm-mca**]{.command}]{.term}                                 is a performance analysis tool to statically measure the performance of machine code
  []{#llvm-ml}[[**llvm-ml**]{.command}]{.term}                                   is a playground for machine code provided by LLVM
  []{#llvm-modextract}[[**llvm-modextract**]{.command}]{.term}                   is a tool to extract one module from multimodule bitcode files
  []{#llvm-mt}[[**llvm-mt**]{.command}]{.term}                                   is a tool to generate signed files and catalogs from a side-by-side assembly manifest (used for Microsoft SDK)
  []{#llvm-nm}[[**llvm-nm**]{.command}]{.term}                                   is used to list [LLVM]{.application} bitcode and object file's symbol table
  []{#llvm-objcopy}[[**llvm-objcopy**]{.command}]{.term}                         is LLVM's version of an objcopy tool
  []{#llvm-objdump}[[**llvm-objdump**]{.command}]{.term}                         is an [LLVM]{.application} object file dumper
  []{#llvm-opt-report}[[**llvm-opt-report**]{.command}]{.term}                   is a tool to generate an optimization report from YAML optimization record files
  []{#llvm-pdbutil}[[**llvm-pdbutil**]{.command}]{.term}                         is a PDB (Program Database) dumper. PDB is a Microsoft format
  []{#llvm-profdata}[[**llvm-profdata**]{.command}]{.term}                       is a small tool to manipulate and print profile data files
  []{#llvm-profgen}[[**llvm-profgen**]{.command}]{.term}                         generates LLVM SPGO profiling information
  []{#llvm-ranlib}[[**llvm-ranlib**]{.command}]{.term}                           is used to generate an index for a [LLVM]{.application} archive
  []{#llvm-rc}[[**llvm-rc**]{.command}]{.term}                                   is a platform-independent tool to compile resource scripts into binary resource files
  []{#llvm-readobj}[[**llvm-readobj**]{.command}]{.term}                         displays low-level format-specific information about object files
  []{#llvm-readtapi}[[**llvm-readtapi**]{.command}]{.term}                       is the LLVM TAPI file reader and transformer
  []{#llvm-reduce}[[**llvm-reduce**]{.command}]{.term}                           is used to automatically reduce testcases when running a test suite
  []{#llvm-remarkutil}[[**llvm-remarkutil**]{.command}]{.term}                   converts remark files between bitstream and YAML; or prints function instruction count information in remark files
  []{#llvm-rtdyld}[[**llvm-rtdyld**]{.command}]{.term}                           is the [LLVM]{.application} MC-JIT tool
  []{#llvm-size}[[**llvm-size**]{.command}]{.term}                               is the [LLVM]{.application} object size dumper
  []{#llvm-split}[[**llvm-split**]{.command}]{.term}                             is the [LLVM]{.application} module splitter
  []{#llvm-stress}[[**llvm-stress**]{.command}]{.term}                           is used to generate random `.ll`{.filename} files
  []{#llvm-strings}[[**llvm-strings**]{.command}]{.term}                         print strings found in a binary (object file, executable, or archive library)
  []{#llvm-symbolizer}[[**llvm-symbolizer**]{.command}]{.term}                   converts addresses into source code locations
  []{#llvm-tblgen}[[**llvm-tblgen**]{.command}]{.term}                           is the [LLVM]{.application} Target Description To C++ Code Generator
  []{#llvm-tli-checker}[[**llvm-tli-checker**]{.command}]{.term}                 is the [LLVM]{.application} TargetLibraryInfo versus SDK checker
  []{#llvm-undname}[[**llvm-undname**]{.command}]{.term}                         is a tool to demangle names
  []{#llvm-xray}[[**llvm-xray**]{.command}]{.term}                               is an implementation of Google's XRay function call tracing system
  []{#nvptx-arch}[[**nvptx-arch**]{.command}]{.term}                             lists NVIDIA GPUs installed; at runtime it needs `libcuda.so`{.filename} which is not a part of BLFS
  []{#opt}[[**opt**]{.command}]{.term}                                           is the [LLVM]{.application} optimizer
  []{#sancov}[[**sancov**]{.command}]{.term}                                     is the sanitizer coverage processing tool
  []{#sanstats}[[**sanstats**]{.command}]{.term}                                 is the sanitizer statistics processing tool
  []{#scan-build}[[**scan-build**]{.command}]{.term}                             is a [Perl]{.application} script that invokes the [Clang]{.application} static analyzer
  []{#scan-build-py}[[**scan-build-py**]{.command}]{.term}                       is a [Python]{.application} script that invokes the [Clang]{.application} static analyzer
  []{#scan-view}[[**scan-view**]{.command}]{.term}                               is a viewer for [Clang]{.application} static analyzer results
  []{#verify-uselistorder}[[**verify-uselistorder**]{.command}]{.term}           is the [LLVM]{.application} tool to verify use-list order
  ------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](guile.md "Guile-3.0.11"){accesskey="p"}

    Guile-3.0.11

-   [Next](lua.md "Lua-5.4.8"){accesskey="n"}

    Lua-5.4.8

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
