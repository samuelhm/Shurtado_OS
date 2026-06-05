<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](compface.md "Compface-1.5.2")

    Compface-1.5.2

-   [Next](dos2unix.md "dos2unix-7.5.6")

    dos2unix-7.5.6

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# desktop-file-utils-0.28 {#desktop-file-utils-0.28}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Desktop File Utils {#introduction-to-desktop-file-utils}

The <span class="application">Desktop File Utils</span> package contains command line utilities for working with <a class="ulink" href="https://standards.freedesktop.org/desktop-entry-spec/latest/">Desktop entries</a>. These utilities are used by Desktop Environments and other applications to manipulate the MIME-types application databases and help adhere to the Desktop Entry Specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.28.tar.xz">https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.28.tar.xz</a>

-   Download MD5 sum: dec5d7265c802db1fde3980356931b7b

-   Download size: 80 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Desktop File Utils Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>

#### Optional

<a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a>
</div>

<div class="installation" lang="en">
## Installation of Desktop File Utils {#installation-of-desktop-file-utils}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading from a previous version of desktop-file-utils that used the Autotools method of installing and configuring the package, you must remove the desktop-file-edit symlink by using the following commands.
</div>

```bash
rm -fv /usr/bin/desktop-file-edit
```

Install <span class="application">Desktop File Utils</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="configuration" lang="en">
## Configuring Desktop File Utils {#configuring-desktop-file-utils}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The <a class="ulink" href="https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.md">XDG Base Directory</a> specification defines the standard locations for applications to place data and configuration files. These files can be used, for instance, to define the menu structure and menu items in a desktop environment.

The default location for configuration files to be installed is <code class="filename">/etc/xdg</code>, and the default locations for data files are <code class="filename">/usr/local/share</code> and <code class="filename">/usr/share</code>. These locations can be extended with the environment variables <code class="envar">XDG_CONFIG_DIRS</code> and <code class="envar">XDG_DATA_DIRS</code>, respectively. The <span class="application">GNOME</span>, <span class="application">KDE</span> and <span class="application">XFCE</span> environments respect these settings.

When a package installs a <code class="filename">.desktop</code> file to a location in one of the base data directories, the database that maps MIME-types to available applications can be updated. For instance, the cache file at <code class="filename">/usr/share/applications/mimeinfo.cache</code> can be rebuilt by executing the following command as the <code class="systemitem">root</code> user:

```bash
install -vdm755 /usr/share/applications &&
update-desktop-database /usr/share/applications
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">desktop-file-edit, desktop-file-install, desktop-file-validate and update-desktop-database</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------
  <a id="desktop-file-edit"></a><span class="command"><span class="term"><strong>desktop-file-edit</strong></span></span>               is used to modify an existing desktop file entry
  <a id="desktop-file-install"></a><span class="command"><span class="term"><strong>desktop-file-install</strong></span></span>         is used to install a new desktop file entry. It is also used to rebuild or modify the MIME-types application database
  <a id="desktop-file-validate"></a><span class="command"><span class="term"><strong>desktop-file-validate</strong></span></span>       is used to verify the integrity of a desktop file
  <a id="update-desktop-database"></a><span class="command"><span class="term"><strong>update-desktop-database</strong></span></span>   is used to update the MIME-types application database
  ------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](compface.md "Compface-1.5.2")

    Compface-1.5.2

-   [Next](dos2unix.md "dos2unix-7.5.6")

    dos2unix-7.5.6

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
