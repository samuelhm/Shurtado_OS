::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](bzip2.md "Bzip2-1.0.8"){accesskey="p"}

    Bzip2-1.0.8

-   [Next](lz4.md "Lz4-1.10.0"){accesskey="n"}

    Lz4-1.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-xz}8.8. Xz-5.8.3 {#xz-5.8.3 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Xz package contains programs for compressing and decompressing files. It provides capabilities for the lzma and the newer xz compression formats. Compressing text files with [**xz**]{.command} yields a better compression percentage than with the traditional [**gzip**]{.command} or [**bzip2**]{.command} commands.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [24 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.8.1. Installation of Xz {#installation-of-xz .sect2}

Prepare Xz for compilation with:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.3
```

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```
:::

::::::::: {.content lang="en"}
## []{#contents-xz}8.8.2. Contents of Xz {#contents-of-xz .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [lzcat (link to xz), lzcmp (link to xzdiff), lzdiff (link to xzdiff), lzegrep (link to xzgrep), lzfgrep (link to xzgrep), lzgrep (link to xzgrep), lzless (link to xzless), lzma (link to xz), lzmadec, lzmainfo, lzmore (link to xzmore), unlzma (link to xz), unxz (link to xz), xz, xzcat (link to xz), xzcmp (link to xzdiff), xzdec, xzdiff, xzegrep (link to xzgrep), xzfgrep (link to xzgrep), xzgrep, xzless, and xzmore]{.segbody}
:::

::: seg
**Installed libraries:** [liblzma.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/lzma and /usr/share/doc/xz-5.8.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
  []{#lzcat}[[**lzcat**]{.command}]{.term}         Decompresses to standard output
  []{#lzcmp}[[**lzcmp**]{.command}]{.term}         Runs [**cmp**]{.command} on LZMA compressed files
  []{#lzdiff}[[**lzdiff**]{.command}]{.term}       Runs [**diff**]{.command} on LZMA compressed files
  []{#lzegrep}[[**lzegrep**]{.command}]{.term}     Runs [**egrep**]{.command} on LZMA compressed files
  []{#lzfgrep}[[**lzfgrep**]{.command}]{.term}     Runs [**fgrep**]{.command} on LZMA compressed files
  []{#lzgrep}[[**lzgrep**]{.command}]{.term}       Runs [**grep**]{.command} on LZMA compressed files
  []{#lzless}[[**lzless**]{.command}]{.term}       Runs [**less**]{.command} on LZMA compressed files
  []{#lzma}[[**lzma**]{.command}]{.term}           Compresses or decompresses files using the LZMA format
  []{#lzmadec}[[**lzmadec**]{.command}]{.term}     A small and fast decoder for LZMA compressed files
  []{#lzmainfo}[[**lzmainfo**]{.command}]{.term}   Shows information stored in the LZMA compressed file header
  []{#lzmore}[[**lzmore**]{.command}]{.term}       Runs [**more**]{.command} on LZMA compressed files
  []{#unlzma}[[**unlzma**]{.command}]{.term}       Decompresses files using the LZMA format
  []{#unxz}[[**unxz**]{.command}]{.term}           Decompresses files using the XZ format
  []{#xz}[[**xz**]{.command}]{.term}               Compresses or decompresses files using the XZ format
  []{#xzcat}[[**xzcat**]{.command}]{.term}         Decompresses to standard output
  []{#xzcmp}[[**xzcmp**]{.command}]{.term}         Runs [**cmp**]{.command} on XZ compressed files
  []{#xzdec}[[**xzdec**]{.command}]{.term}         A small and fast decoder for XZ compressed files
  []{#xzdiff}[[**xzdiff**]{.command}]{.term}       Runs [**diff**]{.command} on XZ compressed files
  []{#xzegrep}[[**xzegrep**]{.command}]{.term}     Runs [**egrep**]{.command} on XZ compressed files
  []{#xzfgrep}[[**xzfgrep**]{.command}]{.term}     Runs [**fgrep**]{.command} on XZ compressed files
  []{#xzgrep}[[**xzgrep**]{.command}]{.term}       Runs [**grep**]{.command} on XZ compressed files
  []{#xzless}[[**xzless**]{.command}]{.term}       Runs [**less**]{.command} on XZ compressed files
  []{#xzmore}[[**xzmore**]{.command}]{.term}       Runs [**more**]{.command} on XZ compressed files
  []{#liblzma}[`liblzma`{.filename}]{.term}        The library implementing lossless, block-sorting data compression, using the Lempel-Ziv-Markov chain algorithm
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](bzip2.md "Bzip2-1.0.8"){accesskey="p"}

    Bzip2-1.0.8

-   [Next](lz4.md "Lz4-1.10.0"){accesskey="n"}

    Lz4-1.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
