<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](lsof.md "lsof-4.99.6")

    lsof-4.99.6

-   [Next](screen.md "Screen-5.0.1")

    Screen-5.0.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pinentry-1.3.2 {#pinentry-1.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to PIN-Entry {#introduction-to-pin-entry}

The <span class="application">PIN-Entry</span> package contains a collection of simple PIN or pass-phrase entry dialogs which utilize the Assuan protocol as described by the <a class="ulink" href="https://www.gnupg.org/aegypten/">Ägypten project</a>. <span class="application">PIN-Entry</span> programs are usually invoked by the <span class="command"><strong>gpg-agent</strong></span> daemon, but can be run from the command line as well. There are programs for various text-based and GUI environments, including interfaces designed for <span class="application">Ncurses</span> (text-based), and for the common <span class="application">GTK</span> and <span class="application">Qt</span> toolkits.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.3.2.tar.bz2">https://www.gnupg.org/ftp/gcrypt/pinentry/pinentry-1.3.2.tar.bz2</a>

-   Download MD5 sum: 5247373d2e9ac73b1ea662bd270e58a4

-   Download size: 600 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.2 SBU
</div>

### PIN-Entry Dependencies

#### Required

<a class="xref" href="libassuan.md" title="libassuan-3.0.2">libassuan-3.0.2</a> and <a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>

#### Optional

<a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a>, <a class="xref" href="../x/fltk.md" title="FLTK-1.4.5">FLTK-1.4.5</a>, <a class="xref" href="../gnome/gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a> (or <a class="xref" href="../gnome/gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a>), <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="ulink" href="https://www.enlightenment.org/about-efl">efl</a>
</div>

<div class="installation" lang="en">
## Installation of PIN-Entry {#installation-of-pin-entry}

First, make <span class="command"><strong>configure</strong></span> consistent with fltk-1.4.1:

```bash
sed -i "/FLTK 1/s/3/4/" configure   &&
sed -i '14456 s/1.3/1.4/' configure
```

Install <span class="application">PIN-Entry</span> by running the following commands:

```bash
./configure --prefix=/usr          \
            --enable-pinentry-tty  &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-inside-emacs=yes/no</code>: Default is no.

<code class="option">--enable-pinentry-qt=yes/no</code>: Default is yes.

<code class="option">--enable-pinentry-gnome3=yes/no</code>: Default is yes. This option uses <a class="xref" href="../gnome/gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a> (or <a class="xref" href="../gnome/gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a> if the former is not installed) for the pinentry dialog.

*`--enable-pinentry-tty`*: Default is 'maybe'.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pinentry (symlink), pinentry-curses, pinentry-emacs, pinentry-fltk, pinentry-gnome3, pinentry-qt, and pinentry-tty</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------------------
  <a id="pinentry-prog"></a><span class="command"><span class="term"><strong>pinentry</strong></span></span>            is a symbolic link to the default <span class="application">PIN-Entry</span> program
  <a id="pinentry-curses"></a><span class="command"><span class="term"><strong>pinentry-curses</strong></span></span>   is an <span class="application">Ncurses</span> text-based <span class="application">PIN-Entry</span> helper program
  <a id="pinentry-emacs"></a><span class="command"><span class="term"><strong>pinentry-emacs</strong></span></span>     is an <span class="application">Emacs</span> version of the <span class="application">PIN-Entry</span> helper program
  <a id="pinentry-fltk"></a><span class="command"><span class="term"><strong>pinentry-fltk</strong></span></span>       is a <span class="application">FLTK</span> <span class="application">PIN-Entry</span> helper program
  <a id="pinentry-gnome3"></a><span class="command"><span class="term"><strong>pinentry-gnome3</strong></span></span>   is a <span class="application">GNOME-3</span> <span class="application">PIN-Entry</span> helper program
  <a id="pinentry-qt"></a><span class="command"><span class="term"><strong>pinentry-qt</strong></span></span>           is a <span class="application">Qt4 or 5</span> <span class="application">PIN-Entry</span> helper program
  <a id="pinentry-tty"></a><span class="command"><span class="term"><strong>pinentry-tty</strong></span></span>         is a <span class="application">tty</span> <span class="application">PIN-Entry</span> helper program
  -------------------------------------------------------------- -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lsof.md "lsof-4.99.6")

    lsof-4.99.6

-   [Next](screen.md "Screen-5.0.1")

    Screen-5.0.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
