::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](polkit.md "Polkit-127"){accesskey="p"}

    Polkit-127

-   [Next](shadow.md "Shadow-4.19.4"){accesskey="n"}

    Shadow-4.19.4

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#polkit-gnome}polkit-gnome-0.105 {#polkit-gnome-0.105 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Polkit GNOME {#introduction-to-polkit-gnome .sect2}

The [Polkit GNOME]{.application} package provides an Authentication Agent for [Polkit]{.application} that integrates well with the [GNOME]{.application} Desktop environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/polkit-gnome/0.105/polkit-gnome-0.105.tar.xz](https://download.gnome.org/sources/polkit-gnome/0.105/polkit-gnome-0.105.tar.xz){.ulink}

-   Download MD5 sum: 50ecad37c8342fb4a52f590db7530621

-   Download size: 305 KB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/polkit-gnome-0.105-consolidated_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/polkit-gnome-0.105-consolidated_fixes-1.patch){.ulink}
:::

### Polkit GNOME Dependencies

#### Required

[AccountsService-23.13.9](../general/accountsservice.md "AccountsService-23.13.9"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, and [Polkit-127](polkit.md "Polkit-127"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Polkit GNOME {#installation-of-polkit-gnome .sect2}

First, apply some fixes that allow for the proper user icon to be used, as well as some security fixes:

``` userinput
patch -Np1 -i ../polkit-gnome-0.105-consolidated_fixes-1.patch
```

Install [Polkit GNOME]{.application} by running the following commands:

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

:::: {.configuration lang="en"}
## Configuring Polkit GNOME {#configuring-polkit-gnome .sect2}

::: {.sect3 lang="en"}
### Automatic Startup {#automatic-startup .sect3}

For the authentication framework to work, [**polkit-gnome-authentication-agent-1**]{.command} needs to be started. However, [**make install**]{.command} did not install a startup file for the [Polkit GNOME]{.application} so you have to create it by yourself.

Issue the following commands as the `root`{.systemitem} user to create a startup file for [Polkit GNOME]{.application}:

``` root
mkdir -p /etc/xdg/autostart &&
cat > /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop << "EOF"
[Desktop Entry]
Name=PolicyKit Authentication Agent
Comment=PolicyKit Authentication Agent
Exec=/usr/libexec/polkit-gnome-authentication-agent-1
Terminal=false
Type=Application
Categories=
NoDisplay=true
OnlyShowIn=GNOME;XFCE;Unity;
AutostartCondition=GNOME3 unless-session gnome
EOF
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [polkit-gnome-authentication-agent-1]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------------------------------ ----------------------------------------------------
  []{#polkit-gnome-authentication-agent-1}[[**polkit-gnome-authentication-agent-1**]{.command}]{.term}   is the [Polkit]{.application} authentication agent
  ------------------------------------------------------------------------------------------------------ ----------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](polkit.md "Polkit-127"){accesskey="p"}

    Polkit-127

-   [Next](shadow.md "Shadow-4.19.4"){accesskey="n"}

    Shadow-4.19.4

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
