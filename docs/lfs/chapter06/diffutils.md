::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](coreutils.md "Coreutils-9.11"){accesskey="p"}

    Coreutils-9.11

-   [Next](file.md "File-5.47"){accesskey="n"}

    File-5.47

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-diffutils}6.6. Diffutils-3.12 {#diffutils-3.12 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Diffutils package contains programs that show the differences between files or directories.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [35 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.6.1. Installation of Diffutils {#installation-of-diffutils .sect2}

Prepare Diffutils for compilation:

``` userinput
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            gl_cv_func_strcasecmp_works=yes \
            --build=$(./build-aux/config.guess)
```

::: variablelist
**The meaning of the configure options:**

[*`gl_cv_func_strcasecmp_works=yes`*]{.term}

:   This option specify the result of a check for the `strcasecmp`{.function} function. The check requires running a compiled C program, and this is impossible during cross-compilation because in general a cross-compiled program cannot run on the host distro. Normally for such a check the [**configure**]{.command} script would use a fall-back value for cross-compilation, but the fall-back value for this check is absent and the [**configure**]{.command} script would have no value to use and error out. Upstream have already fixed the issue, but to apply the fix we\'d need to run [**autoconf**]{.command} that the host distro may lack. So we just specify the check result (`yes`{.literal} as we know the `strcasecmp`{.function} function in Glibc-2.43 works fine) instead, then [**configure**]{.command} will just use the specified value and skip the check.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.60.2, "Contents of Diffutils."](../chapter08/diffutils.md#contents-diffutils "8.60.2. Contents of Diffutils"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](coreutils.md "Coreutils-9.11"){accesskey="p"}

    Coreutils-9.11

-   [Next](file.md "File-5.47"){accesskey="n"}

    File-5.47

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
