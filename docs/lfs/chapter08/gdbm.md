::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libtool.md "Libtool-2.5.4"){accesskey="p"}

    Libtool-2.5.4

-   [Next](gperf.md "Gperf-3.3"){accesskey="n"}

    Gperf-3.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gdbm}8.39. GDBM-1.26 {#gdbm-1.26 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The GDBM package contains the GNU Database Manager. It is a library of database functions that uses extensible hashing and works like the standard UNIX dbm. The library provides primitives for storing key/data pairs, searching and retrieving the data by its key and deleting a key along with its data.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [13 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.39.1. Installation of GDBM {#installation-of-gdbm .sect2}

Prepare GDBM for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
```

::: variablelist
**The meaning of the configure option:**

[`--enable-libgdbm-compat`{.envar}]{.term}

:   This switch enables building the libgdbm compatibility library. Some packages outside of LFS may require the older DBM routines it provides.
:::

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
::::

:::::::: {.content lang="en"}
## []{#contents-gdbm}8.39.2. Contents of GDBM {#contents-of-gdbm .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [gdbm_dump, gdbm_load, and gdbmtool]{.segbody}
:::

::: seg
**Installed libraries:** [libgdbm.so and libgdbm_compat.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ------------------------------------------------------
  []{#gdbm_dump}[[**gdbm_dump**]{.command}]{.term}          Dumps a GDBM database to a file
  []{#gdbm_load}[[**gdbm_load**]{.command}]{.term}          Recreates a GDBM database from a dump file
  []{#gdbmtool}[[**gdbmtool**]{.command}]{.term}            Tests and modifies a GDBM database
  []{#libgdbm}[`libgdbm`{.filename}]{.term}                 Contains functions to manipulate a hashed database
  []{#libgdbm_compat}[`libgdbm_compat`{.filename}]{.term}   Compatibility library containing older DBM functions
  --------------------------------------------------------- ------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](libtool.md "Libtool-2.5.4"){accesskey="p"}

    Libtool-2.5.4

-   [Next](gperf.md "Gperf-3.3"){accesskey="n"}

    Gperf-3.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
