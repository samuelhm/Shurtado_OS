::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](grub.md "GRUB-2.14"){accesskey="p"}

    GRUB-2.14

-   [Next](iproute2.md "IPRoute2-7.0.0"){accesskey="n"}

    IPRoute2-7.0.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gzip}8.65. Gzip-1.14 {#gzip-1.14 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gzip package contains programs for compressing and decompressing files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [21 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.65.1. Installation of Gzip {#installation-of-gzip .sect2}

Prepare Gzip for compilation:

``` userinput
./configure --prefix=/usr
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

::::::: {.content lang="en"}
## []{#contents-gzip}8.65.2. Contents of Gzip {#contents-of-gzip .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [gunzip, gzexe, gzip, uncompress (hard link with gunzip), zcat, zcmp, zdiff, zegrep, zfgrep, zforce, zgrep, zless, zmore, and znew]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gunzip}[[**gunzip**]{.command}]{.term}           Decompresses gzipped files
  []{#gzexe}[[**gzexe**]{.command}]{.term}             Creates self-decompressing executable files
  []{#gzip}[[**gzip**]{.command}]{.term}               Compresses the given files using Lempel-Ziv (LZ77) coding
  []{#uncompress}[[**uncompress**]{.command}]{.term}   Decompresses compressed files
  []{#zcat}[[**zcat**]{.command}]{.term}               Decompresses the given gzipped files to standard output
  []{#zcmp}[[**zcmp**]{.command}]{.term}               Runs [**cmp**]{.command} on gzipped files
  []{#zdiff}[[**zdiff**]{.command}]{.term}             Runs [**diff**]{.command} on gzipped files
  []{#zegrep}[[**zegrep**]{.command}]{.term}           Runs [**egrep**]{.command} on gzipped files
  []{#zfgrep}[[**zfgrep**]{.command}]{.term}           Runs [**fgrep**]{.command} on gzipped files
  []{#zforce}[[**zforce**]{.command}]{.term}           Forces a `.gz`{.filename} extension on all given files that are gzipped files, so that [**gzip**]{.command} will not compress them again; this can be useful when file names were truncated during a file transfer
  []{#zgrep}[[**zgrep**]{.command}]{.term}             Runs [**grep**]{.command} on gzipped files
  []{#zless}[[**zless**]{.command}]{.term}             Runs [**less**]{.command} on gzipped files
  []{#zmore}[[**zmore**]{.command}]{.term}             Runs [**more**]{.command} on gzipped files
  []{#znew}[[**znew**]{.command}]{.term}               Re-compresses files from [**compress**]{.command} format to [**gzip**]{.command} format---`.Z`{.filename} to `.gz`{.filename}
  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](grub.md "GRUB-2.14"){accesskey="p"}

    GRUB-2.14

-   [Next](iproute2.md "IPRoute2-7.0.0"){accesskey="n"}

    IPRoute2-7.0.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
