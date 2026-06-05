<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](tex-path.md "Setting the PATH for TeX Live")

    Setting the PATH for TeX Live

-   [Next](texlive.md "texlive-20250308-source")

    texlive-20250308-source

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# install-tl-unx {#install-tl-unx}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to TeX Live and its installer {#introduction-to-tex-live-and-its-installer}

The <span class="application">TeX Live</span> package is a comprehensive TeX document production system. It includes TeX, LaTeX2e, LuaLaTeX, Metafont, MetaPost, BibTeX and many other programs; an extensive collection of macros, fonts and documentation; and support for typesetting in many different scripts from around the world.

This page is for people who wish to use the binary installer to provide the programs, the scripts, and a lot of supporting files and documentation. The installer is updated frequently, so any published md5sum will soon be out of date. Newer versions of the installer are expected to work with these instructions, for so long as they install to a <code class="filename">2025/</code> directory.

There are two reasons why you may wish to install the binaries in BLFS: either you need a smaller install (e.g. at a minimum plain TeX without LaTeX, ConTeXt, etc), or you wish to use <span class="command"><strong>tlmgr</strong></span> to get updates whilst this version is supported (typically, until March of the year after it was released). For the latter, you might prefer to install in your <code class="filename">/home</code> directory as an unprivileged user, and to then make corresponding changes to the PATH in your <code class="filename">~/.bashrc</code> or equivalent.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you wish to use ConTeXt with <span class="command"><strong>luametatex</strong></span> (most of the old MKII and MKIV code was removed from TeX Live 2023 by the ConTeXt developer), using the binary is probably the easiest option. The source no-longer ships with TeX Live and is poorly adapted to building with systems except those running Mac and Windows. See comments 1 to 5 of <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/ticket/17823">#17823</a>.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz">https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz</a>

-   Download MD5 sum: Varies frequently

-   Download size: 5.5 MB

-   Estimated disk space required: 90 MB for plain TeX, typically 323 MB for latex and later engines, 9.0 GB if everything is included

-   Estimated build time: varies, depending on network speed and traffic
</div>

#### Recommended

<a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (to validate both the initial downloads, and also any updates you might later make using <span class="command"><strong>tlmgr</strong></span>) and <a class="xref" href="../general/perl-modules.md#perl-libwww-perl" title="LWP (libwww-perl-6.83)">libwww-perl-6.83</a> (to use a single connection to the server, which will reduce its load and speed things up)

#### Recommended (at runtime)

The binaries are mostly linked to included static libraries or general (LFS) system libraries, but a few of the programs and several scripts will fail if the following packages are not present:

<a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> is dynamically loaded by the external application <a class="ulink" href="https://dvisvgm.de/">dvisvgm</a>, which is used by <span class="application">asy</span> when that creates SVG files.

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a> and <a class="xref" href="../x/libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a> are needed for inimf, mf, pdfclose, pdfopen and xdvi-xaw. But if you are using asy, or using a <span class="application">TeX</span> engine to create a PDF file, you will need <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> (for PDF files, this is to support a PDF viewer of your choice, for example <a class="xref" href="epdfview.md" title="ePDFView-gtk3-20200814">epdfview-gtk3-20200814</a>).

The binary version of <span class="application">asy</span> needs <a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a>.

The binary version of <span class="application">xindy</span> is linked to <code class="filename">libcrypt.so.1</code> from old versions of <span class="application">glibc</span>. To use the application, follow the Note about binary-only applications in <span class="application">libxcrypt</span> in <a class="ulink" href="../../../../lfs/view/systemd/chapter08/libxcrypt.md">LFS Chapter 8</a> to install the ABI version 1 crypt library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

As always with contributed binary software, it is possible that the required dependencies may change when the installer is updated. In particular, these dependencies have only been checked on x86_64.
</div>

