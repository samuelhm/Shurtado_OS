<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-color-manager.md "gnome-color-manager-3.36.2")

    gnome-color-manager-3.36.2

-   [Next](gnome-disk-utility.md "gnome-disk-utility-46.1")

    gnome-disk-utility-46.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-connections-50.0 {#gnome-connections-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gnome-connections {#introduction-to-gnome-connections}

<span class="application">gnome-connections</span> is a VNC and RDP client for the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-connections/50/gnome-connections-50.0.tar.xz">https://download.gnome.org/sources/gnome-connections/50/gnome-connections-50.0.tar.xz</a>

-   Download MD5 sum: 8c39ecc6125b8b15e4190aa839d2abbd

-   Download size: 3.9 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
</div>

### gnome-connections Dependencies

#### Required

<a class="xref" href="../general/appstream.md" title="AppStream-1.1.2">AppStream-1.1.2</a>, <a class="xref" href="../xsoft/freerdp.md" title="FreeRDP-3.26.0">FreeRDP-3.26.0</a>, <a class="xref" href="../x/gtk-vnc.md" title="gtk-vnc-1.5.0">gtk-vnc-1.5.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of gnome-connections {#installation-of-gnome-connections}

Install <span class="application">gnome-connections</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-connections</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gnome-connections, /usr/lib/gnome-connections, /usr/share/gnome-connections, and /usr/share/help/\*/gnome-connections</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------- ------------------------------------------------------------------
  <a id="gnome-connections-prog"></a><span class="command"><span class="term"><strong>gnome-connections</strong></span></span>   is a remote desktop viewer for the <span class="application">GNOME</span> Desktop
  ----------------------------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-color-manager.md "gnome-color-manager-3.36.2")

    gnome-color-manager-3.36.2

-   [Next](gnome-disk-utility.md "gnome-disk-utility-46.1")

    gnome-disk-utility-46.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
