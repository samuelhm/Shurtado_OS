<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](vlc.md "VLC-3.0.23")

    VLC-3.0.23

-   [Next](cdwriteutils.md "CD/DVD-Writing Utilities")

    CD/DVD-Writing Utilities

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xine-ui-0.99.14 {#xine-ui-0.99.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xine User Interface {#introduction-to-xine-user-interface}

The <span class="application">xine User Interface</span> package contains a multimedia player. It plays back CDs, DVDs and VCDs. It also decodes multimedia files like AVI, MOV, WMV, MPEG and MP3 from local disk drives, and displays multimedia streamed over the Internet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although this version of xine-ui works with most files, it is unable to open encrypted (content-scrambled) DVDs with the current version of libdvdcss.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/xine/xine-ui-0.99.14.tar.xz">https://downloads.sourceforge.net/xine/xine-ui-0.99.14.tar.xz</a>

-   Download MD5 sum: 86a4db9050405a91fcc33b7ad85274f5

-   Download size: 2.1 MB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU
</div>

### Xine User Interface Dependencies

#### Required

<a class="xref" href="xine-lib.md" title="xine-lib-1.2.13">xine-lib-1.2.13</a> and <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a>, <a class="ulink" href="https://www.lirc.org">LIRC</a>, and <a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a>
</div>

<div class="installation" lang="en">
## Installation of Xine User Interface {#installation-of-xine-user-interface}

Install <span class="application">xine User Interface</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make CC="gcc -std=gnu17"
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docsdir=/usr/share/doc/xine-ui-0.99.14 install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`docsdir=/usr/share/doc/xine-ui-0.99.14`*: This parameter causes the <span class="application">Xine UI</span> documentation to be installed in the versioned directory <code class="filename">/usr/share/doc/xine-ui-0.99.14</code>, rather that the default <code class="filename">/usr/share/doc/xine-ui</code>.
</div>

<div class="configuration" lang="en">
## Configuring Xine User Interface {#configuring-xine-user-interface}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.xine/config</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The above file is created and maintainable through the <span class="command"><strong>xine</strong></span> setup dialog box. The documentation for the configuration settings is located at <code class="filename">/usr/share/doc/xine-ui-0.99.14/README.config_en</code>.

If you have a DVB TV card, you can watch TV with the command <span class="command"><strong>xine dvb://</strong></span> and change channels with the scroll wheel on your mouse.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">aaxine, cacaxine, fbxine, xine, xine-bugreport, xine-check, and xine-remote</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/xine and /usr/share/doc/xine-ui-0.99.14</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="aaxine"></a><span class="command"><span class="term"><strong>aaxine</strong></span></span>                   is an ASCII art video player which utilizes <span class="application">AAlib</span> as the frontend for the <span class="application">xine Libraries</span>
  <a id="cacaxine"></a><span class="command"><span class="term"><strong>cacaxine</strong></span></span>               is a color ASCII art video player which utilizes <span class="application">CACA</span> as the frontend for the <span class="application">xine Libraries</span>
  <a id="fbxine"></a><span class="command"><span class="term"><strong>fbxine</strong></span></span>                   is a frame buffer interface to the <span class="application">xine Libraries</span>
  <a id="xine"></a><span class="command"><span class="term"><strong>xine</strong></span></span>                       is a multimedia player designed to play MPEG streams (audio and video), MPEG elementary streams (MP3), MPEG transport streams, Ogg files, AVI files, ASF files, some Quicktime files, VCDs and DVDs
  <a id="xine-bugreport"></a><span class="command"><span class="term"><strong>xine-bugreport</strong></span></span>   produces a terse system description and guides you through the process of reporting a bug
  <a id="xine-check"></a><span class="command"><span class="term"><strong>xine-check</strong></span></span>           tests the <span class="command"><strong>xine</strong></span> video player installation for common problems. It tests the operating system settings, installation of plugins, CD/DVD drive settings and video support parameters
  <a id="xine-remote"></a><span class="command"><span class="term"><strong>xine-remote</strong></span></span>         is a tool to connect to a <span class="command"><strong>xine</strong></span> remote control server
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vlc.md "VLC-3.0.23")

    VLC-3.0.23

-   [Next](cdwriteutils.md "CD/DVD-Writing Utilities")

    CD/DVD-Writing Utilities

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
