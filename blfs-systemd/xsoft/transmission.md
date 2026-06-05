::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](tigervnc.md "Tigervnc-1.16.0"){accesskey="p"}

    Tigervnc-1.16.0

-   [Next](xarchiver.md "xarchiver-0.5.4.26"){accesskey="n"}

    xarchiver-0.5.4.26

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#transmission}Transmission-4.1.1 {#transmission-4.1.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Transmission {#introduction-to-transmission .sect2}

[Transmission]{.application} is a cross-platform, open source BitTorrent client. This is useful for downloading large files (such as Linux ISOs) and reduces the need for the distributors to provide server bandwidth.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/transmission/transmission/releases/download/4.1.1/transmission-4.1.1.tar.xz](https://github.com/transmission/transmission/releases/download/4.1.1/transmission-4.1.1.tar.xz){.ulink}

-   Download MD5 sum: 6b86f32e309daa267ab4f2e07df52724

-   Download size: 12 MB

-   Estimated disk space required: 295 MB (with both GUI interfaces)

-   Estimated build time: 2.3 SBU (with both GUI interfaces; using parallelism=4)
:::

### Transmission Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}

#### Recommended

[libevent-2.1.12](../basicnet/libevent.md "libevent-2.1.12"){.xref}, [libpsl-0.21.5](../basicnet/libpsl.md "libpsl-0.21.5"){.xref} (to use system libraries instead of bundled ones), and [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}

#### Recommended (to build a GUI)

[Gtkmm-4.22.0](../x/gtkmm4.md "Gtkmm-4.22.0"){.xref} or [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Optional

[nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref} (for building the web client, not needed at run time), [appindicator](https://github.com/ubuntu/gnome-shell-extension-appindicator){.ulink}, [dht](https://github.com/jech/dht){.ulink}, [libb64](https://github.com/libb64/libb64){.ulink}, [libdeflate](https://github.com/ebiggers/libdeflate){.ulink}, [libnatpmp](https://github.com/miniupnp/libnatpmp){.ulink}, [libutp](https://github.com/bittorrent/libutp){.ulink}, and [miniupnp](https://github.com/miniupnp/miniupnp){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/transmission](https://wiki.linuxfromscratch.org/blfs/wiki/transmission){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Transmission {#installation-of-transmission .sect2}

Install [Transmission]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/transmission-4.1.1 \
      .. &&

make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

Next, if [Gtkmm-4.22.0](../x/gtkmm4.md "Gtkmm-4.22.0"){.xref} was installed when the package was built, create the transmission icon from the SVG file. As the `root`{.systemitem} user:

``` root
rsvg-convert                                                   \
   /usr/share/icons/hicolor/scalable/apps/transmission-gtk.svg \
   -o /usr/share/pixmaps/transmission.png
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D ENABLE_QT=OFF`{.option}: This switch disables building the [Qt]{.application} interface. The default is to build it if [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} is installed.

`-D ENABLE_GTK=OFF`{.option}: This switch disables building the GTK-4 interface. The default is to build it if [Gtkmm-4.22.0](../x/gtkmm4.md "Gtkmm-4.22.0"){.xref} is installed.

`-D ENABLE_WEB=OFF`{.option}: This switch disables building the web client. The default is to build it if [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref} is installed.

`-D REBUILD_WEB=ON`{.option}: This switch forces rebuilding the web client. This option needs [nodejs-24.16.0](../general/nodejs.md "Node.js-24.16.0"){.xref} to be installed as well as an internet connection. The default is to not rebuild the client.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [transmission-create, transmission-daemon, transmission-edit, transmission-gtk, transmission-qt, transmission-remote, and transmission-show]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/transmission (contains the web client) and /usr/share/doc/transmission-4.1.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#transmission-create}[[**transmission-create**]{.command}]{.term}   is a command line tool used to create .torrent files
  []{#transmission-daemon}[[**transmission-daemon**]{.command}]{.term}   is a daemon-based Transmission session that can be controlled via RPC commands from Transmission's web interface or [**transmission-remote**]{.command}
  []{#transmission-edit}[[**transmission-edit**]{.command}]{.term}       is a command line tool to modify .torrent files' announce URLs
  []{#transmission-gtk}[[**transmission-gtk**]{.command}]{.term}         is a GTK+ bittorrent client
  []{#transmission-qt}[[**transmission-qt**]{.command}]{.term}           is a Qt-based bittorrent client
  []{#transmission-remote}[[**transmission-remote**]{.command}]{.term}   is a remote control utility for transmission-daemon and transmission
  []{#transmission-show}[[**transmission-show**]{.command}]{.term}       is a command line tool to display bittorrent .torrent file metadata
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](tigervnc.md "Tigervnc-1.16.0"){accesskey="p"}

    Tigervnc-1.16.0

-   [Next](xarchiver.md "xarchiver-0.5.4.26"){accesskey="n"}

    xarchiver-0.5.4.26

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
