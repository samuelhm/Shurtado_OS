<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnl.md "libnl-3.12.0")

    libnl-3.12.0

-   [Next](libnsl.md "libnsl-2.0.1")

    libnsl-2.0.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libnma-1.10.6 {#libnma-1.10.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libnma {#introduction-to-libnma}

The <span class="application">libnma</span> package contains an implementation of the <span class="application">NetworkManager</span> GUI functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libnma/1.10/libnma-1.10.6.tar.xz">https://download.gnome.org/sources/libnma/1.10/libnma-1.10.6.tar.xz</a>

-   Download MD5 sum: 71c7ce674fea1fae8f1368a7fcb6ff43

-   Download size: 688 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4; with test)
</div>

### libnma Dependencies

#### Required

<a class="xref" href="../gnome/gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, and <a class="xref" href="networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>

#### Recommended

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="ulink" href="https://gitlab.gnome.org/GNOME/mobile-broadband-provider-info">mobile-broadband-provider-info</a>
</div>

<div class="installation" lang="en">
## Installation of libnma {#installation-of-libnma}

Install <span class="application">libnma</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk_doc=false    \
      -D libnma_gtk4=true \
      -D mobile_broadband_provider_info=false &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: This parameter disables generating API documentation using gtk-doc. If you have <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to generate the API documentation, omit this switch.

*`-D libnma_gtk4=true`*: This parameter builds the GTK-4 version of libnma. It is needed by <a class="xref" href="../gnome/gnome-control-center.md" title="gnome-control-center-50.2">gnome-control-center-50.2</a>.

*`-D mobile_broadband_provider_info=false`*: This switch disables WWAN support because mobile-broadband-provider-info is not in BLFS. Omit this switch if you have it installed and wish to enable WWAN support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnma.so and libnma-gtk4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libnma</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------
  <a id="libnma-lib"></a><span class="term"><code class="filename">libnma.so</code></span>         contains the <span class="application">NetworkManager</span> GUI library
  <a id="libnma-gtk4"></a><span class="term"><code class="filename">libnma-gtk4.so</code></span>   contains the GTK-4 version of the <span class="application">NetworkManager</span> GUI library
  ------------------------------------------------------ ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libnl.md "libnl-3.12.0")

    libnl-3.12.0

-   [Next](libnsl.md "libnsl-2.0.1")

    libnsl-2.0.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
