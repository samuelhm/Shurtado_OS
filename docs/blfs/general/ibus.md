<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](highlight.md "Highlight-4.20")

    Highlight-4.20

-   [Next](imagemagick.md "ImageMagick-7.1.2-13")

    ImageMagick-7.1.2-13

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ibus-1.5.34 {#ibus-1.5.34}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ibus {#introduction-to-ibus}

<span class="application">ibus</span> is an Intelligent Input Bus. It is a new input framework for the Linux OS. It provides a fully featured and user friendly input method user interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ibus/ibus/archive/1.5.34/ibus-1.5.34.tar.gz">https://github.com/ibus/ibus/archive/1.5.34/ibus-1.5.34.tar.gz</a>

-   Download MD5 sum: 7504f9c694d12e3cfe1e9e358f84c21f

-   Download size: 1.8 MB

-   Estimated disk space required: 116 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; add 1.4 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Unicode Character Database: <a class="ulink" href="https://www.unicode.org/Public/17.0.0/ucd/UCD.zip">https://www.unicode.org/Public/17.0.0/ucd/UCD.zip</a>
</div>

### ibus Dependencies

#### Required

<a class="xref" href="iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> (for extracting the Unicode Character Database), and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Recommended

<a class="xref" href="../gnome/dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, and <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>

#### Optional

<a class="xref" href="../gnome/gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a> (for one test), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for generating API documentation), <a class="xref" href="libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for <span class="command"><strong>ibus-setup</strong></span>), <a class="xref" href="wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> (to build the Wayland support programs), <a class="ulink" href="https://www.joypixels.com/">EmojiOne</a>, and <a class="ulink" href="https://github.com/AyatanaIndicators/libdbusmenu">libdbusmenu</a>
</div>

<div class="installation" lang="en">
## Installation of ibus {#installation-of-ibus}

First, install the Unicode Character Database as the <code class="systemitem">root</code> user:

```bash
mkdir -p               /usr/share/unicode/ucd &&
unzip -o ../UCD.zip -d /usr/share/unicode/ucd
```

Fix an issue with deprecated schema entries:

```bash
sed -e 's@/desktop/ibus@/org/freedesktop/ibus@g' \
    -i data/dconf/org.freedesktop.ibus.gschema.xml
```

If <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> is not installed, remove the references to it:

```bash
if ! [ -e /usr/bin/gtkdocize ]; then
  sed '/docs/d;/GTK_DOC/d' -i Makefile.am configure.ac
fi
```

Install <span class="application">ibus</span> by running the following commands:

```bash
SAVE_DIST_FILES=1 NOCONFIGURE=1 ./autogen.sh &&

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-python2      \
            --disable-appindicator \
            --disable-gtk2         \
            --disable-emoji-dict   &&
make
```

To test the results, issue: <span class="command"><strong>sed 's/python\$/&3/' -i engine/test-gnome.py && make -k check</strong></span>. The test named ibus-compose fails because it uses some locales not installed in LFS. The test named ibus-keypress requires <code class="literal">CONFIG_INPUT_UINPUT</code> enabled in the kernel configuration and it would fail otherwise. The xkb-latin-layouts test is also known to fail on some systems.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-appindicator`*: This switch disables use of libdbusmenu. Omit if you installed the optional dependency.

*`--disable-emoji-dict`*: This switch disables the use of emoticon dictionaries. Omit if you installed the optional package.

*`--disable-gtk2`*: This switch removes the dependency on <span class="application">GTK+-2</span>.

<code class="option">--disable-gtk4</code>: This switch disables building the <span class="application">GTK 4</span> immodule. Use it if you don't want to install <span class="application">GTK 4</span>.

<code class="option">--enable-wayland</code>: This switch enables building the <span class="application">Wayland</span> support programs. It's automatically enabled if both <a class="xref" href="libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a> and <a class="xref" href="wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> are installed.

<code class="envar">NOCONFIGURE=1</code>: Prevent <span class="command"><strong>autogen.sh</strong></span> from running the generated <span class="command"><strong>configure</strong></span> script. We'll run the script manually instead of relying on <span class="command"><strong>autogen.sh</strong></span> to run it, because <span class="command"><strong>autogen.sh</strong></span> would set <code class="option">-fsanitize=address -fsanitize=leak</code> in <code class="envar">CFLAGS</code> running <span class="command"><strong>configure</strong></span>, but those compiler options are not suitable for productive use and they may also cause a build failure.

<code class="envar">SAVE_DIST_FILES=1</code>: This environment variable makes the <span class="command"><strong>autogen.sh</strong></span> script save some pre-generated header files instead of overwriting them when it is run. This prevents build failures when generating <code class="filename">ibusemojigen.h</code>.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="configuration" lang="en">
## Configuring Ibus {#configuring-ibus}

If GTK+-3 is installed and <code class="option">--disable-gtk3</code> is not used, the ibus IM module for GTK+-3 will be installed. As the <code class="systemitem">root</code> user, update a cache file of GTK+-3 so the GTK-based applications can find the newly installed IM module and use ibus as an input method:

```bash
gtk-query-immodules-3.0 --update-cache
```

The command above updates the cache file for GTK+-3. GTK-4 does not require a cache file for IM modules.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ibus, ibus-daemon, and ibus-setup</span>
</div>

<div class="seg">
**Installed Library:** <span class="application">libibus-1.0.so and im-ibus.so (<span class="segbody">GTK+ Immodule</span>)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/dconf/db/ibus.d, /usr/include/ibus-1.0, /usr/share/gtk-doc/html/ibus, and /usr/share/ibus</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------
  <a id="ibus-daemon"></a><span class="command"><span class="term"><strong>ibus-daemon</strong></span></span>   is the Intelligent Input Bus Daemon
  <a id="ibus-setup"></a><span class="command"><span class="term"><strong>ibus-setup</strong></span></span>     is the <span class="application">GTK+</span> program used to configure the <span class="command"><strong>ibus-daemon</strong></span>
  <a id="libibus-1.0"></a><span class="term"><code class="filename">libibus-1.0.so</code></span>   contains the <span class="application">ibus</span> API functions
  ------------------------------------------------------ ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](highlight.md "Highlight-4.20")

    Highlight-4.20

-   [Next](imagemagick.md "ImageMagick-7.1.2-13")

    ImageMagick-7.1.2-13

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
