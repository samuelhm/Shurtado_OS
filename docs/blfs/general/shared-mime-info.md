<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](screen.md "Screen-5.0.1")

    Screen-5.0.1

-   [Next](sharutils.md "Sharutils-4.15.2")

    Sharutils-4.15.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# shared-mime-info-2.4 {#shared-mime-info-2.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Shared Mime Info {#introduction-to-shared-mime-info}

The <span class="application">Shared Mime Info</span> package contains a MIME database. This allows central updates of MIME information for all supporting applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.4/shared-mime-info-2.4.tar.gz">https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/2.4/shared-mime-info-2.4.tar.gz</a>

-   Download MD5 sum: aac56db912b7b12a04fb0018e28f2f36

-   Download size: 7.5 MB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional download, required to run the test suite: <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/xdgmime/xdgmime.tar.xz">https://anduin.linuxfromscratch.org/BLFS/xdgmime/xdgmime.tar.xz</a>

    xdgmime md5sum: 7dfb4446705d345d3acd672024049e86
</div>

### Shared Mime Info Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>
</div>

<div class="installation" lang="en">
## Installation of Shared Mime Info {#installation-of-shared-mime-info}

Install <span class="application">Shared Mime Info</span> by running the following commands:

If you wish to run the test suite, you must first extract the <code class="filename">xdgmime</code> tarball into the current directory, and compile it so that <span class="command"><strong>meson</strong></span> can find it:

```bash
tar -xf ../xdgmime.tar.xz &&
make -C xdgmime
```

Now build the package:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D update-mimedb=true .. &&
ninja
```

If you have followed the instructions above to build <span class="application">xdgmime</span>, to test the result issue <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D update-mimedb=true`*: This parameter tells the build system to run <span class="command"><strong>update-mime-database</strong></span> during installation. Otherwise, this must be done manually in order to be able to use the MIME database.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">update-mime-database</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/mime</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------
  <a id="update-mime-database"></a><span class="command"><span class="term"><strong>update-mime-database</strong></span></span>   assists in adding MIME data to the database
  ------------------------------------------------------------------------ ---------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](screen.md "Screen-5.0.1")

    Screen-5.0.1

-   [Next](sharutils.md "Sharutils-4.15.2")

    Sharutils-4.15.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
