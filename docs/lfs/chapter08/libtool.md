::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](bash.md "Bash-5.3"){accesskey="p"}

    Bash-5.3

-   [Next](gdbm.md "GDBM-1.26"){accesskey="n"}

    GDBM-1.26

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libtool}8.38. Libtool-2.5.4 {#libtool-2.5.4 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Libtool package contains the GNU generic library support script. It makes the use of shared libraries simpler with a consistent, portable interface.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.6 SBU]{.segbody}
:::

::: seg
**Required disk space:** [44 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.38.1. Installation of Libtool {#installation-of-libtool .sect2}

Prepare Libtool for compilation:

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

Remove a static library only useful for the test suite:

``` userinput
rm -fv /usr/lib/libltdl.a
```
:::

::::::::: {.content lang="en"}
## []{#contents-libtool}8.38.2. Contents of Libtool {#contents-of-libtool .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [libtool and libtoolize]{.segbody}
:::

::: seg
**Installed libraries:** [libltdl.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/libltdl and /usr/share/libtool]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------
  []{#libtool}[[**libtool**]{.command}]{.term}         Provides generalized library-building support services
  []{#libtoolize}[[**libtoolize**]{.command}]{.term}   Provides a standard way to add [**libtool**]{.command} support to a package
  []{#libltdl}[`libltdl`{.filename}]{.term}            Hides the various difficulties of opening dynamically loaded libraries
  ---------------------------------------------------- -----------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](bash.md "Bash-5.3"){accesskey="p"}

    Bash-5.3

-   [Next](gdbm.md "GDBM-1.26"){accesskey="n"}

    GDBM-1.26

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