<a class="ulink" href="https://www.python.org/downloads/release/python-2718/">Python2</a> is used by the unmaintained ebong CTAN module (intended for writing Bengali in Rapid Roman Format). <code class="filename">/usr/bin/python</code> is also in the shebang line for the latex-papersize and lilyglyphs scripts, and documentation at CTAN says both modules have been updated to work with python3. In pythontex there are scripts to invoke python3 or python2 according to the system's version of <span class="command"><strong>python</strong></span>. <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a> is used by two scripts, one is for pTex (Japanese vertical writing) and the other is match_parens which might be generally useful. The perl module <a class="ulink" href="https://cpan.metacpan.org/authors/id/S/SR/SREZIC/Tk-804.036.tar.gz">Tk</a>, which needs to be run from an X11 session to run the tests and requires <a class="xref" href="../general/tk.md" title="Tk-8.6.18">Tk-8.6.18</a>, is used by one of the scripts for ptex and is needed for texdoctk (a GUI interface for finding documentation files and opening them with the appropriate viewer). <span class="command"><strong>ps2pdf</strong></span>, from <a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, is used by some utilities and scripts.
</div>

<div class="installation" lang="en">
## Binary Installation of TeX Live {#binary-installation-of-tex-live}

The <span class="application">TeX Live</span> set of programs with its supporting documents, fonts, and utilities is very large. The upstream maintainers recommend placing all files in a single directory structure. The BLFS team recommends <code class="filename">/opt/texlive</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have chosen to install the binary as a normal user, the directory for the prefix needs to be writable by that user. The <code class="systemitem">root</code> user can chown <code class="filename">/opt/texlive/2025</code> to that user before the user starts the install. If any later change in that directory is made by the <code class="systemitem">root</code> user, <span class="emphasis"><em>that will change the ownership</em></span>, which breaks usage by normal users.
</div>

As with any other package, unpack the installer and change into its directory, <code class="filename">install-tl-<CCYYMMDD></code>. This directory name changes when the installer is updated, so replace \<CCYYMMDD\> by the correct directory name.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The distribution binaries installed below may use static linking for general linux system libraries. Additional libraries or interpreters as specified in the dependencies section do not need to be present during the install, but the programs that need them will not run until their specific dependencies have been installed.

With all contributed binary software, there may be a mismatch between the builder's toolchain and your hardware. In most of TeX this will probably not matter, but in uncommon corner cases you might hit problems. For example, if your x86_64 processor does not support 3dnowext or 3dnow, the 2014-06-28 binary failed in conTeXt when running LuaTeX, although lualatex worked, as did the i686 binaries on the same machine. In such cases, the easiest solution is to install texlive from source. Similarly, the x86_64 binary version of <span class="command"><strong>asy</strong></span> runs very slowly when creating 3-D diagrams.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
TEXLIVE_INSTALL_PREFIX=/opt/texlive ./install-tl
```

This command is interactive and allows selection or modification of platform, packages, directories, and other options. The time to complete the download will depend on your internet connection speed and the number of packages selected.

For a minimal install that will build documentation that is referenced in BLFS, the only installation collections needed are '\[a\] Essential programs and files' and '\[D\] LaTeX fundamental packages'. This will download about 132 files and use about 323 MB. Users can select other collections as needed but a full installation will download several thousand files and use over 8GB.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

After installation, the PATH environment variable will need to be updated, and other variables will need to be set. Please refer to <a class="xref" href="tex-path.md" title="Setting the PATH for TeX Live">Setting the PATH for TeX Live</a> to set these environment variables.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">./install-tl --location http://mirror.aut.ac.nz/CTAN/systems/texlive/tlnet/</code>: use a variation of this if you wish to use a different mirror, for example, because you are in New Zealand but the installer chooses to use an Australian mirror. The list of mirrors is at <a class="ulink" href="https://ctan.org/mirrors/">https://ctan.org/mirrors/</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">Over 300 binaries and symlinks to scripts</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/opt/texlive</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="tl-installer-programs"></a><span class="command"><span class="term"><strong>TeX programs</strong></span></span>   The programs included in <span class="application">TeX</span> are too numerous to individually list. Please refer to the individual program HTML and PDF pages in the various html, man, or pdf files within the subdirectories of <code class="filename">2025/texmf-dist/</code>. Using <span class="command"><strong>texdoc pdflatex</strong></span> ( replace <span class="emphasis"><em>pdflatex</em></span> with the command name ) may also be useful
  ----------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tex-path.md "Setting the PATH for TeX Live")

    Setting the PATH for TeX Live

-   [Next](texlive.md "texlive-20250308-source")

    texlive-20250308-source

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
