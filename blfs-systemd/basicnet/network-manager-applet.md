::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](networkmanager.md "NetworkManager-1.56.1"){accesskey="p"}

    NetworkManager-1.56.1

-   [Next](nmap.md "Nmap-7.99"){accesskey="n"}

    Nmap-7.99

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#network-manager-applet}network-manager-applet-1.34.0 {#network-manager-applet-1.34.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to NetworkManager Applet {#introduction-to-networkmanager-applet .sect2}

The [NetworkManager Applet]{.application} provides a tool and a panel applet used to configure wired and wireless network connections through GUI. It's designed for use with any desktop environment that uses [GTK+]{.application}, such as [Xfce]{.application} and [LXDE]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/network-manager-applet/1.34/network-manager-applet-1.34.0.tar.xz](https://download.gnome.org/sources/network-manager-applet/1.34/network-manager-applet-1.34.0.tar.xz){.ulink}

-   Download MD5 sum: 83ff059aff3a691766d5f0079209e5af

-   Download size: 1.9 MB

-   Estimated disk space required: 46 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### NetworkManager Applet Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libnma-1.10.6](libnma.md "libnma-1.10.6"){.xref}, and [libsecret-0.21.7](../gnome/libsecret.md "libsecret-0.21.7"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref}

#### Required (Runtime)

Since this package uses [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref} for authorization, one [Polkit Authentication Agent](../postlfs/polkit.md#polkit-agent "Optional Runtime Dependencies"){.xref} should be running when the functionality of this package is used.

#### Optional

[gnome-bluetooth-47.2](../gnome/gnome-bluetooth.md "gnome-bluetooth-47.2"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, and [libindicator](https://launchpad.net/libappindicator){.ulink}
:::::

::: {.installation lang="en"}
## Installation of NetworkManager Applet {#installation-of-networkmanager-applet .sect2}

Install [NetworkManager Applet]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D appindicator=no  \
      -D selinux=false    \
      -D team=false       &&
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

*`-D appindicator=no`*: This switch disables AppIndicator support in network-manager-applet because it requires libindicator, which is not in BLFS. The build will fail without this option.

*`-D selinux=false`*: This switch forcibly disables [SELinux]{.application} support since it is not currently in BLFS and the build will fail without it.

*`-D team=false`*: This switch disables the team configuration editor since it requires [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}. If you have Jansson installed, remove this option or set it to `true`{.literal}.

`-D wwan=false`{.option}: This switch disables WWAN support. Use this if you do not have [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref} installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nm-applet and nm-connection-editor]{.segbody}
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

  ------------------------------------------------------------------------ -----------------------------------------------------------
  []{#nm-connection-editor}[[**nm-connection-editor**]{.command}]{.term}   allows users to view and edit network connection settings
  ------------------------------------------------------------------------ -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](networkmanager.md "NetworkManager-1.56.1"){accesskey="p"}

    NetworkManager-1.56.1

-   [Next](nmap.md "Nmap-7.99"){accesskey="n"}

    Nmap-7.99

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
