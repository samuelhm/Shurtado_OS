::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](openssl.md "OpenSSL-4.0.0"){accesskey="p"}

    OpenSSL-4.0.0

-   [Next](libffi.md "Libffi-3.5.2"){accesskey="n"}

    Libffi-3.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libelf}8.48. Libelf from Elfutils-0.195 {#libelf-from-elfutils-0.195 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Libelf is a library for handling ELF (Executable and Linkable Format) files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [41 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.48.1. Installation of Libelf {#installation-of-libelf .sect2}

Libelf is part of the elfutils-0.195 package. Use the elfutils-0.195.tar.bz2 file as the source tarball.

Prepare Libelf for compilation:

``` userinput
./configure --prefix=/usr        \
            --disable-debuginfod \
            --enable-libdebuginfod=dummy
```

Compile only Libelf:

``` userinput
make -C lib
make -C libelf
```

To test the results, issue:

``` userinput
make -k check
```

The above command builds the utilities that are part of the package as well as the unit tests.

Install only Libelf:

``` userinput
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
```
:::

:::::::: {.content lang="en"}
## []{#contents-elfutils}8.48.2. Contents of Libelf {#contents-of-libelf .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed library:** [libelf.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/include/elfutils]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- ---------------------------------------------------
  []{#libelf}[`libelf.so`{.filename}]{.term}   Contains API functions to handle ELF object files
  -------------------------------------------- ---------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](openssl.md "OpenSSL-4.0.0"){accesskey="p"}

    OpenSSL-4.0.0

-   [Next](libffi.md "Libffi-3.5.2"){accesskey="n"}

    Libffi-3.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
