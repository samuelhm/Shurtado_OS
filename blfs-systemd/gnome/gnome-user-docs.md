::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-tweaks.md "gnome-tweaks-49.0"){accesskey="p"}

    gnome-tweaks-49.0

-   [Next](yelp.md "Yelp-49.0"){accesskey="n"}

    Yelp-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-user-docs}gnome-user-docs-50.2 {#gnome-user-docs-50.2 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME User Docs {#introduction-to-gnome-user-docs .sect2}

The [GNOME User Docs]{.application} package contains documentation for [GNOME]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-user-docs/50/gnome-user-docs-50.2.tar.xz](https://download.gnome.org/sources/gnome-user-docs/50/gnome-user-docs-50.2.tar.xz){.ulink}

-   Download MD5 sum: d86fa4a703c5cabbe3dc924a91112987

-   Download size: 16 MB

-   Estimated disk space required: 176 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
:::

### GNOME User Docs Dependencies

#### Required

[itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref} and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME User Docs {#installation-of-gnome-user-docs .sect2}

Install [GNOME User Docs]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/help/\*/gnome-help and /usr/share/help/\*/system-admin-guide]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](gnome-tweaks.md "gnome-tweaks-49.0"){accesskey="p"}

    gnome-tweaks-49.0

-   [Next](yelp.md "Yelp-49.0"){accesskey="n"}

    Yelp-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
