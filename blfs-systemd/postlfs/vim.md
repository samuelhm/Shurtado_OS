<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](nano.md "Nano-9.0")

    Nano-9.0

-   [Next](shells.md "Shells")

    Shells

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Vim-9.2.0567 {#vim-9.2.0567}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Vim {#introduction-to-vim}

The <span class="application">Vim</span> package, which is an abbreviation for VI IMproved, contains a <span class="command"><strong>vi</strong></span> clone with extra features as compared to the original <span class="command"><strong>vi</strong></span>.

The default LFS instructions install <span class="application">vim</span> as a part of the base system. If you would prefer to link <span class="application">vim</span> against <span class="application">X</span>, you should recompile <span class="application">vim</span> to enable GUI mode. There is no need for special instructions since <span class="application">X</span> support is automatically detected.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The version of vim changes daily. To get the latest version, go to <a class="ulink" href="https://github.com/vim/vim/releases">https://github.com/vim/vim/releases</a>.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/vim/vim/archive/v9.2.0567/vim-9.2.0567.tar.gz">https://github.com/vim/vim/archive/v9.2.0567/vim-9.2.0567.tar.gz</a>

-   Download MD5 sum: 21f8aec8ca0422156ac7de1a92a49901

-   Download size: 19 MB

-   Estimated disk space required: 156 MB (add 82 MB for tests)

-   Estimated build time: 0.3 SBU (with parallelism=4; add 5.6 SBU for tests)
</div>

### Vim Dependencies

#### Recommended

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> (or <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, required by some tests), <a class="xref" href="../general/gpm.md" title="GPM-1.20.7">GPM-1.20.7</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a>, and <a class="ulink" href="https://libsodium.gitbook.io/doc/">libsodium</a>
</div>

<div class="installation" lang="en">
## Installation of Vim {#installation-of-vim}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you recompile <span class="application">Vim</span> to link against <span class="application">X</span> and your <span class="application">X</span> libraries are not on the root partition, you will no longer have vim for use in emergencies. You may choose to install an additional editor, not link <span class="application">Vim</span> against <span class="application">X</span>, or move the current <span class="command"><strong>vim</strong></span> executable to the <code class="filename">/bin</code> directory under a different name such as <code class="filename">vi</code>.
</div>

Install <span class="application">Vim</span> by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you intend to run the tests and have not installed Xorg in /usr, append LDFLAGS='-L\$XORG_PREFIX/lib' to the configure line below.
</div>

```bash
echo '#define SYS_VIMRC_FILE  "/etc/vimrc"' >>  src/feature.h &&
echo '#define SYS_GVIMRC_FILE "/etc/gvimrc"' >> src/feature.h &&

./configure --prefix=/usr        \
            --with-features=huge \
            --enable-gui=gtk3    \
            --with-tlib=ncursesw &&
make
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the global configuration file <code class="filename">/etc/vimrc</code> references the <code class="envar">VIMRUNTIME</code> environment variable, some tests may complain about being unable to find the corresponding directory and wait for user input. If this is the case, this file should be saved and removed before running the tests. Or if <a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> is installed, it's also possible to create a lightweight container environment where this file is hidden and run the tests in the container.
</div>

To test the results, issue: <span class="command"><strong>make -j1 test</strong></span>. Test failures, if any, will produce the file <code class="filename">test.log</code> in <code class="filename">src/testdir</code>. The remaining tests will still be executed. Two tests, Test_client_server_stopinsert() and Test_popup_setbuf(), are known to fail on some systems. Some tests labelled as <span class="quote">“<span class="quote">flaky</span>”</span> may fail occasionally and can be ignored. Several tests are known to fail if the output is redirected to a file, and also if they are run in a 'screen' session.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If running the tests with <a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> and <code class="filename">/etc/vimrc</code> hidden, use <span class="command"><strong>bwrap --dev-bind / / --dev-bind /dev/null /etc/vimrc make -j1 test</strong></span>.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Some color tests expect to be executed under the <span class="command"><strong>xterm</strong></span> terminal emulator.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

By default, Vim's documentation is installed in <code class="filename">/usr/share/vim</code>. The following symlink allows the documentation to be accessed via <code class="filename">/usr/share/doc/vim-9.2.0567</code>, making it consistent with the location of documentation for other packages:

```bash
ln -snfv ../vim/vim92/doc /usr/share/doc/vim-9.2.0567
```

<span class="bold"><strong>If</strong></span> you wish to update the runtime files, issue the following command (requires <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a>) to download it:

```bash
rsync -avzcP --exclude="/dos/" --exclude="/spell/" \
    ftp.nluug.nl::Vim/runtime/ ./runtime/
```

And then install the updated runtime files and regenerate the <code class="filename">tags</code> file, as the <code class="systemitem">root</code> user issue:

```bash
make -C src installruntime &&
vim -c ":helptags /usr/share/doc/vim-9.2.0567" -c ":q"
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-features=huge`*: This switch enables all the additional features available in <span class="application">Vim</span>, including support for multibyte characters.

*`--with-tlib=ncursesw`*: This switch forces Vim to link against the <code class="filename">libncursesw</code> library.

<code class="option">--enable-gui=no</code>: This will prevent compilation of the GUI. <span class="application">Vim</span> will still link against <span class="application">X</span>, so that some features such as the client-server model or the x11-selection (clipboard) are still available.

<code class="option">--without-x</code>: If you prefer not to link <span class="application">Vim</span> against <span class="application">X</span>, use this switch.

<code class="option">--enable-luainterp</code>, <code class="option">--enable-perlinterp</code>, <code class="option">--enable-python3interp=dynamic</code>, <code class="option">--enable-tclinterp --with-tclsh=tclsh</code>, <code class="option">--enable-rubyinterp</code>: These options include the Lua, Perl, Python3, Tcl, or Ruby interpreters that allow using other application code in <span class="application">vim</span> scripts. All the <code class="option">--enable-*</code> options can accept <code class="option">=dynamic</code> to dynamically load the interpreter when needed. This is required for <span class="application">Python 3</span> to prevent segmentation faults. For <span class="application">tcl</span>, it is necessary to indicate the name of the <span class="command"><strong>tclsh</strong></span> executable, since <span class="command"><strong>configure</strong></span> only searches versioned names with old versions.
</div>

<div class="configuration" lang="en">
## Configuring Vim {#configuring-vim}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/vimrc</code> and <code class="filename">~/.vimrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">Vim</span> has an integrated spell checker which you can enable by issuing the following in a vim window:

```console
:setlocal spell spelllang=ru
```

This setting will enable spell checking for the Russian language for the current session.

By default, <span class="application">Vim</span> only installs spell files for the English language. If a spell file is not available for a language, then <span class="application">Vim</span> will call the <code class="filename">$VIMRUNTIME/plugin/spellfile.vim</code> plugin and will try to obtain the \*.spl and optionally \*.sug from the vim ftp server, by using the <code class="filename">$VIMRUNTIME/plugin/netrwPlugin.vim</code> plugin.

Alternatively you can manually download the \*.spl and \*.sug files from: <a class="ulink" href="https://github.com/vim/vim/tree/master/runtime/spell">https://github.com/vim/vim/tree/master/runtime/spell</a> and save them to <code class="filename">~/.vim/spell</code> or in <code class="filename">/usr/share/vim/vim92/spell/</code>.

To find out what's new in <span class="application">Vim-9.2.0567</span> issue the following command:

```console
:help version-9.2.0567
```

For additional information on setting up <span class="application">Vim</span> configuration files, see <a class="xref" href="vimrc.md" title="The /etc/vimrc and ~/.vimrc Files">The vimrc Files</a> and <a class="ulink" href="https://vim.fandom.com/wiki/Example_vimrc">https://vim.fandom.com/wiki/Example_vimrc</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

A list of the reinstalled files, along with their short descriptions can be found in the <a class="ulink" href="../../../../lfs/view/systemd/chapter08/vim.md#contents-vim">LFS Vim Installation Instructions</a>.

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gview, gvim, gvimdiff, gvimtutor, rgview, and rgvim</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/vim</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------------------------
  <a id="gview"></a><span class="command"><span class="term"><strong>gview</strong></span></span>           starts <span class="command"><strong>gvim</strong></span> in read-only mode
  <a id="gvim"></a><span class="command"><span class="term"><strong>gvim</strong></span></span>             is the editor that runs under <span class="application">X</span> and includes a GUI
  <a id="gvimdiff"></a><span class="command"><span class="term"><strong>gvimdiff</strong></span></span>     edits two or three versions of a file with <span class="command"><strong>gvim</strong></span> and shows the differences
  <a id="gvimtutor"></a><span class="command"><span class="term"><strong>gvimtutor</strong></span></span>   teaches the basic keys and commands of <span class="command"><strong>gvim</strong></span>
  <a id="rgview"></a><span class="command"><span class="term"><strong>rgview</strong></span></span>         is a restricted version of <span class="command"><strong>gview</strong></span>
  <a id="rgvim"></a><span class="command"><span class="term"><strong>rgvim</strong></span></span>           is a restricted version of <span class="command"><strong>gvim</strong></span>
  -------------------------------------------------- -------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nano.md "Nano-9.0")

    Nano-9.0

-   [Next](shells.md "Shells")

    Shells

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
