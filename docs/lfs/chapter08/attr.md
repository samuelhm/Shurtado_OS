::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](mpc.md "MPC-1.4.1"){accesskey="p"}

    MPC-1.4.1

-   [Next](acl.md "Acl-2.3.2"){accesskey="n"}

    Acl-2.3.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-attr}8.25. Attr-2.5.2 {#attr-2.5.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Attr package contains utilities to administer the extended attributes of filesystem objects.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [4.1 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.25.1. Installation of Attr {#installation-of-attr .sect2}

Prepare Attr for compilation:

``` userinput
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2
```

Compile the package:

``` userinput
make
```

The tests must be run on a filesystem that supports extended attributes such as the ext2, ext3, or ext4 filesystems. To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```
:::

::::::::: {.content lang="en"}
## []{#contents-attr}8.25.2. Contents of Attr {#contents-of-attr .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [attr, getfattr, and setfattr]{.segbody}
:::

::: seg
**Installed library:** [libattr.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/attr and /usr/share/doc/attr-2.5.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------------
  []{#attr}[[**attr**]{.command}]{.term}           Extends attributes on filesystem objects
  []{#getfattr}[[**getfattr**]{.command}]{.term}   Gets the extended attributes of filesystem objects
  []{#setfattr}[[**setfattr**]{.command}]{.term}   Sets the extended attributes of filesystem objects
  []{#libattr}[`libattr`{.filename}]{.term}        Contains the library functions for manipulating extended attributes
  ------------------------------------------------ ---------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](mpc.md "MPC-1.4.1"){accesskey="p"}

    MPC-1.4.1

-   [Next](acl.md "Acl-2.3.2"){accesskey="n"}

    Acl-2.3.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
