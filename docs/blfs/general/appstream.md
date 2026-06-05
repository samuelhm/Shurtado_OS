<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](abseil-cpp.md "Abseil-cpp-20260107.1")

    Abseil-cpp-20260107.1

-   [Next](appstream-glib.md "appstream-glib-0.8.3")

    appstream-glib-0.8.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# AppStream-1.1.2 {#appstream-1.1.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to AppStream {#introduction-to-appstream}

The <span class="application">AppStream</span> package contains a library and tool that is useful for retrieving software metadata and making it easily accessible to programs which need it.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/appstream/releases/AppStream-1.1.2.tar.xz">https://www.freedesktop.org/software/appstream/releases/AppStream-1.1.2.tar.xz</a>

-   Download MD5 sum: 993cb6e1c6ab57ce59c5c3ba397f2b21

-   Download size: 2.7 MB

-   Estimated disk space required: 40 MB

-   Estimated build time: less than 0.1 SBU (add 0.1 SBU for tests; both using parallelism=4)
</div>

### AppStream Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="libfyaml.md" title="libfyaml-0.9.6">libfyaml-0.9.6</a>, <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="libxmlb.md" title="libxmlb-0.3.27">libxmlb-0.3.27</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Recommended

<a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>

#### Optional

<a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, <a class="ulink" href="https://github.com/openSUSE/daps">DAPS</a>, and <a class="ulink" href="https://github.com/zvelo/libstemmer">libstemmer</a>
</div>

<div class="installation" lang="en">
## Installation of AppStream {#installation-of-appstream}

Install <span class="application">AppStream</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D apidocs=false         \
            -D bash-completion=false \
            -D stemming=false   .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
mv -v /usr/share/doc/appstream{,-1.1.2}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D apidocs=false`*: This switch disables building the API documentation. Remove it if you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to regenerate the API documentation. When the API documentation is not regenerated, a pre-built copy is installed anyway.

*`-D bash-completion=false`*: This switch disables bash-completion support which is not in BLFS.

*`-D stemming=false`*: This switch disables stemming support. Remove this switch if you have <a class="ulink" href="https://github.com/zvelo/libstemmer">libstemmer</a> installed and want faster searches.

<code class="option">-D qt=true</code>: Use this option if you have <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> installed and you want to build support for Qt6 applications into this package.

<code class="option">-D man=false</code>: This switch disables building the manpages. Add it if you do not have <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> installed.
</div>

<div class="configuration" lang="en">
## Configuring AppStream {#configuring-appstream}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/usr/share/metainfo/org.linuxfromscratch.lfs.xml</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">AppStream</span> expects an operating system metainfo file describing the GNU/Linux distribution. As the <code class="systemitem">root</code> user, create the file describing LFS:

```bash
install -vdm755 /usr/share/metainfo &&
cat > /usr/share/metainfo/org.linuxfromscratch.lfs.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<component type="operating-system">
  <id>org.linuxfromscratch.lfs</id>
  <name>Linux From Scratch</name>
  <summary>A customized Linux system built entirely from source</summary>
  <description>
    <p>
      Linux From Scratch (LFS) is a project that provides you with
      step-by-step instructions for building your own customized Linux
      system entirely from source.
    </p>
  </description>
  <url type="homepage">https://www.linuxfromscratch.org/lfs/</url>
  <metadata_license>MIT</metadata_license>
  <developer id='linuxfromscratch.org'>
    <name>The Linux From Scratch Editors</name>
  </developer>

  <releases>
    <release version="13.0" type="stable" date="2026-03-05">
      <description>
        <p>Now contains Binutils 2.46.0, GCC-15.2.0, Glibc-2.43,
        Linux kernel 6.18, and six security updates.</p>
      </description>
    </release>

    <release version="12.4" type="stable" date="2025-09-01">
      <description>
        <p>Now contains Binutils 2.45, GCC-15.2.0, Glibc-2.42,
        Linux kernel 6.16, and twelve security updates.</p>
      </description>
    </release>

    <release version="12.3" type="stable" date="2025-03-05">
      <description>
        <p>Now contains Binutils 2.44, GCC-14.2.0, Glibc-2.41, and
        Linux Kernel 6.13, and three security updates.</p>
      </description>
    </release>
  </releases>
</component>
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">appstreamcli</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libappstream.so and libAppStreamQt.so (if Qt6 support is enabled)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/appstream, /usr/include/AppStreamQt (if Qt6 support is enabled), /usr/lib/cmake/AppStreamQt (if Qt6 support is enabled), /usr/share/doc/appstream-1.1.2, and /usr/share/installed-tests/appstream</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="appstreamcli"></a><span class="command"><span class="term"><strong>appstreamcli</strong></span></span>       queries information from AppStream metadata and from the AppStream component index
  <a id="libappstream"></a><span class="term"><code class="filename">libappstream.so</code></span>       contains functions that handle AppStream metadata queries and request information from the AppStream component index
  <a id="libAppStreamQt"></a><span class="term"><code class="filename">libAppStreamQt.so</code></span>   contains functions that allow Qt6 applications to handle AppStream metadata queries and allows them to request information from the AppStream component index
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](abseil-cpp.md "Abseil-cpp-20260107.1")

    Abseil-cpp-20260107.1

-   [Next](appstream-glib.md "appstream-glib-0.8.3")

    appstream-glib-0.8.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
