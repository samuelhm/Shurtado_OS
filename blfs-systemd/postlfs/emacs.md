<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](ed.md "Ed-1.22.5")

    Ed-1.22.5

-   [Next](joe.md "JOE-4.6")

    JOE-4.6

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Emacs-30.2 {#emacs-30.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Emacs {#introduction-to-emacs}

The <span class="application">Emacs</span> package contains an extensible, customizable, self-documenting real-time display editor.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/emacs/emacs-30.2.tar.xz">https://ftpmirror.gnu.org/emacs/emacs-30.2.tar.xz</a>

-   Download MD5 sum: 0adba4843ac864ba8c3c9b2a7deea176

-   Download size: 53 MB

-   Estimated disk space required: 556 MB

-   Estimated build time: 0.6 SBU (Using parallelism=4)
</div>

### Emacs Dependencies

#### Recommended

<a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, and <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>

#### Optional

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../gnome/gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../general/gpm.md" title="GPM-1.20.7">GPM-1.20.7</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://ftpmirror.gnu.org/intlfonts/">intlfonts</a>, <a class="ulink" href="https://directory.fsf.org/wiki/Libungif">libungif</a>, <a class="ulink" href="https://www.nongnu.org/m17n/">libotf</a>, and <a class="ulink" href="https://www.nongnu.org/m17n/">m17n-lib</a> - to correctly display such complex scripts as Indic and Khmer, and also for scripts that require Arabic shaping support (Arabic and Farsi), <a class="ulink" href="https://mailutils.org/">mailutils</a>, and <a class="ulink" href="https://www.x.org/pub/individual/lib/">libXaw3d</a>
</div>

<div class="installation" lang="en">
## Installation of Emacs {#installation-of-emacs}

Install <span class="application">Emacs</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite. If make succeeds, you can test the result by running <span class="command"><strong>src/emacs -Q</strong></span>, which is the program that will be installed, with its auxiliary files. This should start and display the application opening screen.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
chown -v -R root:root /usr/share/emacs/30.2
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and you can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed and issue the following command as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--with-imagemagick</code>: Use this if you have installed <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> and wish to link against it.

<code class="option">--with-gif=no</code>: Use this if you have not installed <a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a> or <a class="ulink" href="https://directory.fsf.org/wiki/Libungif">libungif</a>.

<code class="option">--with-tiff=no</code>: Use this if you have not installed <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>.

<code class="option">--with-gnutls=no</code>: Use this if you have not installed <a class="xref" href="gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>.

<code class="option">--without-harfbuzz</code>: Use this if you have not installed <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>.

<code class="option">--with-json=no</code>: Use this if you have not installed <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>.

<code class="option">--with-kerberos5</code>: Use this option if you have installed <a class="xref" href="mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> and need to use it for authentication in Emacs' built-in email client.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ctags, ebrowse, emacs (symlink), emacs-30.2, emacsclient, and etags</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/libexec/emacs and /usr/share/emacs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------
  <a id="ctags"></a><span class="command"><span class="term"><strong>ctags</strong></span></span>               creates cross-reference tagfile database files for source code
  <a id="ebrowse"></a><span class="command"><span class="term"><strong>ebrowse</strong></span></span>           permits browsing of C++ class hierarchies from within <span class="command"><strong>emacs</strong></span>
  <a id="emacs-prog"></a><span class="command"><span class="term"><strong>emacs</strong></span></span>          is an editor
  <a id="emacsclient"></a><span class="command"><span class="term"><strong>emacsclient</strong></span></span>   attaches an <span class="command"><strong>emacs</strong></span> session to an already running <span class="command"><strong>emacsserver</strong></span> instance
  <a id="etags"></a><span class="command"><span class="term"><strong>etags</strong></span></span>               is another program to generate source code cross-reference tagfiles
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ed.md "Ed-1.22.5")

    Ed-1.22.5

-   [Next](joe.md "JOE-4.6")

    JOE-4.6

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
