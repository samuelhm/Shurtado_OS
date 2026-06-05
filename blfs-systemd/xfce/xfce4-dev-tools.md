::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libwnck.md "libwnck-43.3"){accesskey="p"}

    libwnck-43.3

-   [Next](libxfce4windowing.md "libxfce4windowing-4.20.6"){accesskey="n"}

    libxfce4windowing-4.20.6

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-dev-tools}xfce4-dev-tools-4.20.0 {#xfce4-dev-tools-4.20.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Xfce4 Development Tools {#introduction-to-the-xfce4-development-tools .sect2}

The [Xfce4 Development Tools]{.application} are a collection of tools and macros for building some Xfce applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://archive.xfce.org/src/xfce/xfce4-dev-tools/4.20/xfce4-dev-tools-4.20.0.tar.bz2](http://archive.xfce.org/src/xfce/xfce4-dev-tools/4.20/xfce4-dev-tools-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: bea58046e67b4274c022fcff893fa350

-   Download size: 372 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### The Xfce4 Development Tools Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of the Xfce4 Development Tools {#installation-of-the-xfce4-development-tools .sect2}

Install the [Xfce4 Development Tools]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xdt-autogen and xdt-csource]{.segbody}
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
-   [Prev](libwnck.md "libwnck-43.3"){accesskey="p"}

    libwnck-43.3

-   [Next](libxfce4windowing.md "libxfce4windowing-4.20.6"){accesskey="n"}

    libxfce4windowing-4.20.6

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
