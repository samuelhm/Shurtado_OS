<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](mousepad.md "mousepad-0.7.0")

    mousepad-0.7.0

-   [Next](vim.md "Vim-9.2.0567")

    Vim-9.2.0567

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Nano-9.0 {#nano-9.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Nano {#introduction-to-nano}

The <span class="application">Nano</span> package contains a small, simple text editor which aims to replace <span class="application">Pico</span>, the default editor in the <span class="application">Pine</span> package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.nano-editor.org/dist/v9/nano-9.0.tar.xz">https://www.nano-editor.org/dist/v9/nano-9.0.tar.xz</a>

-   Download MD5 sum: fe956d0e4807a96d9cf78849aaf04d54

-   Download size: 1.7 MB

-   Estimated disk space required: 30 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Nano {#installation-of-nano}

Install <span class="application">Nano</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=/usr/share/doc/nano-9.0 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 doc/{nano.html,sample.nanorc} /usr/share/doc/nano-9.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-utf8`*: This switch enables unicode support in <span class="application">Nano</span>.
</div>

<div class="configuration" lang="en">
## Configuring nano {#configuring-nano}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/nanorc</code> and <code class="filename">~/.nanorc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Example configuration (create as a system-wide <code class="filename">/etc/nanorc</code> or a personal <code class="filename">~/.nanorc</code> file)

```console
set autoindent
set constantshow
set fill 72
set historylog
set multibuffer
set nohelp
set positionlog
set quickblank
set regexp
```

Check the <code class="filename">sample.nanorc</code> file in the installed documentation directory. It includes color configurations and has some documentation included in the comments.

Syntax highlighting is provided for several file types, in <code class="filename">/usr/share/nano/</code> directory. E.g., for shell scripts, you can insert <code class="option">include /usr/share/nano/sh.nanorc</code> in the personal or global configuration file. If you wish highlighting for all supported files, use <code class="option">include /usr/share/nano/*.nanorc</code>. This include does not descend into the <code class="filename">extra</code> directory. Move required files one level up.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">nano and rnano (symlink)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/nano and /usr/share/doc/nano-9.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  <a id="nano-prog"></a><span class="command"><span class="term"><strong>nano</strong></span></span>     is a small, simple text editor which aims to replace <span class="application">Pico</span>, the default editor in the <span class="application">Pine</span> package
  <a id="rnano-prog"></a><span class="command"><span class="term"><strong>rnano</strong></span></span>   is a restricted mode for <span class="command"><strong>nano</strong></span>
  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mousepad.md "mousepad-0.7.0")

    mousepad-0.7.0

-   [Next](vim.md "Vim-9.2.0567")

    Vim-9.2.0567

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
