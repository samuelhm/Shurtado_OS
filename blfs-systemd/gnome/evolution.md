<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](evince.md "Evince-48.4")

    Evince-48.4

-   [Next](file-roller.md "File-Roller-44.6")

    File-Roller-44.6

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Evolution-3.60.2 {#evolution-3.60.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Evolution {#introduction-to-evolution}

The <span class="application">Evolution</span> package contains an integrated mail, calendar and address book suite designed for the <span class="application">GNOME</span> environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/evolution/3.60/evolution-3.60.2.tar.xz">https://download.gnome.org/sources/evolution/3.60/evolution-3.60.2.tar.xz</a>

-   Download MD5 sum: 4ec00dcb2c280798f61642746fcbdf49

-   Download size: 13 MB

-   Estimated disk space required: 297 MB

-   Estimated build time: 0.7 SBU (Using parallelism=4)
</div>

### Evolution Dependencies

#### Required

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="evolution-data-server.md" title="evolution-data-server-3.60.2">evolution-data-server-3.60.2</a>, <a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="gnome-autoar.md" title="gnome-autoar-0.4.5">gnome-autoar-0.4.5</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>, and <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a>

#### Recommended

<a class="xref" href="../general/bogofilter.md" title="Bogofilter-1.2.5">Bogofilter-1.2.5</a> (runtime), <a class="xref" href="../general/enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>, <a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a>, <a class="xref" href="../general/highlight.md" title="Highlight-4.20">Highlight-4.20</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, and <a class="xref" href="seahorse.md" title="Seahorse-47.0.1">Seahorse-47.0.1</a>

#### Optional

<a class="xref" href="geocode-glib.md" title="geocode-glib-3.26.4">geocode-glib-3.26.4</a>, and <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://gitlab.gnome.org/Archive/clutter-gtk">clutter-gtk</a> (Contact Maps plugin), <a class="ulink" href="https://github.com/commonmark/cmark">cmark</a>, <a class="ulink" href="https://glade.gnome.org/">Glade</a>, <a class="ulink" href="https://gitlab.gnome.org/GNOME/libchamplain/">libchamplain</a> (Contact Maps plugin), <a class="ulink" href="https://www.five-ten-sg.com/libpst/">libpst</a>, <a class="ulink" href="https://launchpad.net/libunity/">libunity</a>, <a class="ulink" href="https://github.com/Yeraze/ytnef">libytnef</a>
</div>

<div class="installation" lang="en">
## Installation of Evolution {#installation-of-evolution}

Install <span class="application">Evolution</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D SYSCONF_INSTALL_DIR=/etc  \
      -D ENABLE_INSTALLED_TESTS=ON \
      -D ENABLE_PST_IMPORT=OFF     \
      -D ENABLE_YTNEF=OFF          \
      -D ENABLE_CONTACT_MAPS=OFF   \
      -D ENABLE_MARKDOWN=OFF       \
      -D ENABLE_WEATHER=ON         \
      -G Ninja .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D ENABLE_YTNEF=OFF`*: This switch is used to disable the yTNEF library usage because <span class="application">libytnef</span> is not part of BLFS.

*`-D ENABLE_PST_IMPORT=OFF`*: This switch is used to disable the pst-import plugin because <span class="application">libpst</span> is not part of BLFS.

*`-D ENABLE_CONTACT_MAPS=OFF`*: This switch disables building the Contact Maps plugin. Remove this switch if you have installed the necessary dependencies and wish to build the Contact Maps plugin.

*`-D ENABLE_MARKDOWN=OFF`*: This switch allows building without <a class="ulink" href="https://github.com/commonmark/cmark">cmark</a>. Remove this switch if you need markdown support and you have installed the necessary dependency.

*`-D ENABLE_WEATHER=ON`*: This switch allows building against <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>.

<code class="option">-D WITH_HELP=OFF</code>: This switch disables building the manual of this package. Use this switch if you have not installed <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>.

<code class="option">-D WITH_OPENLDAP=OFF</code>: Use this switch if you have not installed <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">evolution</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/evolution, /usr/lib/evolution, /usr/libexec/evolution, /usr/share/evolution, /usr/share/installed-tests/evolution, /usr/share/help/\*/evolution, and optionally /usr/share/gtk-doc/html/{evolution-mail-composer,evolution-mail-engine}, /usr/share/gtk-doc/html/{evolution-mail-formatter,evolution-shell}, and /usr/share/gtk-doc/html/evolution-util</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ------------------------------------------------------------------------------------
  <a id="evolution-prog"></a><span class="command"><span class="term"><strong>evolution</strong></span></span>   is an email, calendar and address book suite for the <span class="application">GNOME</span> Desktop
  ------------------------------------------------------- ------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](evince.md "Evince-48.4")

    Evince-48.4

-   [Next](file-roller.md "File-Roller-44.6")

    File-Roller-44.6

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
