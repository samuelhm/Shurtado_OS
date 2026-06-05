::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](tl-installer.md "install-tl-unx"){accesskey="p"}

    install-tl-unx

-   [Next](asymptote.md "asymptote-3.10"){accesskey="n"}

    asymptote-3.10

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#texlive}texlive-20250308-source {#texlive-20250308-source .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
:::::::: {.package lang="en"}
## Introduction to TeX Live from source {#introduction-to-tex-live-from-source .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

According to [https://www.tug.org/historic/](https://www.tug.org/historic/){.ulink} the master site in France only supports ftp and rsync. Now that ftp is generally deprecated, that page has links to mirrors, some of which support https, e.g. in Utah and Chemnitz as well as in China. If you prefer to use a different mirror from the example links here, you will need to navigate to systems/historic/texlive/2025 or systems/texlive/2025 as the case may be.
:::

Most of TeX Live can be built from source without a pre-existing installation, but [xindy]{.application} (for indexing) needs working versions of [**latex**]{.command} and [**pdflatex**]{.command} when configure is run, and the test suite and install for [**asy**]{.command} (for vector graphics) will fail if TeX has not already been installed. Additionally, [biber]{.application} is not provided within the [texlive]{.application} source and the version of [dvisvgm]{.application} in the [texlive]{.application} tree cannot be built if shared system libraries are used.

All of those packages are dealt with on their own pages and can be built after installing this package. If you have not already done so, you should start at [Setting the PATH for TeX Live](tex-path.md "Setting the PATH for TeX Live"){.xref} so that the final commands to initialize the new installation will be found.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-source.tar.xz](https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-source.tar.xz){.ulink}

-   Download MD5 sum: 699b3a9871885e54f35c155332d69da4

-   Download size: 106 MB

-   Estimated disk space required: 9.8 GB including the additional downloads and the tests, 8.7 GB installed

-   Estimated build time: 4.0 SBU including the additional downloads and the tests, building with parallelism=4
:::

### Required Additional Downloads

Much of the texlive environment (including scripts, documentation, fonts, and various other files) is not part of the source tarball. You must download it separately. This will give you all of the additional files which are provided by a full install of the binary version, as there is no realistic way to restrict which parts get installed.

Because of the size of this package, it is unlikely to be mirrored by BLFS mirrors. If you are unable to download the files for this package, go to https://www.ctan.org/mirrors/ to find a more-accessible mirror.

::: itemizedlist
-   Download (HTTP): [https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-texmf.tar.xz](https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-texmf.tar.xz){.ulink}

-   Download MD5 sum: 9b3093da81e6eacf98fde86589471a22

-   Download size: 4.4 GB
:::

The tlpdb database is shipped as a separate tarball. The [**texdoc**]{.command} program needs a cache file derived from this (and will create the cache on its first run).

::: itemizedlist
-   Download (HTTP): [https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-extra.tar.xz](https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2025/texlive-20250308-extra.tar.xz){.ulink}

-   Download MD5 sum: 8aabf4273a001d79c3c8de347f028145

-   Download size: 2.0 MB

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/texlive-20250308-source-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/texlive-20250308-source-upstream_fixes-1.patch){.ulink}
:::

### TeX Live from source Dependencies

#### Recommended

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}

The source ships with its own versions of [*many*]{.emphasis} libraries, and will use them unless it is forced to use the system versions. The following are recommended so that the system version will be used: [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref}, [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref}, [Graphite2-1.3.14](../general/graphite2.md "Graphite2-1.3.14"){.xref}, [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref} (built with graphite2 enabled), [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libpaper-2.2.8](../general/libpaper.md "libpaper-2.2.8"){.xref} (used by at least context and xelatex), and [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}

Furthermore, the instructions below assume you are using the layout described in [Setting the PATH for TeX Live](tex-path.md "Setting the PATH for TeX Live"){.xref}.

#### Optional

