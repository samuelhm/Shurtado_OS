::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](diffutils.md "Diffutils-3.12"){accesskey="p"}

    Diffutils-3.12

-   [Next](findutils.md "Findutils-4.10.0"){accesskey="n"}

    Findutils-4.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gawk}8.61. Gawk-5.4.0 {#gawk-5.4.0 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gawk package contains programs for manipulating text files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [45 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.61.1. Installation of Gawk {#installation-of-gawk .sect2}

First, ensure some unneeded files are not installed:

``` userinput
sed -i 's/extras//' Makefile.in
```

Prepare Gawk for compilation:

``` userinput
./configure --prefix=/usr
```

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
rm -f /usr/bin/gawk-5.4.0
make install
```

::: variablelist
**The meaning of the command:**

[[**rm -f /usr/bin/gawk-5.4.0**]{.command}]{.term}

:   The building system will not recreate the hard link `gawk-5.4.0`{.filename} if it already exists. Remove it to ensure that the previous hard link installed in [Section 6.9, "Gawk-5.4.0"](../chapter06/gawk.md "6.9. Gawk-5.4.0"){.xref} is updated here.
:::

The installation process already created [**awk**]{.command} as a symlink to [**gawk**]{.command}, create its man page as a symlink as well:

``` userinput
ln -sv gawk.1 /usr/share/man/man1/awk.1
```

If desired, install the documentation:

``` userinput
install -vDm644 doc/{awkforai.txt,*.{eps,pdf,jpg}} -t /usr/share/doc/gawk-5.4.0
```
::::

::::::::: {.content lang="en"}
## []{#contents-gawk}8.61.2. Contents of Gawk {#contents-of-gawk .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [awk (link to gawk), gawk, and gawk-5.4.0]{.segbody}
:::

::: seg
**Installed libraries:** [filefuncs.so, fnmatch.so, fork.so, inplace.so, intdiv.so, ordchr.so, readdir.so, readfile.so, revoutput.so, revtwoway.so, rwarray.so, and time.so (all in /usr/lib/gawk)]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/gawk, /usr/libexec/awk, /usr/share/awk, and /usr/share/doc/gawk-5.4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------
  []{#awk}[[**awk**]{.command}]{.term}                   A link to [**gawk**]{.command}
  []{#gawk}[[**gawk**]{.command}]{.term}                 A program for manipulating text files; it is the GNU implementation of [**awk**]{.command}
  []{#gawk-version}[[**gawk-5.4.0**]{.command}]{.term}   A hard link to [**gawk**]{.command}
  ------------------------------------------------------ --------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](diffutils.md "Diffutils-3.12"){accesskey="p"}

    Diffutils-3.12

-   [Next](findutils.md "Findutils-4.10.0"){accesskey="n"}

    Findutils-4.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
