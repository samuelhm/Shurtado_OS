::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](highway.md "highway-1.4.0"){accesskey="p"}

    highway-1.4.0

-   [Next](inih.md "inih-62"){accesskey="n"}

    inih-62

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#icu}icu-78.3 {#icu-78.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to ICU {#introduction-to-icu .sect2}

The [International Components for Unicode]{.application} (ICU) package is a mature, widely used set of C/C++ libraries providing Unicode and Globalization support for software applications. [ICU]{.application} is widely portable and gives applications the same results on all platforms.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Upgrading this package to a new major version (for example, from 72.1 to 78.3) will require rebuilding many other packages. If some packages that use the libraries built by icu4c-78 are rebuilt, they will use the new libraries while current packages will use the previous libraries. If the Linux application loader (`/usr/lib/ld-linux-x86-64.so.2`{.filename}) determines that both the old and new libraries are needed, and a symbol (name of data or function) exists in both versions of the library, all references to the symbol will be resolved to the version appearing earlier in the breadth-first sequence of the dependency graph. This may result in the application failing if the definition of the data or the behavior of the function referred by the symbol differs between two versions. To avoid the issue, users will need to rebuild every package linked to an ICU library as soon as possible once ICU is updated to a new major version.

To determine what external libraries are needed (directly or indirectly) by an application or a library, run:

``` userinput
ldd <application or library> 
```

or to see only programs and libraries that directly use a library:

``` userinput
readelf -d  <application or library> | grep NEEDED
```
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz](https://github.com/unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz){.ulink}

-   Download MD5 sum: a7b736b570ef0e180c96a31715a00c78

-   Download size: 27 MB

-   Estimated disk space required: 362 MB (add 48 MB for tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; add 2.1 SBU for tests)
:::

### ICU Dependencies

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for documentation)
::::::

:::: {.installation lang="en"}
## Installation of ICU {#installation-of-icu .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package expands to the directory `icu`{.filename}.
:::

A part of a test cannot be run on `i686`{.literal}. Avoid executing it when building for that platform:

``` userinput
case $(uname -m) in
  i?86) sed -e "s/U_PLATFORM_IS_LINUX_BASED/__X86_64__ \&\& &/" \
            -i source/test/intltest/ustrtest.cpp ;;
esac
```

Install [ICU]{.application} by running the following commands:

``` userinput
cd source                 &&
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}. One test (intltest) still fails for unknown reasons on `i686`{.literal} checking some thai conversions.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [derb, escapesrc, genbrk, genccode, gencfu, gencmn, gencnval, gendict, gennorm2, genrb, gensprep, icu-config, icuexportdata, icuinfo, icupkg, makeconv, pkgdata, and uconv]{.segbody}
:::

::: seg
**Installed Libraries:** [libicudata.so, libicui18n.so, libicuio.so, libicutest.so, libicutu.so, and libicuuc.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/unicode, /usr/lib/icu, and /usr/share/icu]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------------------------
  []{#derb}[[**derb**]{.command}]{.term}               disassembles a resource bundle
  []{#escapesrc}[[**escapesrc**]{.command}]{.term}     converts [“[\\u]{.quote}”]{.quote} escaped characters into unicode characters
  []{#genbrk}[[**genbrk**]{.command}]{.term}           compiles ICU break iteration rules source files into binary data files
  []{#genccode}[[**genccode**]{.command}]{.term}       generates C or platform specific assembly code from an ICU data file
  []{#gencfu}[[**gencfu**]{.command}]{.term}           reads in Unicode confusable character definitions and writes out the binary data
  []{#gencmn}[[**gencmn**]{.command}]{.term}           generates an ICU memory-mappable data file
  []{#gencnval}[[**gencnval**]{.command}]{.term}       compiles the converter's aliases file
  []{#gendict}[[**gendict**]{.command}]{.term}         compiles word lists into ICU string trie dictionaries
  []{#gennorm2}[[**gennorm2**]{.command}]{.term}       builds binary data files with Unicode normalization data
  []{#genrb}[[**genrb**]{.command}]{.term}             compiles a resource bundle
  []{#gensprep}[[**gensprep**]{.command}]{.term}       compiles StringPrep data from filtered RFC 3454 files
  []{#icu-config}[[**icu-config**]{.command}]{.term}   outputs ICU build options
  []{#icuinfo}[[**icuinfo**]{.command}]{.term}         outputs configuration information about the current ICU
  []{#icupkg}[[**icupkg**]{.command}]{.term}           extracts or modifies an ICU .dat archive
  []{#makeconv}[[**makeconv**]{.command}]{.term}       compiles a converter table
  []{#pkgdata}[[**pkgdata**]{.command}]{.term}         packages data for use by ICU
  []{#uconv}[[**uconv**]{.command}]{.term}             converts data from one encoding to another
  []{#libicudata}[`libicudata.so`{.filename}]{.term}   is the data library
  []{#libicui18n}[`libicui18n.so`{.filename}]{.term}   is the internationalization (i18n) library
  []{#libicuio}[`libicuio.so`{.filename}]{.term}       is the ICU I/O (unicode stdio) library
  []{#libicutest}[`libicutest.so`{.filename}]{.term}   is the test library
  []{#libicutu}[`libicutu.so`{.filename}]{.term}       is the tool utility library
  []{#libicuuc}[`libicuuc.so`{.filename}]{.term}       is the common library
  ---------------------------------------------------- ----------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](highway.md "highway-1.4.0"){accesskey="p"}

    highway-1.4.0

-   [Next](inih.md "inih-62"){accesskey="n"}

    inih-62

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
