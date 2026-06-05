::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](acl.md "Acl-2.3.2"){accesskey="p"}

    Acl-2.3.2

-   [Next](libxcrypt.md "Libxcrypt-4.5.2"){accesskey="n"}

    Libxcrypt-4.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libcap}8.27. Libcap-2.78 {#libcap-2.78 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Libcap package implements the userspace interface to the POSIX 1003.1e capabilities available in Linux kernels. These capabilities partition the all-powerful root privilege into a set of distinct privileges.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [3.1 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.27.1. Installation of Libcap {#installation-of-libcap .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If updating this package on an existing system and the go compiler is installed, prevent a build error by using [**export GOLANG=no**]{.command} before running the commands below. Be sure to unset `GOLANG`{.envar} after installation is complete.
:::

Prevent static libraries from being installed:

``` userinput
sed -i '/install -m.*STA/d' libcap/Makefile
```

Compile the package:

``` userinput
make prefix=/usr lib=lib
```

::: variablelist
**The meaning of the make option:**

[*`lib=lib`*]{.term}

:   This parameter sets the library directory to `/usr/lib`{.filename} rather than `/usr/lib64`{.filename} on x86_64. It has no effect on x86.
:::

To test the results, issue:

``` userinput
make test
```

Install the package:

``` userinput
make prefix=/usr lib=lib install
```
:::::

:::::::: {.content lang="en"}
## []{#contents-libcap}8.27.2. Contents of Libcap {#contents-of-libcap .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [capsh, getcap, getpcaps, and setcap]{.segbody}
:::

::: seg
**Installed library:** [libcap.so and libpsx.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------------------------------------------
  []{#capsh}[[**capsh**]{.command}]{.term}         A shell wrapper to explore and constrain capability support
  []{#getcap}[[**getcap**]{.command}]{.term}       Examines file capabilities
  []{#getpcaps}[[**getpcaps**]{.command}]{.term}   Displays the capabilities of the queried process(es)
  []{#setcap}[[**setcap**]{.command}]{.term}       Sets file capabilities
  []{#libcap}[`libcap`{.filename}]{.term}          Contains the library functions for manipulating POSIX 1003.1e capabilities
  []{#libpsx}[`libpsx`{.filename}]{.term}          Contains functions to support POSIX semantics for syscalls associated with the pthread library
  ------------------------------------------------ ------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](acl.md "Acl-2.3.2"){accesskey="p"}

    Acl-2.3.2

-   [Next](libxcrypt.md "Libxcrypt-4.5.2"){accesskey="n"}

    Libxcrypt-4.5.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
