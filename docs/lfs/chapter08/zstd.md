::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](lz4.md "Lz4-1.10.0"){accesskey="p"}

    Lz4-1.10.0

-   [Next](file.md "File-5.47"){accesskey="n"}

    File-5.47

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-zstd}8.10. Zstd-1.5.7 {#zstd-1.5.7 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Zstandard is a real-time compression algorithm, providing high compression ratios. It offers a very wide range of compression / speed trade-offs, while being backed by a very fast decoder.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.4 SBU]{.segbody}
:::

::: seg
**Required disk space:** [86 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.10.1. Installation of Zstd {#installation-of-zstd .sect2}

Compile the package:

``` userinput
make prefix=/usr
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In the test output there are several places that indicate \'failed\'. These are expected and only \'FAIL\' is an actual test failure. There should be no test failures.
:::

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make prefix=/usr install
```

Remove the static library:

``` userinput
rm -v /usr/lib/libzstd.a
```
::::

:::::::: {.content lang="en"}
## []{#contents-zstd}8.10.2. Contents of Zstd {#contents-of-zstd .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [zstd, zstdcat (link to zstd), zstdgrep, zstdless, zstdmt (link to zstd), and unzstd (link to zstd)]{.segbody}
:::

::: seg
**Installed library:** [libzstd.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------------------------
  []{#zstd}[[**zstd**]{.command}]{.term}           Compresses or decompresses files using the ZSTD format
  []{#zstdgrep}[[**zstdgrep**]{.command}]{.term}   Runs [**grep**]{.command} on ZSTD compressed files
  []{#zstdless}[[**zstdless**]{.command}]{.term}   Runs [**less**]{.command} on ZSTD compressed files
  []{#libzstd}[`libzstd`{.filename}]{.term}        The library implementing lossless data compression, using the ZSTD algorithm
  ------------------------------------------------ ------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](lz4.md "Lz4-1.10.0"){accesskey="p"}

    Lz4-1.10.0

-   [Next](file.md "File-5.47"){accesskey="n"}

    File-5.47

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
