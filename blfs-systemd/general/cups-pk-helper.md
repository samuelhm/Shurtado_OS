::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](cpio.md "cpio-2.15"){accesskey="p"}

    cpio-2.15

-   [Next](dbus.md "dbus-1.16.2"){accesskey="n"}

    dbus-1.16.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cups-pk-helper}cups-pk-helper-0.2.7 {#cups-pk-helper-0.2.7 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to cups-pk-helper {#introduction-to-cups-pk-helper .sect2}

The [cups-pk-helper]{.application} package contains a [PolicyKit]{.application} helper used to configure [Cups]{.application} with fine-grained privileges.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/cups-pk-helper/releases/cups-pk-helper-0.2.7.tar.xz](https://www.freedesktop.org/software/cups-pk-helper/releases/cups-pk-helper-0.2.7.tar.xz){.ulink}

-   Download MD5 sum: 0cdadec9ea8f88b7fc7af8ca206da2bd

-   Download size: 56 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: 0.1 SBU
:::

### cups-pk-helper Dependencies

#### Required

[Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref} and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}
:::::

::: {.installation lang="en"}
## Installation of cups-pk-helper {#installation-of-cups-pk-helper .sect2}

Install [cups-pk-helper]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cups-pk-helper-mechanism (library executable)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](cpio.md "cpio-2.15"){accesskey="p"}

    cpio-2.15

-   [Next](dbus.md "dbus-1.16.2"){accesskey="n"}

    dbus-1.16.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
