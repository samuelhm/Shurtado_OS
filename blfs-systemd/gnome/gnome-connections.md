::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-color-manager.md "gnome-color-manager-3.36.2"){accesskey="p"}

    gnome-color-manager-3.36.2

-   [Next](gnome-disk-utility.md "gnome-disk-utility-46.1"){accesskey="n"}

    gnome-disk-utility-46.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-connections}gnome-connections-50.0 {#gnome-connections-50.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gnome-connections {#introduction-to-gnome-connections .sect2}

[gnome-connections]{.application} is a VNC and RDP client for the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-connections/50/gnome-connections-50.0.tar.xz](https://download.gnome.org/sources/gnome-connections/50/gnome-connections-50.0.tar.xz){.ulink}

-   Download MD5 sum: 8c39ecc6125b8b15e4190aa839d2abbd

-   Download size: 3.9 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
:::

### gnome-connections Dependencies

#### Required

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref}, [FreeRDP-3.26.0](../xsoft/freerdp.md "FreeRDP-3.26.0"){.xref}, [gtk-vnc-1.5.0](../x/gtk-vnc.md "gtk-vnc-1.5.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of gnome-connections {#installation-of-gnome-connections .sect2}

Install [gnome-connections]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

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
**Installed Programs:** [gnome-connections]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gnome-connections, /usr/lib/gnome-connections, /usr/share/gnome-connections, and /usr/share/help/\*/gnome-connections]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------- ------------------------------------------------------------------
  []{#gnome-connections-prog}[[**gnome-connections**]{.command}]{.term}   is a remote desktop viewer for the [GNOME]{.application} Desktop
  ----------------------------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-color-manager.md "gnome-color-manager-3.36.2"){accesskey="p"}

    gnome-color-manager-3.36.2

-   [Next](gnome-disk-utility.md "gnome-disk-utility-46.1"){accesskey="n"}

    gnome-disk-utility-46.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
