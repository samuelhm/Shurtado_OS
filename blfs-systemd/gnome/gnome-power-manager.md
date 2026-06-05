::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-nettool.md "gnome-nettool-42.0"){accesskey="p"}

    gnome-nettool-42.0

-   [Next](gnome-system-monitor.md "gnome-system-monitor-50.0"){accesskey="n"}

    gnome-system-monitor-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-power-manager}gnome-power-manager-50.0 {#gnome-power-manager-50.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Power Manager {#introduction-to-gnome-power-manager .sect2}

The [GNOME Power Manager]{.application} package contains a tool used to report on power management on the system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-power-manager/50/gnome-power-manager-50.0.tar.xz](https://download.gnome.org/sources/gnome-power-manager/50/gnome-power-manager-50.0.tar.xz){.ulink}

-   Download MD5 sum: 541c76d6000fced2a3cc6bcc88f1d860

-   Download size: 376 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### GNOME Power Manager Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref} and [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Power Manager {#installation-of-gnome-power-manager .sect2}

Install [GNOME Power Manager]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-power-statistics]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------
  []{#gnome-power-statistics}[[**gnome-power-statistics**]{.command}]{.term}   is used to visualize the power consumption of laptop hardware
  ---------------------------------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-nettool.md "gnome-nettool-42.0"){accesskey="p"}

    gnome-nettool-42.0

-   [Next](gnome-system-monitor.md "gnome-system-monitor-50.0"){accesskey="n"}

    gnome-system-monitor-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
