::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](icon-naming-utils.md "icon-naming-utils-0.8.90"){accesskey="p"}

    icon-naming-utils-0.8.90

-   [Next](oxygen-icons.md "oxygen-icons-6.1.0"){accesskey="n"}

    oxygen-icons-6.1.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxde-icon-theme}lxde-icon-theme-0.5.1 {#lxde-icon-theme-0.5.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LXDE Icon Theme {#introduction-to-lxde-icon-theme .sect2}

The [LXDE Icon Theme]{.application} package contains nuoveXT 2.2 Icon Theme for [LXDE]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/lxde/lxde-icon-theme-0.5.1.tar.xz](https://downloads.sourceforge.net/lxde/lxde-icon-theme-0.5.1.tar.xz){.ulink}

-   Download MD5 sum: 7467133275edbbcc79349379235d4411

-   Download size: 4.3 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
:::

### LXDE Icon Theme Dependencies

#### Optional

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} (for [**gtk-update-icon-cache**]{.command} command)
:::::

::: {.installation lang="en"}
## Installation of LXDE Icon Theme {#installation-of-lxde-icon-theme .sect2}

Install [LXDE Icon Theme]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have installed one of the optional dependencies, run the following command as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qf /usr/share/icons/nuoveXT2
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
**Installed Directory:** [/usr/share/icons/nuoveXT2]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](icon-naming-utils.md "icon-naming-utils-0.8.90"){accesskey="p"}

    icon-naming-utils-0.8.90

-   [Next](oxygen-icons.md "oxygen-icons-6.1.0"){accesskey="n"}

    oxygen-icons-6.1.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
