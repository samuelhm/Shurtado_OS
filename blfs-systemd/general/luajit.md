<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](lua.md "Lua-5.4.8")

    Lua-5.4.8

-   [Next](mercurial.md "Mercurial-7.2.2")

    Mercurial-7.2.2

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# luajit-20260213 {#luajit-20260213}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to luajit {#introduction-to-luajit}

The <span class="application">luajit</span> package contains a Just-In-Time compiler for Lua. It is often used as scripting middleware, and it is high performance while also having a low memory footprint.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/luajit/luajit-20260213.tar.xz">https://anduin.linuxfromscratch.org/BLFS/luajit/luajit-20260213.tar.xz</a>

-   Download MD5 sum: 6459b2696188b74edf950926cb3bacd1

-   Download size: 736 KB

-   Estimated disk space required: 9.1 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of luajit {#installation-of-luajit}

Install <span class="application">luajit</span> by running the following commands:

```bash
make PREFIX=/usr amalg
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr install &&
rm -v /usr/lib/libluajit-5.1.a
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`amalg`*: This ensures an amalgamated build, i.e. the LuaJIT core is compiled as one huge C file, allowing GCC to generate faster and shorter code.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">luajit (symlink to luajit-2.1.ROLLING) and luajit-2.1.ROLLING</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libluajit-5.1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/luajit-2.1 and /usr/share/luajit-2.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------
  <a id="luajit-prog"></a><span class="command"><span class="term"><strong>luajit</strong></span></span>            provides a Just-In-Time compiler for Lua
  <a id="libluajit-5.1"></a><span class="term"><code class="filename">libluajit-5.1.so</code></span>   contains an API for the Just-In-Time compiler for Lua
  ---------------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lua.md "Lua-5.4.8")

    Lua-5.4.8

-   [Next](mercurial.md "Mercurial-7.2.2")

    Mercurial-7.2.2

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