The source ships with its own versions of several libraries which are either not under active development, or only used for limited functionality. If you install these, as with some other optional dependencies in this book you will need to tell [**configure**]{.command} to use the system versions. [GD](https://libgd.github.io/){.ulink}, [t1lib](https://www.t1lib.org/){.ulink}, [ZZIPlib](https://github.com/gdraheim/zziplib/){.ulink}, [TECkit](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=TECkitDownloads){.ulink}

#### Runtime dependencies

[Python2](https://www.python.org/downloads/release/python-2718/){.ulink} is used by the unmaintained ebong CTAN module (intended for writing Bengali in Rapid Roman Format). `/usr/bin/python`{.filename} is also in the shebang line for the latex-papersize and lilyglyphs scripts, and documentation at CTAN says both modules have been updated to work with python3. In pythontex there are scripts to invoke python3 or python2 according to the system's version of [**python**]{.command}. [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref} is used by two scripts, one is for pTex (Japanese vertical writing) and the other is match_parens which might be generally useful. The perl module [Tk](https://cpan.metacpan.org/authors/id/S/SR/SREZIC/Tk-804.036.tar.gz){.ulink}, which needs to be run from an X11 session to run the tests and requires [Tk-8.6.18](../general/tk.md "Tk-8.6.18"){.xref}, is used by one of the scripts for ptex and is needed for texdoctk (a GUI interface for finding documentation files and opening them with the appropriate viewer). [**ps2pdf**]{.command}, from [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref}, is used by some utilities and scripts.
::::::::

::::::: {.installation lang="en"}
## Installation of TeX Live {#installation-of-tex-live .sect2}

Install TeX Live by running the following commands:

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you wish to upgrade to current [texlive]{.application} on an older system where extra packages ([asymptote]{.application}, [dvisvgm]{.application}, or [xindy]{.application}) have been installed, you will need to reinstall those as well as fixing up your `PATH`{.literal} for `$TEXLIVE_PREFIX`{.literal}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A successful install requires some texlive commands to be run as the root user, so we will export the TEXARCH variable to let `root`{.systemitem} use it.
:::

Now, as a normal user:

``` userinput
export TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

patch -Np1 -i ../texlive-20250308-source-upstream_fixes-1.patch &&

mkdir texlive-build &&
cd    texlive-build &&

../configure CC="gcc -std=gnu17" -C               \
    --prefix=$TEXLIVE_PREFIX                      \
    --bindir=$TEXLIVE_PREFIX/bin/$TEXARCH         \
    --datarootdir=$TEXLIVE_PREFIX                 \
    --includedir=$TEXLIVE_PREFIX/include          \
    --infodir=$TEXLIVE_PREFIX/texmf-dist/doc/info \
    --libdir=$TEXLIVE_PREFIX/lib                  \
    --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man   \
    --disable-native-texlive-build                \
    --disable-static --enable-shared              \
    --disable-dvisvgm                             \
    --with-system-cairo                           \
    --with-system-fontconfig                      \
    --with-system-freetype2                       \
    --with-system-gmp                             \
    --with-system-graphite2                       \
    --with-system-harfbuzz                        \
    --with-system-icu                             \
    --with-system-libpaper                        \
    --with-system-libpng                          \
    --with-system-mpfr                            \
    --with-system-pixman                          \
    --with-system-zlib                            \
    --with-banner-add=" - BLFS" &&

make
```

To test the results, issue: [**make -k check**]{.command}. One test, `psutils.test`{.filename}, is known to fail if using system libpaper because TeX Live includes old versions of both [psutils]{.application} and [libpaper]{.application} which result in a difference in the final decimal places of the psresize test. The [libpaper]{.application} developer does not think this is significant. Another test, `xdvipdfm-pdf.test`{.filename}, is known to fail due to a missing binary file from the upstream fixes patch. This does not affect the functionality of the program.

Now, as the `root`{.systemitem} user:

``` root
make install-strip &&
make texlinks      &&
mkdir -pv                                $TEXLIVE_PREFIX/tlpkg/TeXLive/ &&
install -v -m644 ../texk/tests/TeXLive/* $TEXLIVE_PREFIX/tlpkg/TeXLive/ &&
tar -xf ../../texlive-20250308-extra.tar.xz -C $TEXLIVE_PREFIX/tlpkg --strip-components=2
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Only run [**make texlinks**]{.command} once. If it is run again, it can change all the program symlinks so that they point to themselves and are useless.
:::

Now install the additional files as the `root`{.systemitem} user:

``` root
tar -xf ../../texlive-20250308-texmf.tar.xz -C $TEXLIVE_PREFIX --strip-components=1
```

Still as the `root`{.systemitem} user, initialize the new system (the command [**fmtutil-sys --all**]{.command} will produce a [*lot*]{.emphasis} of output):

``` root
mktexlsr &&
fmtutil-sys --all
```

To allow [Evince-48.4](../gnome/evince.md "Evince-48.4"){.xref} or [dvisvgm-3.6](dvisvgm.md "dvisvgm-3.6"){.xref} to link to `libkpathsea.so`{.filename}, as the `root`{.systemitem} user (re)create a symlink from `/usr/lib`{.filename}:

``` root
ln -svf $TEXLIVE_PREFIX/lib/libkpathsea.so{,.6} /usr/lib
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

TeX Live does not include the source for ConTeXt, only the items that are at CTAN. Trying to build ConTeXt purely from source on a BLFS TeX Live system is a niche usage and looks as if it will be more trouble than it is worth.

If you wish to use ConTeXt with [**luametatex**]{.command} (most of the old MKII and MKIV code was removed from TeX Live 2023 by the ConTeXt developer), starting with the binary (only installing ConTeXt, 753 MB in March 2024) would probably be the easiest way to bootstrap it. The source for [**luametatex**]{.command} can be pulled with git from [github luametatex](https://github.com/contextgarden/luametatex/tags){.ulink}, compiled with meson and ninja, and installed by copying to the correct program directory. This should avoid having to fix all the symlinks etc and also avoid including the many unrelated parts of texmf-dist. See comments 1 to 5 of [#17823](https://wiki.linuxfromscratch.org/blfs/ticket/17823){.ulink}.
:::

You can now proceed to [asymptote-3.10](asymptote.md "asymptote-3.10"){.xref}, [biber-2.21](biber.md "biber-2.21"){.xref}, [dvisvgm-3.6](dvisvgm.md "dvisvgm-3.6"){.xref} and / or [xindy-2.5.1](xindy.md "xindy-2.5.1"){.xref} if you wish to install them.
:::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**-C**]{.command}: creates config.cache, which saves significant time in a parallel build.

*`--prefix=`*, *`--bindir=`*, *`--datarootdir=`*, and other [“[dir]{.quote}”]{.quote} switches: these switches ensure that the files installed from source will overwrite any corresponding files previously installed by [install-tl-unx]{.application} so that the alternative methods of installing [texlive]{.application} are consistent.

*`--includedir=`* *`--libdir=`* : these switches ensure that the libraries and include files will be within the directories for this year's texlive.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-shared`*: Use shared versions of `libkpathsea`{.filename}, `libptexenc`{.filename}, `libsynctex`{.filename}, `libtexlua52`{.filename} and `libtexluajit`{.filename}.

*`--with-system-`*...: Unless this parameter is used, the included versions of these libraries will be statically compiled into the programs which need them. If you decided not to install a recommended library, omit the corresponding switch.

*`--disable-dvisvgm`*: As noted above, the shipped version of dvisvgm, which has modified configuration files, cannot be built with shared system libraries.

[**make texlinks**]{.command} : this runs the texlinks.sh script to create symbolic links from formats to engines. In practice, several of the targets such as [**xetex**]{.command} are now separate binaries and for these it will report "file already exists".

[**tar -xf texlive-20250308-texmf.tar.xz -C \$TEXLIVE_PREFIX --strip-components=1**]{.command}: this tarball contains the files for the texmf-dist directory, and because of its size we do not want to waste time and space untarring it and then copying the files.

[**install -v -m644 ../texk/tests/TeXLive/\* \$TEXLIVE_PREFIX/tlpkg/TeXLive/**]{.command}: This puts the perl modules `TLConfig.pm`{.filename} and `TLUtils.pm`{.filename} into the directory where the binary installer puts them - it is at the start of the perl \@INC@ PATH within texlive when installed using the above configure switches. Without these modules, texlive is unusable.

[**mktexlsr**]{.command}: Creates an `ls-R`{.filename} file which lists what was installed - this is used by kpathsea to find files.

[**fmtutil-sys --all**]{.command}: This initializes the TeX formats, Metafont bases and Metapost mems.

`--without-x`{.option}: Use this option if you do not have Xorg installed.

There are many other '--disable' or '--without' options. Some of them such as `--without-texinfo`{.option} are accepted but no longer do anything, others will prevent a program being built - but the far greater amount of space used for the related items in texmf means there is no obvious benefit from disabling a few of the programs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [Over 300 binaries and symlinks to scripts]{.segbody}
:::

::: seg
**Installed Libraries:** [libkpathsea.so, libptexenc.so, libsynctex.so, libtexlua53.so, libtexluajit.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$TEXLIVE_PREFIX/bin, \$TEXLIVE_PREFIX/include, \$TEXLIVE_PREFIX/lib, \$TEXLIVE_PREFIX/texmf-dist]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#texlive-programs}[[**TeX programs**]{.command}]{.term}   The programs included in [TeX]{.application} are too numerous to individually list. Please refer to the individual program HTML and PDF pages in the various html, man, or pdf files within the subdirectories of `2025/texmf-dist/`{.filename}. Using [**texdoc pdflatex**]{.command} ( replace [*pdflatex*]{.emphasis} with the command name ) may also be useful
  []{#libkpathsea}[`libkpathsea.so`{.filename}]{.term}         (kpathsearch) exists to look up a file in a list of directories and is used by [**kpsewhich**]{.command}
  []{#libptexenc}[`libptexenc.so`{.filename}]{.term}           is a library for Japanese pTeX (publishing TeX)
  []{#libsynctex}[`libsynctex.so`{.filename}]{.term}           is the SyncTeX (Synchronize TeXnology) parser library
  []{#libtexlua53}[`libtexlua53.so`{.filename}]{.term}         provides Lua 5.3, modified for use with LuaTeX
  []{#libtexluajit}[`libtexluajit.so`{.filename}]{.term}       provides LuaJIT, modified for use with LuaJITTeX
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](tl-installer.md "install-tl-unx"){accesskey="p"}

    install-tl-unx

-   [Next](asymptote.md "asymptote-3.10"){accesskey="n"}

    asymptote-3.10

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
