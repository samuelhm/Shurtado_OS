<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](bubblewrap.md "Bubblewrap-0.11.2")

    Bubblewrap-0.11.2

-   [Next](cpio.md "cpio-2.15")

    cpio-2.15

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Colord-1.4.8 {#colord-1.4.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Colord {#introduction-to-colord}

<span class="application">Colord</span> is a system service that makes it easy to manage, install, and generate color profiles. It is used mainly by <span class="application">GNOME Color Manager</span> for system integration and use when no users are logged in.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/colord/releases/colord-1.4.8.tar.xz">https://www.freedesktop.org/software/colord/releases/colord-1.4.8.tar.xz</a>

-   Download MD5 sum: 4d17dea7fe5460c2ea16aee64dca2ecb

-   Download size: 1.8 MB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### Colord Dependencies

#### Required

<a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended), <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="libgusb.md" title="libgusb-0.4.9">libgusb-0.4.9</a>, and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>

#### Recommended

<a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime)</span> and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../gnome/gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a> and <a class="xref" href="../x/colord-gtk.md" title="colord-gtk-0.3.1">colord-gtk-0.3.1</a> (to build the example tools), <a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build the man pages), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../pst/sane.md" title="SANE-1.4.0">SANE-1.4.0</a>, <a class="ulink" href="https://www.argyllcms.com/">ArgyllCMS</a>, and <a class="ulink" href="https://github.com/scop/bash-completion/">Bash Completion</a>
</div>

<div class="installation" lang="en">
## Installation of Colord {#installation-of-colord}

There should be a dedicated user and group to take control of the colord daemon after it has started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 71 colord &&
useradd -c "Color Daemon Owner" -d /var/lib/colord -u 71 \
        -g colord -s /bin/false colord
```

Install <span class="application">Colord</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D daemon_user=colord     \
      -D vapi=true              \
      -D systemd=true           \
      -D libcolordcompat=true   \
      -D argyllcms_sensor=false \
      -D bash_completion=false  \
      -D docs=false             \
      -D man=false              &&
ninja
```

If <a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> are installed, build the man pages:

```bash
meson configure -D man=true &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, <code class="filename">colord-self-test-daemon</code>, will fail if the package is already installed. The test suite must be run with the system-wide D-Bus Daemon running.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D daemon_user=colord`*: This switch is used so the colord daemon will run as an unprivileged user instead of the <code class="systemitem">root</code> user.

*`-D vapi=true`*: This switch enables building the <span class="application">Vala</span> bindings. Remove if you don't have <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a> installed.

*`-D systemd=true`*: This switch enables installation of the <span class="application">systemd</span> service.

*`-D libcolordcompat=true`*: This switch enables building a compatibility library for older packages that use <span class="application">Colord</span>.

*`-D argyllcms_sensor=false`*: This switch disables the ArgLLCMS sensor driver. Omit if you have <a class="ulink" href="https://www.argyllcms.com/">ArgyllCMS</a> installed and wish to use it.

*`-D bash_completion=false`*: This switch disables Bash Completion support for Colord applications.

*`-D docs=false`*: This switch disables building of documentation. Omit if you have <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> available.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cd-create-profile, cd-fix-profile, cd-iccdump, cd-it8, and colormgr</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcolord.so, libcolordcompat.so, libcolordprivate.so, and libcolorhug.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/colord-1, /usr/lib/colord-{plugins,sensors}, /usr/share/color{d}, /usr/share/gtk-doc/html/colord, and /var/lib/colord</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------
  <a id="cd-create-profile"></a><span class="command"><span class="term"><strong>cd-create-profile</strong></span></span>    is the Color Manager Profile Creation Tool
  <a id="cd-fix-profile"></a><span class="command"><span class="term"><strong>cd-fix-profile</strong></span></span>          is a tool used to fix metadata in ICC profiles
  <a id="cd-iccdump"></a><span class="command"><span class="term"><strong>cd-iccdump</strong></span></span>                  dumps the contents of an ICC profile as human readable text
  <a id="cd-it8"></a><span class="command"><span class="term"><strong>cd-it8</strong></span></span>                          is the Color Manager Testing Tool
  <a id="colormgr"></a><span class="command"><span class="term"><strong>colormgr</strong></span></span>                      is a text-mode program that allows you to interact with colord on the command line
  <a id="libcolord.so"></a><span class="term"><code class="filename">libcolord.so</code></span>                 contains the <span class="application">Colord</span> API functions
  <a id="libcolordcompat.so"></a><span class="term"><code class="filename">libcolordcompat.so</code></span>     contains legacy API functions for compatibility with older applications
  <a id="libcolordprivate.so"></a><span class="term"><code class="filename">libcolordprivate.so</code></span>   contains internal API functions for the programs included with <span class="application">Colord</span>
  <a id="libcolorhug.so"></a><span class="term"><code class="filename">libcolorhug.so</code></span>             contains a simple display hardware colorimiter
  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bubblewrap.md "Bubblewrap-0.11.2")

    Bubblewrap-0.11.2

-   [Next](cpio.md "cpio-2.15")

    cpio-2.15

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
