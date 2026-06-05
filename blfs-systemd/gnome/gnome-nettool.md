::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-maps.md "gnome-maps-50.1"){accesskey="p"}

    gnome-maps-50.1

-   [Next](gnome-power-manager.md "gnome-power-manager-50.0"){accesskey="n"}

    gnome-power-manager-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-nettool}gnome-nettool-42.0 {#gnome-nettool-42.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GNOME Nettool {#introduction-to-gnome-nettool .sect2}

The [GNOME Nettool]{.application} package is a network information tool which provides GUI interface for some of the most common command line network tools.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-nettool/42/gnome-nettool-42.0.tar.xz](https://download.gnome.org/sources/gnome-nettool/42/gnome-nettool-42.0.tar.xz){.ulink}

-   Download MD5 sum: ba99489e9e3a1af03e9f2719acac7beb

-   Download size: 413 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/gnome-nettool-42.0-ping_and_netstat_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/gnome-nettool-42.0-ping_and_netstat_fixes-1.patch){.ulink}
:::

### GNOME Nettool Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, and [libgtop-2.41.3](libgtop.md "libgtop-2.41.3"){.xref}

#### Runtime Dependencies

[BIND Utilities-9.20.20](../basicnet/bind-utils.md "BIND Utilities-9.20.20"){.xref}, [Nmap-7.99](../basicnet/nmap.md "Nmap-7.99"){.xref}, [Net-tools-2.10](../basicnet/net-tools.md "Net-tools-2.10"){.xref}, [Traceroute-2.1.6](../basicnet/traceroute.md "Traceroute-2.1.6"){.xref}, and [Whois-5.6.6](../basicnet/whois.md "Whois-5.6.6"){.xref}
::::::

::: {.installation lang="en"}
## Installation of GNOME Nettool {#installation-of-gnome-nettool .sect2}

First, adapt [GNOME Nettool]{.application} to changes in the [ping]{.application}, [ping6]{.application}, and [netstat]{.application} utilities:

``` userinput
patch -Np1 -i ../gnome-nettool-42.0-ping_and_netstat_fixes-1.patch
```

Then add a fix for newer versions of meson:

``` userinput
sed -i '/merge_file/s/(.*/(/' data/meson.build
```

Install [GNOME Nettool]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gnome-nettool]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gnome-nettool and /usr/share/help/\*/gnome-nettool]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- -------------------------------
  []{#gnome-nettool-prog}[[**gnome-nettool**]{.command}]{.term}   is a network information tool
  --------------------------------------------------------------- -------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-maps.md "gnome-maps-50.1"){accesskey="p"}

    gnome-maps-50.1

-   [Next](gnome-power-manager.md "gnome-power-manager-50.0"){accesskey="n"}

    gnome-power-manager-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
