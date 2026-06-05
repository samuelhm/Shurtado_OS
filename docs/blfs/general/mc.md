<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](logrotate.md "Logrotate-3.22.0")

    Logrotate-3.22.0

-   [Next](ModemManager.md "ModemManager-1.24.2")

    ModemManager-1.24.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# MC-4.8.33 {#mc-4.8.33}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to MC {#introduction-to-mc}

<span class="application">MC</span> (Midnight Commander) is a text-mode full-screen file manager and visual shell. It provides a clear, user-friendly, and somewhat protected interface to a Unix system while making many frequent file operations more efficient and preserving the full power of the command prompt.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://ftp.midnight-commander.org/mc-4.8.33.tar.xz">http://ftp.midnight-commander.org/mc-4.8.33.tar.xz</a>

-   Download MD5 sum: b3596c1f092b9822a6cd9c9a1aef8dde

-   Download size: 2.3 MB

-   Estimated disk space required: 71 MB (add 97 MB for tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; add 0.1 SBU for tests)
</div>

### MC Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>

#### Recommended

<a class="xref" href="slang.md" title="slang-2.3.3">slang-2.3.3</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="gpm.md" title="GPM-1.20.7">GPM-1.20.7</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, and <a class="xref" href="zip.md" title="Zip-3.0">Zip-3.0</a>
</div>

<div class="installation" lang="en">
## Installation of MC {#installation-of-mc}

Install <span class="application">MC</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-charset  &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc`*: This switch places the global configuration directory in <code class="filename">/etc</code>.

*`--enable-charset`*: This switch adds support to <span class="command"><strong>mcedit</strong></span> for editing files in encodings different from the one implied by the current locale.

*`--with-screen=ncurses`*: Use this if you don't have <a class="xref" href="slang.md" title="slang-2.3.3">slang-2.3.3</a> installed.

<code class="option">--with-search-engine=pcre2</code>: Use this switch if you would prefer to use pcre from LFS instead of GLib for the built-in search engine.
</div>

<div class="configuration" lang="en">
## Configuring MC {#configuring-mc}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.config/mc/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The <code class="filename">~/.config/mc</code> directory and its contents are created when you start <span class="command"><strong>mc</strong></span> for the first time. Then you can edit the main <code class="filename">~/.config/mc/ini</code> configuration file manually or through the <span class="application">MC</span> shell. Consult the <a class="ulink" href="https://man.archlinux.org/man/mc.1">mc(1)</a> man page for details.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mc and the symlinks mcdiff, mcedit and mcview</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/mc and /usr/{libexec,share}/mc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------- ---------------------------------
  <a id="mc-prog"></a><span class="command"><span class="term"><strong>mc</strong></span></span>      is a visual shell
  <a id="mcdiff"></a><span class="command"><span class="term"><strong>mcdiff</strong></span></span>   is an internal visual diff tool
  <a id="mcedit"></a><span class="command"><span class="term"><strong>mcedit</strong></span></span>   is an internal file editor
  <a id="mcview"></a><span class="command"><span class="term"><strong>mcview</strong></span></span>   is an internal file viewer
  -------------------------------------------- ---------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](logrotate.md "Logrotate-3.22.0")

    Logrotate-3.22.0

-   [Next](ModemManager.md "ModemManager-1.24.2")

    ModemManager-1.24.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
