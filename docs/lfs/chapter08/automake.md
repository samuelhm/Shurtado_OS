::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](autoconf.md "Autoconf-2.73"){accesskey="p"}

    Autoconf-2.73

-   [Next](openssl.md "OpenSSL-4.0.0"){accesskey="n"}

    OpenSSL-4.0.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-automake}8.46. Automake-1.18.1 {#automake-1.18.1 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Automake package contains programs for generating Makefiles for use with Autoconf.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU (about 1.1 SBU with tests)]{.segbody}
:::

::: seg
**Required disk space:** [123 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.46.1. Installation of Automake {#installation-of-automake .sect2}

Prepare Automake for compilation:

``` userinput
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.18.1
```

Compile the package:

``` userinput
make
```

Using four parallel jobs speeds up the tests, even on systems with less logical cores, due to internal delays in individual tests. To test the results, issue:

``` userinput
make -j$(($(nproc)>4?$(nproc):4)) check
```

Replace *`$((...))`* with the number of logical cores you want to use if you don\'t want to use all.

Install the package:

``` userinput
make install
```
:::

:::::::: {.content lang="en"}
## []{#contents-automake}8.46.2. Contents of Automake {#contents-of-automake .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [aclocal, aclocal-1.18 (hard linked with aclocal), automake, and automake-1.18 (hard linked with automake)]{.segbody}
:::

::: seg
**Installed directories:** [/usr/share/aclocal-1.18, /usr/share/automake-1.18, and /usr/share/doc/automake-1.18.1]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aclocal}[[**aclocal**]{.command}]{.term}                  Generates `aclocal.m4`{.filename} files based on the contents of `configure.in`{.filename} files
  []{#aclocalversion}[[**aclocal-1.18**]{.command}]{.term}      A hard link to [**aclocal**]{.command}
  []{#automake}[[**automake**]{.command}]{.term}                A tool for automatically generating `Makefile.in`{.filename} files from `Makefile.am`{.filename} files \[To create all the `Makefile.in`{.filename} files for a package, run this program in the top-level directory. By scanning the `configure.in`{.filename} file, it automatically finds each appropriate `Makefile.am`{.filename} file and generates the corresponding `Makefile.in`{.filename} file.\]
  []{#automake-version}[[**automake-1.18**]{.command}]{.term}   A hard link to [**automake**]{.command}
  ------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](autoconf.md "Autoconf-2.73"){accesskey="p"}

    Autoconf-2.73

-   [Next](openssl.md "OpenSSL-4.0.0"){accesskey="n"}

    OpenSSL-4.0.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
