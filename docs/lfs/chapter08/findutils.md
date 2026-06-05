::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gawk.md "Gawk-5.4.0"){accesskey="p"}

    Gawk-5.4.0

-   [Next](groff.md "Groff-1.24.1"){accesskey="n"}

    Groff-1.24.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-findutils}8.62. Findutils-4.10.0 {#findutils-4.10.0 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Findutils package contains programs to find files. Programs are provided to search through all the files in a directory tree and to create, maintain, and search a database (often faster than the recursive find, but unreliable unless the database has been updated recently). Findutils also supplies the [**xargs**]{.command} program, which can be used to run a specified command on each file selected by a search.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.7 SBU]{.segbody}
:::

::: seg
**Required disk space:** [62 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.62.1. Installation of Findutils {#installation-of-findutils .sect2}

Prepare Findutils for compilation:

``` userinput
./configure --prefix=/usr --localstatedir=/var/lib/locate
```

::: variablelist
**The meaning of the configure options:**

[*`--localstatedir`*]{.term}

:   This option moves the [**locate**]{.command} database to `/var/lib/locate`{.filename}, which is the FHS-compliant location.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
chown -R tester .
su tester -c "PATH=$PATH make check"
```

Install the package:

``` userinput
make install
```
::::

:::::::: {.content lang="en"}
## []{#contents-findutils}8.62.2. Contents of Findutils {#contents-of-findutils .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [find, locate, updatedb, and xargs]{.segbody}
:::

::: seg
**Installed directory:** [/var/lib/locate]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#find}[[**find**]{.command}]{.term}           Searches given directory trees for files matching the specified criteria
  []{#locate}[[**locate**]{.command}]{.term}       Searches through a database of file names and reports the names that contain a given string or match a given pattern
  []{#updatedb}[[**updatedb**]{.command}]{.term}   Updates the [**locate**]{.command} database; it scans the entire file system (including other file systems that are currently mounted, unless told not to) and puts every file name it finds into the database
  []{#xargs}[[**xargs**]{.command}]{.term}         Can be used to apply a given command to a list of files
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](gawk.md "Gawk-5.4.0"){accesskey="p"}

    Gawk-5.4.0

-   [Next](groff.md "Groff-1.24.1"){accesskey="n"}

    Groff-1.24.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
