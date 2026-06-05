<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](guile.md "Guile-3.0.11")

    Guile-3.0.11

-   [Next](lua.md "Lua-5.4.8")

    Lua-5.4.8

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LLVM-22.1.0 {#llvm-22.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LLVM {#introduction-to-llvm}

The <span class="application">LLVM</span> package contains a collection of modular and reusable compiler and toolchain technologies. The Low Level Virtual Machine (LLVM) Core libraries provide a modern source and target-independent optimizer, along with code generation support for many popular CPUs (as well as some less common ones!). These libraries are built around a well specified code representation known as the LLVM intermediate representation ("LLVM IR").

<span class="application">Clang</span> provides new C, C++, Objective C and Objective C++ front-ends for <span class="application">LLVM</span> and is required by some desktop packages such as <span class="application">firefox</span> and for <span class="application">rust</span> if that is built using the system <span class="application">LLVM</span>.

The <span class="application">Compiler RT</span> package provides runtime sanitizer and profiling libraries for developers who use <span class="application">Clang</span> and <span class="application">LLVM</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz">https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz</a>

-   Download MD5 sum: eebd30f81349347d789f04b5ddd41112

-   Download size: 160 MB

-   Estimated disk space required: 4.7 GB (1.1 GB installed; add 23 GB for tests and 2.3 GB for documentation)

-   Estimated build time: 13 SBU (Add 19 SBU for tests; both using parallelism=8)
</div>

### LLVM Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="python-modules.md#psutil" title="psutil-7.2.2">psutil-7.2.2</a> (for tests), <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, <a class="xref" href="python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a> (for tests), <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a> (for tests), <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (rebuilt with PAM, for tests),</span> <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="zip.md" title="Zip-3.0">Zip-3.0</a>, <a class="ulink" href="https://pypi.org/project/myst-parser">myst-parser</a> (for building documentation), <a class="ulink" href="https://ocaml.org/">OCaml</a>, and <a class="ulink" href="https://github.com/Z3Prover/z3">Z3</a>
</div>

<div class="installation" lang="en">
## Installation of LLVM {#installation-of-llvm}

There are many Python scripts in this package which use <span class="command"><strong>/usr/bin/env python</strong></span> to access the system Python which on LFS is <a class="xref" href="python3.md" title="Python-3.14.5">Python-3.14.5</a>. Use the following command to fix these scripts:

```bash
grep -rl '#!.*python$' | xargs sed -i '1s/python$/python3/'
```

Ensure installing the <span class="command"><strong>FileCheck</strong></span> program which is needed by the test suite of some packages (for example <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>):

```bash
sed 's/utility/tool/' -i llvm/utils/FileCheck/CMakeLists.txt
```

Install <span class="application">LLVM</span> by running the following commands:

```bash
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

LLVM test suite can produce many core dump files. They will occupy a large amount of disk space, and the core dump process can significantly slow down the testing. To test the results with core dump disabled, <a class="xref" href="systemd.md" title="Systemd-260.2">ensure <span class="phrase">Systemd-260.2</a> and <a class="xref" href="../postlfs/shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> have been rebuilt with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> support (if you are interacting via a SSH or graphical session, also ensure the <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> server or the desktop manager has been built with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>) and the current login session is started after updating the <code class="filename">/etc/pam.d/system-session</code> file to include <code class="filename">pam_systemd.so</code>, then</span> issue:

```bash
systemctl   --user start dbus &&
systemd-run --user --pty -d -G -p LimitCORE=0 ninja check-all
```

If <code class="option">-jN</code> (N replaced with a number) is passed to <span class="command"><strong>ninja</strong></span>, the tests will be built with N logical cores, but run using all available logical cores. Run the test command in a cgroup (<span class="command">pass the <code class="option">-p AllowedCPUs=...</code> option to the <span class="phrase"><strong>systemd-run</strong></span> command,</span> read <a class="xref" href="../introduction/notes-on-building.md#build-in-cgroup" title="Use Linux Control Group to Limit the Resource Usage">the section called “Use Linux Control Group to Limit the Resource Usage”</a> for details) to limit the number of logical cores for running the tests. Four tests named <code class="filename">Linux/pthread_join.cpp</code> are known to fail. One test named <code class="filename">Linux/clone_setns.cpp</code> will fail if <code class="option">CONFIG_USER_NS</code> is not enabled in kernel configuration.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D LLVM_ENABLE_FFI=ON`*: This switch allows <span class="application">LLVM</span> to use <span class="application">libffi</span>.

*`-D LLVM_BUILD_LLVM_DYLIB=ON`*: This switch builds the libraries as static and links all of them into an unique shared one. This is the recommended way of building a shared library.

*`-D CMAKE_BUILD_TYPE=Release`*: This switch enables compiler optimizations in order to speed up the code and reduce its size. It also disables some compile checks which are not necessary on a production system.

*`-D LLVM_TARGETS_TO_BUILD="host;AMDGPU"`*: This switch enables building for the same target as the host, and also for the r600 AMD GPU used by the Mesa r600 and radeonsi drivers. The default is all of the targets. You can use a semicolon separated list. Valid targets are: host, AArch64, AMDGPU, ARM, AVR, BPF, Hexagon, Lanai, LoongArch, Mips, MSP430, NVPTX, PowerPC, RISCV, Sparc, SystemZ, VE, WebAssembly, X86, XCore, or all.

*`-D LLVM_ENABLE_PROJECTS=clang`*: This switch selects the LLVM subprojects to be built (in addition to the LLVM libraries). Read the <code class="literal">LLVM_ALL_PROJECTS</code> definition in <code class="filename">llvm/CMakeLists.txt</code> for the list of all the subprojects. For BLFS we only build clang (that the developers of some BLFS packages recommend to use instead of GCC).

*`-D LLVM_ENABLE_RUNTIMES=compiler-rt`*: This switch selects the LLVM runtime libraries to be built. For BLFS we only need compiler-rt (for some features of clang and <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>) and libclc, and the latter have to be built separately (<a class="xref" href="libclc.md" title="libclc-22.1.0">libclc-22.1.0</a>) to avoid a circular dependency involving <a class="xref" href="spirv-llvm-translator.md" title="SPIRV-LLVM-Translator-22.1.2">SPIRV-LLVM-Translator-22.1.2</a>. So we only enable compiler-rt here.

*`-D LLVM_LINK_LLVM_DYLIB=ON`*: Used in conjunction with *`-D LLVM_BUILD_LLVM_DYLIB=ON`*, this switch enables linking the tools against the shared library instead of the static ones. It slightly reduces their size and also ensures that llvm-config will correctly use libLLVM-22.so.

*`-D LLVM_ENABLE_RTTI=ON`*: This switch is used to build LLVM with run-time type information. This is required for building <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>.

*`-D LLVM_BINUTILS_INCDIR=/usr/include`*: This switch is used to tell the build system the location of binutils headers, which were installed in LFS. This allows the building of <code class="filename">LLVMgold.so</code>, which is needed for building programs with <span class="command"><strong>clang</strong></span> and Link Time Optimization (LTO).

*`-D LLVM_INCLUDE_BENCHMARKS=OFF`*: is used to disable generation build targets for the LLVM benchmarks. This option requires additional code that is not currently available.

*`-D CLANG_DEFAULT_PIE_ON_LINUX=ON`*: makes <code class="option">-fpie</code> option the default when compiling programs. Together with the <a class="xref" href="../appendices/glossary.md#gASLR" title="ASLR">ASLR</a> feature enabled in the kernel, this defeats some kind of attacks based on known memory layouts.

*`-D CLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang`*: makes <span class="command"><strong>clang</strong></span> and <span class="command"><strong>clang++</strong></span> search <code class="filename">/etc/clang</code> for configuration files.

<code class="option">-D BUILD_SHARED_LIBS=ON</code>: if used instead of *`-D LLVM_BUILD_LLVM_DYLIB=ON`* and *`-D LLVM_LINK_LLVM_DYLIB=ON`*, builds all the <span class="application">LLVM</span> libraries (about 60) as shared libraries instead of static.

<code class="option">-D LLVM_ENABLE_DOXYGEN=ON -D LLVM_ENABLE_DOCS=ON</code>: Enables the generation of browsable HTML documentation if you have installed <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>. The documentation will be built at the end of the build process.
</div>

<div class="configuration" lang="en">
## Configuring LLVM {#configuring-llvm}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If you've built Clang, as the <code class="systemitem">root</code> user create two configuration files to make <a class="xref" href="../appendices/glossary.md#gSSP" title="SSP">SSP</a> enabled by default for <span class="command"><strong>clang</strong></span> and <span class="command"><strong>clang++</strong></span>, so the default configuration of their SSP feature will be consistent with <a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a>:

```bash
mkdir -pv /etc/clang &&
for i in clang clang++; do
  echo -fstack-protector-strong > /etc/clang/$i.cfg
done
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">amdgpu-arch, analyze-build, bugpoint, c-index-test, clang, clang++ (symlinks to clang-22), clang-22, clang-check, clang-cl, clang-cpp (last two symlinks to clang), clang-extdef-mapping, clang-format, clang-installapi, clang-linker-wrapper, clang-nvlink-wrapper, clang-offload-bundler, clang-offload-packager, clang-refactor, clang-repl, clang-scan-deps, clang-sycl-linker, clang-tblgen, diagtool, dsymutil, FileCheck, git-clang-format, hmaptool, intercept-build, llc, lli, llvm-addr2line (symlink to llvm-symbolizer), llvm-ar, llvm-as, llvm-bcanalyzer, llvm-bitcode-strip (symlink to llvm-objcopy), llvm-cat, llvm-cfi-verify, llvm-cgdata, llvm-config, llvm-cov, llvm-c-test, llvm-ctxprog-util, llvm-cvtres, llvm-cxxdump, llvm-cxxfilt, llvm-cxxmap, llvm-debuginfo-analyzer, llvm-debuginfod, llvm-debuginfod-find, llvm-diff, llvm-dis, llvm-dlltool (symlink to llvm-ar), llvm-dwarfdump, llvm-dwarfutil, llvm-dwp, llvm-exegesis, llvm-extract, llvm-gsymutil, llvm-ifs, llvm-install-name-tool (symlink to llvm-objcopy), llvm-jitlink, llvm-lib (symlink to llvm-ar), llvm-libtool-darwin, llvm-link, llvm-lipo, llvm-lto, llvm-lto2, llvm-mc, llvm-mca, llvm-ml, llvm-modextract, llvm-mt, llvm-nm, llvm-objcopy, llvm-objdump, llvm-opt-report, llvm-otool (symlink to llv-objdump), llvm-pdbutil, llvm-profdata, llvm-profgen, llvm-ranlib (symlink to llvm-ar), llvm-rc, llvm-readelf (symlink to llvm-readobj), llvm-readobj, llvm-readtapi, llvm-reduce, llvm-remarkutil, llvm-rtdyld, llvm-sim, llvm-size, llvm-split, llvm-stress, llvm-strings, llvm-strip (symlink to llvm-objcopy), llvm-symbolizer, llvm-tblgen, llvm-tli-checker, llvm-undname, llvm-windres (symlink to llvm-rc), llvm-xray, nvptx-arch, opt, sancov, sanstats, scan-build, scan-build-py, scan-view, and verify-uselistorder</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libLLVM.so, libLLVM\<em>.a (107 libraries), libLTO.so, libRemarks.so, libclang.so, libclang-cpp.so, libclang\</em>.a (43 libraries), and LLVMgold.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{clang,clang-c,llvm,llvm-c}, /usr/lib/{clang,cmake/{clang,llvm},libear,libscanbuild}, /usr/share/{clang,opt-viewer,scan-build,scan-view}, and /etc/clang</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="amdgpu-arch"></a><span class="command"><span class="term"><strong>amdgpu-arch</strong></span></span>                           lists AMD GPUs installed; at runtime it needs <code class="filename">libhsa-runtime64.so</code> which is not a part of BLFS
  <a id="analyze-build"></a><span class="command"><span class="term"><strong>analyze-build</strong></span></span>                       is a static analysis tool
  <a id="bugpoint"></a><span class="command"><span class="term"><strong>bugpoint</strong></span></span>                                 is the automatic test case reduction tool
  <a id="c-index-test"></a><span class="command"><span class="term"><strong>c-index-test</strong></span></span>                         is used to test the libclang API and demonstrate its usage
  <a id="clang"></a><span class="command"><span class="term"><strong>clang</strong></span></span>                                       is the <span class="application">Clang</span> C, C++, and Objective-C compiler
  <a id="clang-check"></a><span class="command"><span class="term"><strong>clang-check</strong></span></span>                           is a tool to perform static code analysis and display Abstract Syntax Trees (AST)
  <a id="clang-extdef-mapping"></a><span class="command"><span class="term"><strong>clang-extdef-mapping</strong></span></span>         is a tool to collect the USR name and location of external definitions in a source file
  <a id="clang-format"></a><span class="command"><span class="term"><strong>clang-format</strong></span></span>                         is a tool to format C/C++/Java/JavaScript/Objective-C/Protobuf code
  <a id="clang-linker-wrapper"></a><span class="command"><span class="term"><strong>clang-linker-wrapper</strong></span></span>         is a wrapper utility over the host linker
  <a id="clang-offload-bundler"></a><span class="command"><span class="term"><strong>clang-offload-bundler</strong></span></span>       is a tool to bundle/unbundle OpenMP offloaded files associated with a common source file
  <a id="clang-offload-packager"></a><span class="command"><span class="term"><strong>clang-offload-packager</strong></span></span>     is a tool to bundle several object files into a single binary, which can then be used to create a fatbinary containing offloading code
  <a id="clang-refactor"></a><span class="command"><span class="term"><strong>clang-refactor</strong></span></span>                     is a Clang-based refactoring tool for C, C++ and Objective-C
  <a id="clang-scan-deps"></a><span class="command"><span class="term"><strong>clang-scan-deps</strong></span></span>                   is a tool to scan for dependencies in a source file
  <a id="clang-tblgen"></a><span class="command"><span class="term"><strong>clang-tblgen</strong></span></span>                         is a program that translates compiler-related target description (<code class="filename">.td</code>) files into C++ code and other output formats
  <a id="diagtool"></a><span class="command"><span class="term"><strong>diagtool</strong></span></span>                                 is a combination of tools for dealing with diagnostics in clang
  <a id="FileCheck"></a><span class="command"><span class="term"><strong>FileCheck</strong></span></span>                               is a tool that reads two files (one from standard input, and one specified on the command line) and uses one to verify the other.
  <a id="dsymutil"></a><span class="command"><span class="term"><strong>dsymutil</strong></span></span>                                 is a tool used to manipulate archived DWARF debug symbol files, compatible with the Darwin command <span class="command"><strong>dsymutil</strong></span>
  <a id="git-clang-format"></a><span class="command"><span class="term"><strong>git-clang-format</strong></span></span>                 runs clang-format on git generated patches (requires <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>)
  <a id="hmaptool"></a><span class="command"><span class="term"><strong>hmaptool</strong></span></span>                                 is a Python tool to dump and construct header maps
  <a id="intercept-build"></a><span class="command"><span class="term"><strong>intercept-build</strong></span></span>                   generates a database of build commands for a project
  <a id="llc"></a><span class="command"><span class="term"><strong>llc</strong></span></span>                                           is the <span class="application">LLVM</span> static compiler
  <a id="lli"></a><span class="command"><span class="term"><strong>lli</strong></span></span>                                           is used to directly execute programs from <span class="application">LLVM</span> bitcode
  <a id="llvm-addr2line"></a><span class="command"><span class="term"><strong>llvm-addr2line</strong></span></span>                     is a tool used to convert addresses into file names and line numbers
  <a id="llvm-ar"></a><span class="command"><span class="term"><strong>llvm-ar</strong></span></span>                                   is the <span class="application">LLVM</span> archiver
  <a id="llvm-as"></a><span class="command"><span class="term"><strong>llvm-as</strong></span></span>                                   is the <span class="application">LLVM</span> assembler
  <a id="llvm-bcanalyzer"></a><span class="command"><span class="term"><strong>llvm-bcanalyzer</strong></span></span>                   is the <span class="application">LLVM</span> bitcode analyzer
  <a id="llvm-bitcode-strip"></a><span class="command"><span class="term"><strong>llvm-bitcode-strip</strong></span></span>             strips LLVM bitcode from an object
  <a id="llvm-cat"></a><span class="command"><span class="term"><strong>llvm-cat</strong></span></span>                                 is a tool to concatenate llvm modules
  <a id="llvm-cfi-verify"></a><span class="command"><span class="term"><strong>llvm-cfi-verify</strong></span></span>                   identifies whether Control Flow Integrity protects all indirect control flow instructions in the provided object file, DSO, or binary
  <a id="llvm-config"></a><span class="command"><span class="term"><strong>llvm-config</strong></span></span>                           Prints <span class="application">LLVM</span> compilation options
  <a id="llvm-cov"></a><span class="command"><span class="term"><strong>llvm-cov</strong></span></span>                                 is used to emit coverage information
  <a id="llvm-c-test"></a><span class="command"><span class="term"><strong>llvm-c-test</strong></span></span>                           is a bytecode disassembler
  <a id="llvm-cvtres"></a><span class="command"><span class="term"><strong>llvm-cvtres</strong></span></span>                           is a tool to convert Microsoft resource files to COFF
  <a id="llvm-cxxdump"></a><span class="command"><span class="term"><strong>llvm-cxxdump</strong></span></span>                         is used as a C++ ABI Data Dumper
  <a id="llvm-cxxfilt"></a><span class="command"><span class="term"><strong>llvm-cxxfilt</strong></span></span>                         is used to demangle C++ symbols in llvm code
  <a id="llvm-cxxmap"></a><span class="command"><span class="term"><strong>llvm-cxxmap</strong></span></span>                           is used to remap C++ mangled symbols
  <a id="llvm-debuginfo-analyzer"></a><span class="command"><span class="term"><strong>llvm-debuginfo-analyzer</strong></span></span>   prints a logical representation of low-level debug information
  <a id="llvm-debuginfod"></a><span class="command"><span class="term"><strong>llvm-debuginfod</strong></span></span>                   is a service providing debug information over an HTTP API for analyzing stripped binaries
  <a id="llvm-debuginfod-find"></a><span class="command"><span class="term"><strong>llvm-debuginfod-find</strong></span></span>         is an interface to the <span class="command"><strong>llvm-debuginfod</strong></span> daemon for finding debuginfod artifacts
  <a id="llvm-diff"></a><span class="command"><span class="term"><strong>llvm-diff</strong></span></span>                               is the <span class="application">LLVM</span> structural '<span class="command"><strong>diff</strong></span>'
  <a id="llvm-dis"></a><span class="command"><span class="term"><strong>llvm-dis</strong></span></span>                                 is the <span class="application">LLVM</span> disassembler
  <a id="llvm-dwarfdump"></a><span class="command"><span class="term"><strong>llvm-dwarfdump</strong></span></span>                     prints the content of DWARF sections in object files
  <a id="llvm-dwarfutil"></a><span class="command"><span class="term"><strong>llvm-dwarfutil</strong></span></span>                     is a tool to copy and manipulate debug info
  <a id="llvm-dwp"></a><span class="command"><span class="term"><strong>llvm-dwp</strong></span></span>                                 merges split DWARF files
  <a id="llvm-elfabi"></a><span class="command"><span class="term"><strong>llvm-elfabi</strong></span></span>                           is used to read information about an ELF binary's ABI
  <a id="llvm-exegesis"></a><span class="command"><span class="term"><strong>llvm-exegesis</strong></span></span>                       is a benchmarking tool that uses information available in LLVM to measure host machine instruction characteristics like latency or port decomposition
  <a id="llvm-extract"></a><span class="command"><span class="term"><strong>llvm-extract</strong></span></span>                         is used to extract a function from an <span class="application">LLVM</span> module
  <a id="llvm-gsymutil"></a><span class="command"><span class="term"><strong>llvm-gsymutil</strong></span></span>                       is used to process GSYM Symbolication Format files which convert memory addresses to function name and source file line. These files are smaller than DWARF or Breakpad files
  <a id="llvm-ifs"></a><span class="command"><span class="term"><strong>llvm-ifs</strong></span></span>                                 is used to merge interface stubs with object files
  <a id="llvm-install-name-tool"></a><span class="command"><span class="term"><strong>llvm-install-name-tool</strong></span></span>     is used to rewrite load commands into MachO binary format
  <a id="llvm-jitlink"></a><span class="command"><span class="term"><strong>llvm-jitlink</strong></span></span>                         is used to parse relocatable object files to make their contents executable in a target process
  <a id="llvm-libtool-darwin"></a><span class="command"><span class="term"><strong>llvm-libtool-darwin</strong></span></span>           provides basic libtool functionality on Darwin-based systems. This is mostly useful if you are generating binaries for macOS systems
  <a id="llvm-link"></a><span class="command"><span class="term"><strong>llvm-link</strong></span></span>                               is the <span class="application">LLVM</span> linker
  <a id="llvm-lipo"></a><span class="command"><span class="term"><strong>llvm-lipo</strong></span></span>                               is used to create universal binaries from MachO files
  <a id="llvm-lto"></a><span class="command"><span class="term"><strong>llvm-lto</strong></span></span>                                 is the <span class="application">LLVM</span> LTO (link time optimization) linker
  <a id="llvm-lto2"></a><span class="command"><span class="term"><strong>llvm-lto2</strong></span></span>                               is a test harness for the resolution based LTO interface
  <a id="llvm-mc"></a><span class="command"><span class="term"><strong>llvm-mc</strong></span></span>                                   is a standalone machine code assembler/disassembler
  <a id="llvm-mca"></a><span class="command"><span class="term"><strong>llvm-mca</strong></span></span>                                 is a performance analysis tool to statically measure the performance of machine code
  <a id="llvm-ml"></a><span class="command"><span class="term"><strong>llvm-ml</strong></span></span>                                   is a playground for machine code provided by LLVM
  <a id="llvm-modextract"></a><span class="command"><span class="term"><strong>llvm-modextract</strong></span></span>                   is a tool to extract one module from multimodule bitcode files
  <a id="llvm-mt"></a><span class="command"><span class="term"><strong>llvm-mt</strong></span></span>                                   is a tool to generate signed files and catalogs from a side-by-side assembly manifest (used for Microsoft SDK)
  <a id="llvm-nm"></a><span class="command"><span class="term"><strong>llvm-nm</strong></span></span>                                   is used to list <span class="application">LLVM</span> bitcode and object file's symbol table
  <a id="llvm-objcopy"></a><span class="command"><span class="term"><strong>llvm-objcopy</strong></span></span>                         is LLVM's version of an objcopy tool
  <a id="llvm-objdump"></a><span class="command"><span class="term"><strong>llvm-objdump</strong></span></span>                         is an <span class="application">LLVM</span> object file dumper
  <a id="llvm-opt-report"></a><span class="command"><span class="term"><strong>llvm-opt-report</strong></span></span>                   is a tool to generate an optimization report from YAML optimization record files
  <a id="llvm-pdbutil"></a><span class="command"><span class="term"><strong>llvm-pdbutil</strong></span></span>                         is a PDB (Program Database) dumper. PDB is a Microsoft format
  <a id="llvm-profdata"></a><span class="command"><span class="term"><strong>llvm-profdata</strong></span></span>                       is a small tool to manipulate and print profile data files
  <a id="llvm-profgen"></a><span class="command"><span class="term"><strong>llvm-profgen</strong></span></span>                         generates LLVM SPGO profiling information
  <a id="llvm-ranlib"></a><span class="command"><span class="term"><strong>llvm-ranlib</strong></span></span>                           is used to generate an index for a <span class="application">LLVM</span> archive
  <a id="llvm-rc"></a><span class="command"><span class="term"><strong>llvm-rc</strong></span></span>                                   is a platform-independent tool to compile resource scripts into binary resource files
  <a id="llvm-readobj"></a><span class="command"><span class="term"><strong>llvm-readobj</strong></span></span>                         displays low-level format-specific information about object files
  <a id="llvm-readtapi"></a><span class="command"><span class="term"><strong>llvm-readtapi</strong></span></span>                       is the LLVM TAPI file reader and transformer
  <a id="llvm-reduce"></a><span class="command"><span class="term"><strong>llvm-reduce</strong></span></span>                           is used to automatically reduce testcases when running a test suite
  <a id="llvm-remarkutil"></a><span class="command"><span class="term"><strong>llvm-remarkutil</strong></span></span>                   converts remark files between bitstream and YAML; or prints function instruction count information in remark files
  <a id="llvm-rtdyld"></a><span class="command"><span class="term"><strong>llvm-rtdyld</strong></span></span>                           is the <span class="application">LLVM</span> MC-JIT tool
  <a id="llvm-size"></a><span class="command"><span class="term"><strong>llvm-size</strong></span></span>                               is the <span class="application">LLVM</span> object size dumper
  <a id="llvm-split"></a><span class="command"><span class="term"><strong>llvm-split</strong></span></span>                             is the <span class="application">LLVM</span> module splitter
  <a id="llvm-stress"></a><span class="command"><span class="term"><strong>llvm-stress</strong></span></span>                           is used to generate random <code class="filename">.ll</code> files
  <a id="llvm-strings"></a><span class="command"><span class="term"><strong>llvm-strings</strong></span></span>                         print strings found in a binary (object file, executable, or archive library)
  <a id="llvm-symbolizer"></a><span class="command"><span class="term"><strong>llvm-symbolizer</strong></span></span>                   converts addresses into source code locations
  <a id="llvm-tblgen"></a><span class="command"><span class="term"><strong>llvm-tblgen</strong></span></span>                           is the <span class="application">LLVM</span> Target Description To C++ Code Generator
  <a id="llvm-tli-checker"></a><span class="command"><span class="term"><strong>llvm-tli-checker</strong></span></span>                 is the <span class="application">LLVM</span> TargetLibraryInfo versus SDK checker
  <a id="llvm-undname"></a><span class="command"><span class="term"><strong>llvm-undname</strong></span></span>                         is a tool to demangle names
  <a id="llvm-xray"></a><span class="command"><span class="term"><strong>llvm-xray</strong></span></span>                               is an implementation of Google's XRay function call tracing system
  <a id="nvptx-arch"></a><span class="command"><span class="term"><strong>nvptx-arch</strong></span></span>                             lists NVIDIA GPUs installed; at runtime it needs <code class="filename">libcuda.so</code> which is not a part of BLFS
  <a id="opt"></a><span class="command"><span class="term"><strong>opt</strong></span></span>                                           is the <span class="application">LLVM</span> optimizer
  <a id="sancov"></a><span class="command"><span class="term"><strong>sancov</strong></span></span>                                     is the sanitizer coverage processing tool
  <a id="sanstats"></a><span class="command"><span class="term"><strong>sanstats</strong></span></span>                                 is the sanitizer statistics processing tool
  <a id="scan-build"></a><span class="command"><span class="term"><strong>scan-build</strong></span></span>                             is a <span class="application">Perl</span> script that invokes the <span class="application">Clang</span> static analyzer
  <a id="scan-build-py"></a><span class="command"><span class="term"><strong>scan-build-py</strong></span></span>                       is a <span class="application">Python</span> script that invokes the <span class="application">Clang</span> static analyzer
  <a id="scan-view"></a><span class="command"><span class="term"><strong>scan-view</strong></span></span>                               is a viewer for <span class="application">Clang</span> static analyzer results
  <a id="verify-uselistorder"></a><span class="command"><span class="term"><strong>verify-uselistorder</strong></span></span>           is the <span class="application">LLVM</span> tool to verify use-list order
  ------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](guile.md "Guile-3.0.11")

    Guile-3.0.11

-   [Next](lua.md "Lua-5.4.8")

    Lua-5.4.8

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
