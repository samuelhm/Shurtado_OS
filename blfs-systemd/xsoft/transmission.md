<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](tigervnc.md "Tigervnc-1.16.0")

    Tigervnc-1.16.0

-   [Next](xarchiver.md "xarchiver-0.5.4.26")

    xarchiver-0.5.4.26

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Transmission-4.1.1 {#transmission-4.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Transmission {#introduction-to-transmission}

<span class="application">Transmission</span> is a cross-platform, open source BitTorrent client. This is useful for downloading large files (such as Linux ISOs) and reduces the need for the distributors to provide server bandwidth.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/transmission/transmission/releases/download/4.1.1/transmission-4.1.1.tar.xz">https://github.com/transmission/transmission/releases/download/4.1.1/transmission-4.1.1.tar.xz</a>

-   Download MD5 sum: 6b86f32e309daa267ab4f2e07df52724

-   Download size: 12 MB

-   Estimated disk space required: 295 MB (with both GUI interfaces)

-   Estimated build time: 2.3 SBU (with both GUI interfaces; using parallelism=4)
</div>

### Transmission Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>

#### Recommended

<a class="xref" href="../basicnet/libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="../basicnet/libpsl.md" title="libpsl-0.21.5">libpsl-0.21.5</a> (to use system libraries instead of bundled ones), and <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>

#### Recommended (to build a GUI)

<a class="xref" href="../x/gtkmm4.md" title="Gtkmm-4.22.0">Gtkmm-4.22.0</a> or <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional

<a class="xref" href="../general/nodejs.md" title="Node.js-24.16.0">nodejs-24.16.0</a> (for building the web client, not needed at run time), <a class="ulink" href="https://github.com/ubuntu/gnome-shell-extension-appindicator">appindicator</a>, <a class="ulink" href="https://github.com/jech/dht">dht</a>, <a class="ulink" href="https://github.com/libb64/libb64">libb64</a>, <a class="ulink" href="https://github.com/ebiggers/libdeflate">libdeflate</a>, <a class="ulink" href="https://github.com/miniupnp/libnatpmp">libnatpmp</a>, <a class="ulink" href="https://github.com/bittorrent/libutp">libutp</a>, and <a class="ulink" href="https://github.com/miniupnp/miniupnp">miniupnp</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/transmission">https://wiki.linuxfromscratch.org/blfs/wiki/transmission</a>
</div>

<div class="installation" lang="en">
## Installation of Transmission {#installation-of-transmission}

Install <span class="application">Transmission</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/transmission-4.1.1 \
      .. &&

make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Next, if <a class="xref" href="../x/gtkmm4.md" title="Gtkmm-4.22.0">Gtkmm-4.22.0</a> was installed when the package was built, create the transmission icon from the SVG file. As the <code class="systemitem">root</code> user:

```bash
rsvg-convert                                                   \
   /usr/share/icons/hicolor/scalable/apps/transmission-gtk.svg \
   -o /usr/share/pixmaps/transmission.png
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D ENABLE_QT=OFF</code>: This switch disables building the <span class="application">Qt</span> interface. The default is to build it if <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> is installed.

<code class="option">-D ENABLE_GTK=OFF</code>: This switch disables building the GTK-4 interface. The default is to build it if <a class="xref" href="../x/gtkmm4.md" title="Gtkmm-4.22.0">Gtkmm-4.22.0</a> is installed.

<code class="option">-D ENABLE_WEB=OFF</code>: This switch disables building the web client. The default is to build it if <a class="xref" href="../general/nodejs.md" title="Node.js-24.16.0">nodejs-24.16.0</a> is installed.

<code class="option">-D REBUILD_WEB=ON</code>: This switch forces rebuilding the web client. This option needs <a class="xref" href="../general/nodejs.md" title="Node.js-24.16.0">nodejs-24.16.0</a> to be installed as well as an internet connection. The default is to not rebuild the client.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">transmission-create, transmission-daemon, transmission-edit, transmission-gtk, transmission-qt, transmission-remote, and transmission-show</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/transmission (contains the web client) and /usr/share/doc/transmission-4.1.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="transmission-create"></a><span class="command"><span class="term"><strong>transmission-create</strong></span></span>   is a command line tool used to create .torrent files
  <a id="transmission-daemon"></a><span class="command"><span class="term"><strong>transmission-daemon</strong></span></span>   is a daemon-based Transmission session that can be controlled via RPC commands from Transmission's web interface or <span class="command"><strong>transmission-remote</strong></span>
  <a id="transmission-edit"></a><span class="command"><span class="term"><strong>transmission-edit</strong></span></span>       is a command line tool to modify .torrent files' announce URLs
  <a id="transmission-gtk"></a><span class="command"><span class="term"><strong>transmission-gtk</strong></span></span>         is a GTK+ bittorrent client
  <a id="transmission-qt"></a><span class="command"><span class="term"><strong>transmission-qt</strong></span></span>           is a Qt-based bittorrent client
  <a id="transmission-remote"></a><span class="command"><span class="term"><strong>transmission-remote</strong></span></span>   is a remote control utility for transmission-daemon and transmission
  <a id="transmission-show"></a><span class="command"><span class="term"><strong>transmission-show</strong></span></span>       is a command line tool to display bittorrent .torrent file metadata
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tigervnc.md "Tigervnc-1.16.0")

    Tigervnc-1.16.0

-   [Next](xarchiver.md "xarchiver-0.5.4.26")

    xarchiver-0.5.4.26

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
