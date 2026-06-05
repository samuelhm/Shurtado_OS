<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](scons.md "SCons-4.10.1")

    SCons-4.10.1

-   [Next](subversion.md "Subversion-1.14.5")

    Subversion-1.14.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# slang-2.3.3 {#slang-2.3.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to slang {#introduction-to-slang}

<span class="application">S-Lang</span> (slang) is an interpreted language that may be embedded into an application to make the application extensible. It provides facilities required by interactive applications such as display/screen management, keyboard input and keymaps.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.jedsoft.org/releases/slang/slang-2.3.3.tar.bz2">https://www.jedsoft.org/releases/slang/slang-2.3.3.tar.bz2</a>

-   Download MD5 sum: 69015c8300088373eb65ffcc6ed4db8c

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB (add 15 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests)
</div>

### Slang Dependencies

#### Optional

<a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> and <a class="ulink" href="https://github.com/kkos/oniguruma">Oniguruma</a>
</div>

<div class="installation" lang="en">
## Installation of Slang {#installation-of-slang}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
</div>

Install <span class="application">slang</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --with-readline=gnu &&
make -j1 RPATH=
```

To test the results, issue: <span class="command"><strong>LC_ALL=C make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install_doc_dir=/usr/share/doc/slang-2.3.3   \
     SLSH_DOC_DIR=/usr/share/doc/slang-2.3.3/slsh \
     RPATH= install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-readline=gnu`*: This parameter sets GNU <span class="application">Readline</span> to be used by the parser interface instead of the <span class="application">slang</span> internal version.

*`RPATH=`*: This overridden <span class="command"><strong>make</strong></span> variable prevents hard coding library search paths (rpath) into the binary executable files and shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`install_doc_dir=/usr/share/doc/slang-2.3.3 SLSH_DOC_DIR=/usr/share/doc/slang-2.3.3/slsh`*: These overridden <span class="command"><strong>make</strong></span> variables ensure installing this package with a versioned documentation installation directory.
</div>

<div class="configuration" lang="en">
## Configuring slang {#configuring-slang}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.slshrc</code> and <code class="filename">/etc/slsh.rc</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">slsh</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libslang.so and numerous support modules</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/slang, /usr/share/doc/slang-2.3.3 and /usr/share/slsh</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="slsh"></a><span class="command"><span class="term"><strong>slsh</strong></span></span>   is a simple program for interpreting <span class="application">slang</span> scripts. It supports dynamic loading of <span class="application">slang</span> modules and includes a <span class="application">Readline</span> interface for interactive use
  ---------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](scons.md "SCons-4.10.1")

    SCons-4.10.1

-   [Next](subversion.md "Subversion-1.14.5")

    Subversion-1.14.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
