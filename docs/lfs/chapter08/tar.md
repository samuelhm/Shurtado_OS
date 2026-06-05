::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](patch.md "Patch-2.8"){accesskey="p"}

    Patch-2.8

-   [Next](texinfo.md "Texinfo-7.3"){accesskey="n"}

    Texinfo-7.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-tar}8.71. Tar-1.35 {#tar-1.35 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Tar package provides the ability to create tar archives as well as perform various other kinds of archive manipulation. Tar can be used on previously created archives to extract files, to store additional files, or to update or list files which were already stored.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.6 SBU]{.segbody}
:::

::: seg
**Required disk space:** [43 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.71.1. Installation of Tar {#installation-of-tar .sect2}

Prepare Tar for compilation:

``` userinput
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
```

::: variablelist
**The meaning of the configure option:**

[`FORCE_UNSAFE_CONFIGURE=1`{.envar}]{.term}

:   This forces the test for `mknod`{.function} to be run as `root`{.systemitem}. It is generally considered dangerous to run this test as the `root`{.systemitem} user, but as it is being run on a system that has only been partially built, overriding it is OK.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

One test, capabilities: binary store/restore, is known to fail if it is run because LFS lacks selinux, but will be skipped if the host kernel does not support extended attributes or security labels on the filesystem used for building LFS.

Install the package:

``` userinput
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.35
```
::::

:::::::: {.content lang="en"}
## []{#contents-tar}8.71.2. Contents of Tar {#contents-of-tar .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [tar]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/tar-1.35]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------- ------------------------------------------------------------------------------------------
  []{#tar}[[**tar**]{.command}]{.term}   Creates, extracts files from, and lists the contents of archives, also known as tarballs
  -------------------------------------- ------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](patch.md "Patch-2.8"){accesskey="p"}

    Patch-2.8

-   [Next](texinfo.md "Texinfo-7.3"){accesskey="n"}

    Texinfo-7.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
