::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](glibc.md "Glibc-2.43"){accesskey="p"}

    Glibc-2.43

-   [Next](bzip2.md "Bzip2-1.0.8"){accesskey="n"}

    Bzip2-1.0.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-zlib}8.6. Zlib-1.3.2 {#zlib-1.3.2 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Zlib package contains compression and decompression routines used by some programs.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.4 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.6.1. Installation of Zlib {#installation-of-zlib .sect2}

Prepare Zlib for compilation:

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

Remove a useless static library:

``` userinput
rm -fv /usr/lib/libz.a
```
:::

::::::: {.content lang="en"}
## []{#contents-zlib}8.6.2. Contents of Zlib {#contents-of-zlib .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed libraries:** [libz.so]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------- ------------------------------------------------------------------------
  []{#libz}[`libz`{.filename}]{.term}   Contains compression and decompression functions used by some programs
  ------------------------------------- ------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](glibc.md "Glibc-2.43"){accesskey="p"}

    Glibc-2.43

-   [Next](bzip2.md "Bzip2-1.0.8"){accesskey="n"}

    Bzip2-1.0.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
