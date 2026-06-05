::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](pkgconf.md "Pkgconf-2.5.1"){accesskey="p"}

    Pkgconf-2.5.1

-   [Next](gmp.md "GMP-6.3.0"){accesskey="n"}

    GMP-6.3.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-binutils}8.21. Binutils-2.46.0 {#binutils-2.46.0 .sect1}

::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Binutils package contains a linker, an assembler, and other tools for handling object files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.7 SBU]{.segbody}
:::

::: seg
**Required disk space:** [835 MB]{.segbody}
:::
:::::
::::::
:::::::

:::::: {.installation lang="en"}
## 8.21.1. Installation of Binutils {#installation-of-binutils .sect2}

The Binutils documentation recommends building Binutils in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Prepare Binutils for compilation:

``` userinput
../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --enable-default-hash-style=gnu
```

::: variablelist
**The meaning of the new configure parameters:**

[*`--enable-ld=default`*]{.term}

:   Build the original bfd linker and install it as both ld (the default linker) and ld.bfd.

[*`--enable-plugins`*]{.term}

:   Enables plugin support for the linker.

[*`--with-system-zlib`*]{.term}

:   Use the installed zlib library instead of building the included version.
:::

Compile the package:

``` userinput
make tooldir=/usr
```

::: variablelist
**The meaning of the make parameter:**

[*`tooldir=/usr`*]{.term}

:   Normally, the tooldir (the directory where the executables will ultimately be located) is set to `$(exec_prefix)/$(target_alias)`{.filename}. For example, x86_64 machines would expand that to `/usr/x86_64-pc-linux-gnu`{.filename}. Because this is a custom system, this target-specific directory in `/usr`{.filename} is not required. `$(exec_prefix)/$(target_alias)`{.filename} would be used if the system were used to cross-compile (for example, compiling a package on an Intel machine that generates code that can be executed on PowerPC machines).
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

The test suite for Binutils in this section is considered critical. Do not skip it under any circumstances.
:::

Test the results:

``` userinput
make -k check
```

For a list of failed tests, run:

``` userinput
grep '^FAIL:' $(find -name '*.log')
```

One test related to gprofng is known to fail.

Install the package:

``` userinput
make tooldir=/usr install
```

Remove useless static libraries and other files:

``` userinput
rm -rfv /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a \
        /usr/share/doc/gprofng/
```
::::::

::::::::: {.content lang="en"}
## []{#contents-binutils}8.21.2. Contents of Binutils {#contents-of-binutils .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [addr2line, ar, as, c++filt, dwp, elfedit, gprof, gprofng, ld, ld.bfd, nm, objcopy, objdump, ranlib, readelf, size, strings, and strip]{.segbody}
:::

::: seg
**Installed libraries:** [libbfd.so, libctf.so, libctf-nobfd.so, libgprofng.so, libopcodes.so, and libsframe.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/lib/ldscripts]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#addr2line}[[**addr2line**]{.command}]{.term}      Translates program addresses to file names and line numbers; given an address and the name of an executable, it uses the debugging information in the executable to determine which source file and line number are associated with the address
  []{#ar}[[**ar**]{.command}]{.term}                    Creates, modifies, and extracts from archives
  []{#as}[[**as**]{.command}]{.term}                    An assembler that assembles the output of [**gcc**]{.command} into object files
  []{#c-filt}[[**c++filt**]{.command}]{.term}           Used by the linker to de-mangle C++ and Java symbols and to keep overloaded functions from clashing
  []{#dwp}[[**dwp**]{.command}]{.term}                  The DWARF packaging utility
  []{#elfedit}[[**elfedit**]{.command}]{.term}          Updates the ELF headers of ELF files
  []{#gprof}[[**gprof**]{.command}]{.term}              Displays call graph profile data
  []{#gprofng}[[**gprofng**]{.command}]{.term}          Gathers and analyzes performance data
  []{#ld}[[**ld**]{.command}]{.term}                    A linker that combines a number of object and archive files into a single file, relocating their data and tying up symbol references
  []{#ld.bfd}[[**ld.bfd**]{.command}]{.term}            A hard link to [**ld**]{.command}
  []{#nm}[[**nm**]{.command}]{.term}                    Lists the symbols occurring in a given object file
  []{#objcopy}[[**objcopy**]{.command}]{.term}          Translates one type of object file into another
  []{#objdump}[[**objdump**]{.command}]{.term}          Displays information about the given object file, with options controlling the particular information to display; the information shown is useful to programmers who are working on the compilation tools
  []{#ranlib}[[**ranlib**]{.command}]{.term}            Generates an index of the contents of an archive and stores it in the archive; the index lists all of the symbols defined by archive members that are relocatable object files
  []{#readelf}[[**readelf**]{.command}]{.term}          Displays information about ELF type binaries
  []{#size}[[**size**]{.command}]{.term}                Lists the section sizes and the total size for the given object files
  []{#strings}[[**strings**]{.command}]{.term}          Outputs, for each given file, the sequences of printable characters that are of at least the specified length (defaulting to four); for object files, it prints, by default, only the strings from the initializing and loading sections while for other types of files, it scans the entire file
  []{#strip}[[**strip**]{.command}]{.term}              Discards symbols from object files
  []{#libbfd}[`libbfd`{.filename}]{.term}               The Binary File Descriptor library
  []{#libctf}[`libctf`{.filename}]{.term}               The Compat ANSI-C Type Format debugging support library
  []{#libctf-nobfd}[`libctf-nobfd`{.filename}]{.term}   A libctf variant which does not use libbfd functionality
  []{#libgprofng}[`libgprofng`{.filename}]{.term}       A library containing most routines used by [**gprofng**]{.command}
  []{#libopcodes}[`libopcodes`{.filename}]{.term}       A library for dealing with opcodes---the ["[readable text]{.quote}"]{.quote} versions of instructions for the processor; it is used for building utilities like [**objdump**]{.command}
  []{#libsframe}[`libsframe`{.filename}]{.term}         A library to support online backtracing using a simple unwinder
  ----------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](pkgconf.md "Pkgconf-2.5.1"){accesskey="p"}

    Pkgconf-2.5.1

-   [Next](gmp.md "GMP-6.3.0"){accesskey="n"}

    GMP-6.3.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
