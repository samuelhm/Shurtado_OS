<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](emacs.md "Emacs-30.2")

    Emacs-30.2

-   [Next](kate.md "kate-26.04.1")

    kate-26.04.1

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# JOE-4.6 {#joe-4.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to JOE {#introduction-to-joe}

<span class="application">JOE</span> (Joe's own editor) is a small text editor capable of emulating WordStar, <span class="application">Pico</span>, and <span class="application">Emacs</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/joe-editor/joe-4.6.tar.gz">https://downloads.sourceforge.net/joe-editor/joe-4.6.tar.gz</a>

-   Download MD5 sum: 9017484e6116830d846678b625ea5c43

-   Download size: 1.8 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of JOE {#installation-of-joe}

Install <span class="application">JOE</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/joe-4.6 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -vm 755 joe/util/{stringify,termidx,uniproc} /usr/bin
```
</div>

<div class="configuration" lang="en">
## Configuring JOE {#configuring-joe}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/joe/jmacsrc</code>, <code class="filename">/etc/joe/joerc</code>, <code class="filename">/etc/joe/jpicorc</code>, <code class="filename">/etc/joe/jstarrc</code>, <code class="filename">/etc/joe/rjoerc</code>, and <code class="filename">~/.joerc</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">jmacs, joe, jpico, jstar, rjoe, stringify, termidx, and uniproc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/joe, /usr/share/joe, and /usr/share/doc/joe-4.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="jmacs"></a><span class="command"><span class="term"><strong>jmacs</strong></span></span>           is a symbolic link to <span class="command"><strong>joe</strong></span> used to launch <span class="application">Emacs</span> emulation mode
  <a id="joe-prog"></a><span class="command"><span class="term"><strong>joe</strong></span></span>          is a small text editor capable of emulating WordStar, <span class="application">Pico</span>, and <span class="application">Emacs</span>
  <a id="jpico"></a><span class="command"><span class="term"><strong>jpico</strong></span></span>           is a symbolic link to <span class="command"><strong>joe</strong></span> used to launch <span class="application">Pico</span> emulation mode
  <a id="jstar"></a><span class="command"><span class="term"><strong>jstar</strong></span></span>           is a symbolic link to <span class="command"><strong>joe</strong></span> used to launch WordStar emulation mode
  <a id="rjoe"></a><span class="command"><span class="term"><strong>rjoe</strong></span></span>             is a symbolic link to <span class="command"><strong>joe</strong></span> that restricts <span class="application">JOE</span> to editing only files which are specified on the command-line
  <a id="stringify"></a><span class="command"><span class="term"><strong>stringify</strong></span></span>   is a program used by <span class="command"><strong>joe</strong></span> to convert rc and .jsf files into a C file (see /usr/share/doc/joe-4.6/util/README)
  <a id="termidx"></a><span class="command"><span class="term"><strong>termidx</strong></span></span>       is a program used by <span class="command"><strong>joe</strong></span> to generate the termcap index file (see /usr/share/doc/joe-4.6/util/README)
  <a id="uniproc"></a><span class="command"><span class="term"><strong>uniproc</strong></span></span>       is a program used by <span class="command"><strong>joe</strong></span> to generate joe's unicode database file unicat.c from Blocks.txt CaseFolding.txt EastAsianWidth.txt and UnicodeData.txt (find them at /usr/share/doc/joe-4.6/util; see usr/share/doc/joe-4.6/util/README)
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](emacs.md "Emacs-30.2")

    Emacs-30.2

-   [Next](kate.md "kate-26.04.1")

    kate-26.04.1

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
