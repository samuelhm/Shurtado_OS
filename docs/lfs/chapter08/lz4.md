::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](xz.md "Xz-5.8.3"){accesskey="p"}

    Xz-5.8.3

-   [Next](zstd.md "Zstd-1.5.7"){accesskey="n"}

    Zstd-1.5.7

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-lz4}8.9. Lz4-1.10.0 {#lz4-1.10.0 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Lz4 is a lossless compression algorithm, providing compression speed greater than 500 MB/s per core. It features an extremely fast decoder, with speed in multiple GB/s per core. Lz4 can work with Zstandard to allow both algorithms to compress data faster.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [4.2 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.9.1. Installation of Lz4 {#installation-of-lz4 .sect2}

Compile the package:

``` userinput
make BUILD_STATIC=no PREFIX=/usr
```

To test the results, issue:

``` userinput
make -j1 check
```

Install the package:

``` userinput
make BUILD_STATIC=no PREFIX=/usr install
```
:::

:::::::: {.content lang="en"}
## []{#contents-lz4}8.9.2. Contents of Lz4 {#contents-of-lz4 .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [lz4, lz4c (link to lz4), lz4cat (link to lz4), and unlz4 (link to lz4)]{.segbody}
:::

::: seg
**Installed library:** [liblz4.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- -----------------------------------------------------------------------------
  []{#lz4}[[**lz4**]{.command}]{.term}         Compresses or decompresses files using the LZ4 format
  []{#lz4c}[[**lz4c**]{.command}]{.term}       Compresses files using the LZ4 format
  []{#lz4cat}[[**lz4cat**]{.command}]{.term}   Lists the contents of a file compressed using the LZ4 format
  []{#unlz4}[[**unlz4**]{.command}]{.term}     Decompresses files using the LZ4 format
  []{#liblz4}[`liblz4`{.filename}]{.term}      The library implementing lossless data compression, using the LZ4 algorithm
  -------------------------------------------- -----------------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](xz.md "Xz-5.8.3"){accesskey="p"}

    Xz-5.8.3

-   [Next](zstd.md "Zstd-1.5.7"){accesskey="n"}

    Zstd-1.5.7

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
