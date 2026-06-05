::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](tex-path.md "Setting the PATH for TeX Live"){accesskey="p"}

    Setting the PATH for TeX Live

-   [Next](texlive.md "texlive-20250308-source"){accesskey="n"}

    texlive-20250308-source

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tl-installer}install-tl-unx {#install-tl-unx .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to TeX Live and its installer {#introduction-to-tex-live-and-its-installer .sect2}

The [TeX Live]{.application} package is a comprehensive TeX document production system. It includes TeX, LaTeX2e, LuaLaTeX, Metafont, MetaPost, BibTeX and many other programs; an extensive collection of macros, fonts and documentation; and support for typesetting in many different scripts from around the world.

This page is for people who wish to use the binary installer to provide the programs, the scripts, and a lot of supporting files and documentation. The installer is updated frequently, so any published md5sum will soon be out of date. Newer versions of the installer are expected to work with these instructions, for so long as they install to a `2025/`{.filename} directory.

There are two reasons why you may wish to install the binaries in BLFS: either you need a smaller install (e.g. at a minimum plain TeX without LaTeX, ConTeXt, etc), or you wish to use [**tlmgr**]{.command} to get updates whilst this version is supported (typically, until March of the year after it was released). For the latter, you might prefer to install in your `/home`{.filename} directory as an unprivileged user, and to then make corresponding changes to the PATH in your `~/.bashrc`{.filename} or equivalent.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you wish to use ConTeXt with [**luametatex**]{.command} (most of the old MKII and MKIV code was removed from TeX Live 2023 by the ConTeXt developer), using the binary is probably the easiest option. The source no-longer ships with TeX Live and is poorly adapted to building with systems except those running Mac and Windows. See comments 1 to 5 of [#17823](https://wiki.linuxfromscratch.org/blfs/ticket/17823){.ulink}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz){.ulink}

-   Download MD5 sum: Varies frequently

-   Download size: 5.5 MB

-   Estimated disk space required: 90 MB for plain TeX, typically 323 MB for latex and later engines, 9.0 GB if everything is included

-   Estimated build time: varies, depending on network speed and traffic
:::

#### Recommended

[GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} (to validate both the initial downloads, and also any updates you might later make using [**tlmgr**]{.command}) and [libwww-perl-6.83](../general/perl-modules.md#perl-libwww-perl "LWP (libwww-perl-6.83)"){.xref} (to use a single connection to the server, which will reduce its load and speed things up)

#### Recommended (at runtime)

The binaries are mostly linked to included static libraries or general (LFS) system libraries, but a few of the programs and several scripts will fail if the following packages are not present:

[ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref} is dynamically loaded by the external application [dvisvgm](https://dvisvgm.de/){.ulink}, which is used by [asy]{.application} when that creates SVG files.

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref} and [libxcb-1.17.0](../x/libxcb.md "libxcb-1.17.0"){.xref} are needed for inimf, mf, pdfclose, pdfopen and xdvi-xaw. But if you are using asy, or using a [TeX]{.application} engine to create a PDF file, you will need [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} (for PDF files, this is to support a PDF viewer of your choice, for example [epdfview-gtk3-20200814](epdfview.md "ePDFView-gtk3-20200814"){.xref}).

The binary version of [asy]{.application} needs [Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref}.

The binary version of [xindy]{.application} is linked to `libcrypt.so.1`{.filename} from old versions of [glibc]{.application}. To use the application, follow the Note about binary-only applications in [libxcrypt]{.application} in [LFS Chapter 8](../../../../lfs/view/systemd/chapter08/libxcrypt.md){.ulink} to install the ABI version 1 crypt library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

As always with contributed binary software, it is possible that the required dependencies may change when the installer is updated. In particular, these dependencies have only been checked on x86_64.
:::

[Python2](https://www.python.org/downloads/release/python-2718/){.ulink} is used by the unmaintained ebong CTAN module (intended for writing Bengali in Rapid Roman Format). `/usr/bin/python`{.filename} is also in the shebang line for the latex-papersize and lilyglyphs scripts, and documentation at CTAN says both modules have been updated to work with python3. In pythontex there are scripts to invoke python3 or python2 according to the system's version of [**python**]{.command}. [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref} is used by two scripts, one is for pTex (Japanese vertical writing) and the other is match_parens which might be generally useful. The perl module [Tk](https://cpan.metacpan.org/authors/id/S/SR/SREZIC/Tk-804.036.tar.gz){.ulink}, which needs to be run from an X11 session to run the tests and requires [Tk-8.6.18](../general/tk.md "Tk-8.6.18"){.xref}, is used by one of the scripts for ptex and is needed for texdoctk (a GUI interface for finding documentation files and opening them with the appropriate viewer). [**ps2pdf**]{.command}, from [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref}, is used by some utilities and scripts.
:::::::

:::::: {.installation lang="en"}
## Binary Installation of TeX Live {#binary-installation-of-tex-live .sect2}

The [TeX Live]{.application} set of programs with its supporting documents, fonts, and utilities is very large. The upstream maintainers recommend placing all files in a single directory structure. The BLFS team recommends `/opt/texlive`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have chosen to install the binary as a normal user, the directory for the prefix needs to be writable by that user. The `root`{.systemitem} user can chown `/opt/texlive/2025`{.filename} to that user before the user starts the install. If any later change in that directory is made by the `root`{.systemitem} user, [*that will change the ownership*]{.emphasis}, which breaks usage by normal users.
:::

As with any other package, unpack the installer and change into its directory, `install-tl-<CCYYMMDD>`{.filename}. This directory name changes when the installer is updated, so replace \<CCYYMMDD\> by the correct directory name.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The distribution binaries installed below may use static linking for general linux system libraries. Additional libraries or interpreters as specified in the dependencies section do not need to be present during the install, but the programs that need them will not run until their specific dependencies have been installed.

With all contributed binary software, there may be a mismatch between the builder's toolchain and your hardware. In most of TeX this will probably not matter, but in uncommon corner cases you might hit problems. For example, if your x86_64 processor does not support 3dnowext or 3dnow, the 2014-06-28 binary failed in conTeXt when running LuaTeX, although lualatex worked, as did the i686 binaries on the same machine. In such cases, the easiest solution is to install texlive from source. Similarly, the x86_64 binary version of [**asy**]{.command} runs very slowly when creating 3-D diagrams.
:::

Now, as the `root`{.systemitem} user:

``` root
TEXLIVE_INSTALL_PREFIX=/opt/texlive ./install-tl
```

This command is interactive and allows selection or modification of platform, packages, directories, and other options. The time to complete the download will depend on your internet connection speed and the number of packages selected.

For a minimal install that will build documentation that is referenced in BLFS, the only installation collections needed are '\[a\] Essential programs and files' and '\[D\] LaTeX fundamental packages'. This will download about 132 files and use about 323 MB. Users can select other collections as needed but a full installation will download several thousand files and use over 8GB.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

After installation, the PATH environment variable will need to be updated, and other variables will need to be set. Please refer to [Setting the PATH for TeX Live](tex-path.md "Setting the PATH for TeX Live"){.xref} to set these environment variables.
:::
::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`./install-tl --location http://mirror.aut.ac.nz/CTAN/systems/texlive/tlnet/`{.option}: use a variation of this if you wish to use a different mirror, for example, because you are in New Zealand but the installer chooses to use an Australian mirror. The list of mirrors is at [https://ctan.org/mirrors/](https://ctan.org/mirrors/){.ulink}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [Over 300 binaries and symlinks to scripts]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/opt/texlive]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#tl-installer-programs}[[**TeX programs**]{.command}]{.term}   The programs included in [TeX]{.application} are too numerous to individually list. Please refer to the individual program HTML and PDF pages in the various html, man, or pdf files within the subdirectories of `2025/texmf-dist/`{.filename}. Using [**texdoc pdflatex**]{.command} ( replace [*pdflatex*]{.emphasis} with the command name ) may also be useful
  ----------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](tex-path.md "Setting the PATH for TeX Live"){accesskey="p"}

    Setting the PATH for TeX Live

-   [Next](texlive.md "texlive-20250308-source"){accesskey="n"}

    texlive-20250308-source

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
