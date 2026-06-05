::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](attr.md "Attr-2.5.2"){accesskey="p"}

    Attr-2.5.2

-   [Next](libcap.md "Libcap-2.78"){accesskey="n"}

    Libcap-2.78

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-acl}8.26. Acl-2.3.2 {#acl-2.3.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Acl package contains utilities to administer Access Control Lists, which are used to define fine-grained discretionary access rights for files and directories.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.5 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.26.1. Installation of Acl {#installation-of-acl .sect2}

Prepare Acl for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/acl-2.3.2
```

Compile the package:

``` userinput
make
```

The Acl tests must be run on a filesystem that supports access controls. To test the results, issue:

``` userinput
make check
```

One test named `test/cp.test`{.filename} is known to fail because [Coreutils]{.application} is not built with the [Acl]{.application} support yet.

Install the package:

``` userinput
make install
```
:::

::::::::: {.content lang="en"}
## []{#contents-acl}8.26.2. Contents of Acl {#contents-of-acl .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [chacl, getfacl, and setfacl]{.segbody}
:::

::: seg
**Installed library:** [libacl.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/acl and /usr/share/doc/acl-2.3.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ----------------------------------------------------------------------
  []{#chacl}[[**chacl**]{.command}]{.term}       Changes the access control list of a file or directory
  []{#getfacl}[[**getfacl**]{.command}]{.term}   Gets file access control lists
  []{#setfacl}[[**setfacl**]{.command}]{.term}   Sets file access control lists
  []{#libacl}[`libacl`{.filename}]{.term}        Contains the library functions for manipulating Access Control Lists
  ---------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](attr.md "Attr-2.5.2"){accesskey="p"}

    Attr-2.5.2

-   [Next](libcap.md "Libcap-2.78"){accesskey="n"}

    Libcap-2.78

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
