::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 39. Office Programs

-   [Prev](gnumeric.md "Gnumeric-1.12.61"){accesskey="p"}

    Gnumeric-1.12.61

-   [Next](graphweb.md "Graphical Web Browsers"){accesskey="n"}

    Graphical Web Browsers

-   [Up](office.md "Chapter 39. Office Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libreoffice}LibreOffice-26.2.2 {#libreoffice-26.2.2 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::::::: {.package lang="en"}
## Introduction to LibreOffice {#introduction-to-libreoffice .sect2}

[LibreOffice]{.application} is a full-featured office suite. It is largely compatible with [Microsoft Office]{.application} and is descended from [OpenOffice.org]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Core Download: [https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-26.2.2.2.tar.xz](https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-26.2.2.2.tar.xz){.ulink}

-   Core Download MD5 sum: acaa63689cc524173d0a79dcadb83367

-   Core Download size: 278 MB

-   Estimated disk space required: 7.6 GB including the additional files if downloaded during the build (744 MB installed). Installing the whole set of languages requires more than 25 GB (around 3 GB installed)

-   Estimated build time: 24 SBU with parallelism=8 (will vary due to download time)
:::

### Additional Downloads

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Around 80 smallish tarballs and zip files will be downloaded during the build. The download time will vary with the local internet speed and server load. The download time is about 3 minutes on a fiber connection and probably not much more than 10 minutes on an ADSL connection. If you have not installed one or more of the following dependencies, they will also be downloaded during the build.
:::

::: itemizedlist
-   Dictionaries: [https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-dictionaries-26.2.2.2.tar.xz](https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-dictionaries-26.2.2.2.tar.xz){.ulink}

    Dictionaries MD5 sum: 7fd7e703ac17a6970c8315d89b455e13

    Dictionaries size: 60 MB

-   Help Files: [https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-help-26.2.2.2.tar.xz](https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-help-26.2.2.2.tar.xz){.ulink}

    Help Files MD5 sum: 97171746ac4ef40fbadc5e6b3d31a0a3

    Help Files size: 56 MB

-   Translations: [https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-translations-26.2.2.2.tar.xz](https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-translations-26.2.2.2.tar.xz){.ulink}

    Translations MD5 sum: 49d9571fe2de9fd7d6405e097f6dd4f7

    Translations size: 225 MB
:::

### LibreOffice Dependencies

#### Required

[Archive-Zip-1.68](../general/perl-modules.md#perl-archive-zip "Archive::Zip-1.68"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref}, and [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::

#### Recommended

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Most of these packages are recommended because if they're not installed, the build process will compile and install its own (often older) version, with the side effect of increasing both build and installed disk space along with increasing build time.
:::

[apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref}, [Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref}, [CLucene-2.3.3.4](../general/clucene.md "CLucene-2.3.3.4"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [GLM-1.0.3](../general/glm.md "GLM-1.0.3"){.xref}, [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}, [gpgmepp-2.1.0](../postlfs/gpgmepp.md "gpgmepp-2.1.0"){.xref}, [Graphite2-1.3.14](../general/graphite2.md "Graphite2-1.3.14"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libatomic_ops-7.10.0](../general/libatomic_ops.md "libatomic_ops-7.10.0"){.xref}, [libepoxy-1.5.10](../x/libepoxy.md "libepoxy-1.5.10"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (clang is preferred for rendering with skia), [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref} (if connecting to an LDAP server), [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [Redland-1.0.17](../general/redland.md "Redland-1.0.17"){.xref}, and [unixODBC-2.3.14](../general/unixodbc.md "unixODBC-2.3.14"){.xref}

#### Optional

[Abseil-cpp-20260107.1](../general/abseil-cpp.md "Abseil-cpp-20260107.1"){.xref}, [Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [DConf-0.49.0](../gnome/dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (not relevant if using --disable-odk), [evolution-data-server-3.60.2](../gnome/evolution-data-server.md "evolution-data-server-3.60.2"){.xref}, [GDB-17.2](../general/gdb.md "GDB-17.2"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [libpaper-2.2.8](../general/libpaper.md "libpaper-2.2.8"){.xref}, [MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, [SANE-1.4.0](../pst/sane.md "SANE-1.4.0"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [VLC-3.0.23](../multimedia/vlc.md "VLC-3.0.23"){.xref}, [zxing-cpp-3.0.2](../general/zxing-cpp.md "zxing-cpp-3.0.2"){.xref}, [BeanShell](https://beanshell.github.io/){.ulink}, [box2d](https://box2d.org/documentation/){.ulink}, [CoinMP](https://projects.coin-or.org/CoinMP/){.ulink}, [Cppunit](https://freedesktop.org/wiki/Software/cppunit/){.ulink}, [Dragonbox](https://github.com/jk-jeon/dragonbox){.ulink}, [Firebird](https://www.firebirdsql.org/){.ulink}, [frozen](https://github.com/serge-sans-paille/frozen){.ulink}, [hamcrest](https://github.com/hamcrest/JavaHamcrest/releases){.ulink}, [Hunspell](https://hunspell.github.io/){.ulink}, [Hyphen](https://sourceforge.net/projects/hunspell/files/Hyphen/){.ulink}, [Java-WebSocket](https://github.com/TooTallNate/Java-WebSocket){.ulink}, [jfreereport](https://sourceforge.net/projects/jfreereport/){.ulink}, [jq](https://jqlang.org/){.ulink}, [junit4](https://github.com/junit-team/junit4/releases){.ulink}, [libabw](https://wiki.documentfoundation.org/DLP/Libraries/libabw){.ulink}, [libcdr](https://wiki.documentfoundation.org/DLP/Libraries/libcdr){.ulink}, [libcmis](https://sourceforge.net/projects/libcmis/){.ulink}, [libebook](https://www.sourceforge.net/projects/libebook/){.ulink}, [libeot](https://github.com/umanwizard/libeot){.ulink}, [libepubgen](https://sourceforge.net/projects/libepubgen/){.ulink}, [libetonyek](https://wiki.documentfoundation.org/DLP/Libraries/libetonyek){.ulink}, [libexttextcat](https://wiki.documentfoundation.org/Libexttextcat){.ulink}, [libfixmath](https://github.com/PetteriAimonen/libfixmath){.ulink}, [libfreehand](https://wiki.documentfoundation.org/DLP/Libraries/libfreehand){.ulink}, [liblangtag](https://tagoh.github.io/liblangtag/){.ulink}, [libmspub](https://wiki.documentfoundation.org/DLP/Libraries/libmspub){.ulink}, [libmwaw](https://sourceforge.net/projects/libmwaw/){.ulink}, [libnumbertext](https://github.com/Numbertext/libnumbertext){.ulink}, [libodfgen](https://sourceforge.net/projects/libwpd/files/libodfgen/){.ulink}, [libpagemaker](https://wiki.documentfoundation.org/DLP/Libraries/libpagemaker){.ulink}, [libqxp](https://wiki.documentfoundation.org/DLP/Libraries/libqxp){.ulink}, [librevenge (WordPerfect Document importer)](https://sourceforge.net/projects/libwpd/files/librevenge/){.ulink}, [libstaroffice](https://github.com/fosnola/libstaroffice/wiki){.ulink}, [libvisio](https://wiki.documentfoundation.org/DLP/Libraries/libvisio){.ulink}, [libwpd](https://libwpd.sourceforge.net/){.ulink}, [libwpg](https://libwpg.sourceforge.net/){.ulink}, [libwps](https://sourceforge.net/p/libwps/wiki/Home/){.ulink}, [libzmf](https://wiki.documentfoundation.org/DLP/Libraries/libzmf){.ulink}, [lp_solve](https://lpsolve.sourceforge.net/){.ulink}, [mdds](https://gitlab.com/mdds/mdds){.ulink}, [MyThes](https://sourceforge.net/projects/hunspell/files/MyThes/){.ulink}, [odfvalidator](https://odftoolkit.org/conformance/ODFValidator.md){.ulink}, [officeotron](https://code.google.com/archive/p/officeotron/){.ulink}, [Orcus](https://gitlab.com/orcus/orcus){.ulink}, [rhino](https://github.com/mozilla/rhino){.ulink}, and [suitesparse (colamd)](https://people.engr.tamu.edu/davis/suitesparse.md){.ulink}

There are many optional dependencies not listed here. They can be found in the `download.lst`{.filename} file in the sources directory.

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/libreoffice](https://wiki.linuxfromscratch.org/blfs/wiki/libreoffice){.ulink}
:::::::::

::::: {.installation lang="en"}
## Installation of LibreOffice {#installation-of-libreoffice .sect2}

First, fix build failures introduced by the latest version of poppler:

``` userinput
sed -e '/, const GooString/ s/GooString *\*/std::string \&/' \
    -i sdext/source/pdfimport/xpdfwrapper/pdfioutdev_gpl.cxx \
       sdext/source/pdfimport/xpdfwrapper/pdfioutdev_gpl.hxx
```

First, fix a bug with linking to zlib, fix a bug which would cause an install failure, and prevent compression of man pages:

``` userinput
sed -i '/icuuc \\/a zlib\\'           writerperfect/Library_wpftdraw.mk &&
sed -i "/distro-install-file-lists/d" Makefile.in                       &&
sed -e "/gzip -f/d"   \
    -e "s|.1.gz|.1|g" \
    -i bin/distro-install-desktop-integration
```

If you have downloaded the dictionaries, help and translations tarballs, create symlinks to them from the source directory so they won't get downloaded again:

``` userinput
install -dm755 external/tarballs &&
ln -sv ../../../libreoffice-dictionaries-26.2.2.2.tar.xz external/tarballs/ &&
ln -sv ../../../libreoffice-help-26.2.2.2.tar.xz         external/tarballs/ &&
ln -sv ../../../libreoffice-translations-26.2.2.2.tar.xz external/tarballs/
```

The instructions in the package unpack some tarballs into a location it cannot find later. Create some symlinks to help the build system out:

``` userinput
ln -sv src/libreoffice-help-26.2.2.2/helpcontent2/ &&
ln -sv src/libreoffice-dictionaries-26.2.2.2/dictionaries/ &&
ln -sv src/libreoffice-translations-26.2.2.2/translations/
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

During the build process, some packages will be downloaded (including the ones listed as recommended and optional dependencies) if they are not present on the system. Because of this, build time may vary from the published time more than usual.
:::

Due to the large size of the package, you may prefer to install it in `/opt`{.filename}, instead of `/usr`{.filename}. Depending on your choice, replace *`<PREFIX>`* by `/usr`{.filename} or by `/opt/libreoffice-26.2.2.2`{.filename}:

``` userinput
export LO_PREFIX=<PREFIX>
```

Locales "fr" and "en-GB", you will find below, are just examples; you should change them to suit your needs - you might want to read the "Command Explanations", further below, before proceeding.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you set the ACLOCAL environment variable to support installing Xorg in /opt, you will need to unset it for this package.
:::

If you are building on a 32 bit machine, `CFLAGS`{.envar} is set to [**-Os**]{.command}, which breaks the build. Prevent this by issuing:

``` userinput
case $(uname -m) in
   i?86) sed /-Os/d -i solenv/gbuild/platform/LINUX_INTEL_GCC.mk ;;
esac
```

Prepare [LibreOffice]{.application} for compilation by running the following commands:

``` userinput
./autogen.sh --prefix=$LO_PREFIX         \
             --sysconfdir=/etc           \
             --with-vendor=BLFS          \
             --with-lang='fr en-GB'      \
             --with-help=html            \
             --with-myspell-dicts        \
             --without-junit             \
             --without-system-dicts      \
             --disable-dconf             \
             --disable-odk               \
             --disable-mariadb-sdbc      \
             --enable-release-build=yes  \
             --enable-python=system      \
             --with-jdk-home=/opt/jdk    \
             --with-system-boost         \
             --with-system-clucene       \
             --with-system-curl          \
             --with-system-epoxy         \
             --with-system-expat         \
             --with-system-glm           \
             --with-system-gpgmepp       \
             --with-system-graphite      \
             --with-system-harfbuzz      \
             --with-system-icu           \
             --with-system-jpeg          \
             --with-system-lcms2         \
             --with-system-libatomic_ops \
             --with-system-libtiff       \
             --with-system-libpng        \
             --with-system-libxml        \
             --with-system-libwebp       \
             --with-system-nss           \
             --with-system-odbc          \
             --with-system-openldap      \
             --with-system-openssl       \
             --with-system-poppler       \
             --with-system-postgresql    \
             --with-system-redland       \
             --with-system-zlib          \
             --with-system-zstd
```

Build the package:

``` userinput
make build
```

Now, as the `root`{.systemitem} user:

``` root
make distro-pack-install
```

If installed in `/opt/libreoffice-26.2.2.2`{.filename} some additional steps are necessary. Issue the following commands as the `root`{.systemitem} user:

``` root
if [ "$LO_PREFIX" != "/usr" ]; then

  # This symlink is necessary for the desktop menu entries
  ln -svf $LO_PREFIX/lib/libreoffice/program/soffice /usr/bin/libreoffice &&

  # Set up a generic location independent of version number
  ln -sfv $LO_PREFIX /opt/libreoffice &&

  # Icons
  mkdir -vp /usr/share/pixmaps &&
  for i in $LO_PREFIX/share/icons/hicolor/32x32/apps/*; do
    ln -svf $i /usr/share/pixmaps
  done &&

  # Desktop menu entries
  for i in $LO_PREFIX/lib/libreoffice/share/xdg/*; do
    ln -svf $i /usr/share/applications/libreoffice-$(basename $i)
  done &&

  # Man pages
  for i in $LO_PREFIX/share/man/man1/*; do
    ln -svf $i /usr/share/man/man1/
  done &&

  unset i
fi
```

If you have installed [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, and you wish to update the MIME database, issue, as the `root`{.systemitem} user:

``` root
update-desktop-database
```

The suite and main modules can be started from the menu. From a terminal, the suite can be started with the [**libreoffice**]{.command} command and the modules with the [**libreoffice --*`<module>`***]{.command} command, respectively, where *`<module>`* is one of base, calc, draw, impress, math, web, or writer. Modules cannot be started using their shell starting script names (see "Installed Programs", below), if LO_PREFIX is other than `/usr`{.filename}, unless the `$LO_PREFIX/bin`{.filename} directory is appended to the PATH.
:::::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-vendor=BLFS`*: This switch sets BLFS as the vendor which is mentioned when you click "About" from the Help menu on the toolbar.

*`--with-lang='fr en-GB'`*: This switch sets what languages to support. To list several languages, separate them with a space. For all languages, use `--with-lang=ALL`{.option}. Note that the translations file is not needed and won't be downloaded if using only en-US as a language.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For a list of the available languages, look in `solenv/inc/langlist.mk`{.filename}.
:::

*`--with-help=html`*: Without this switch, the help files are not built.

*`--with-jdk-home=/opt/jdk`*: This parameter will silence a warning that the configure script attempted to find JAVA_HOME automatically (even though that is passed in the environment). Omit this if you disabled java.

*`--with-myspell-dicts`*: This switch adds myspell dictionaries to the [LibreOffice]{.application} installation set.

*`--with-system-boost`*: This switch enables using system boost. From time to time, recent versions of boost break the build of libreoffice. In this case, it is possible to use the bundled copy of boost by removing this flag.

*`--disable-dconf`*: This switch disables compiling [LibreOffice]{.application} with the [GNOME DConf]{.application} configuration system support.

*`--without-junit`*: This switch disables the tests for the deprecated HSQLDB driver which is written in Java.

*`--without-system-dicts`*: This switch disables the use of dictionaries from system paths so that the ones installed by this package are used.

*`--disable-odk`*: This switch disables installing the office development kit. Remove if you want to develop a [LibreOffice]{.application} based application.

*`--disable-mariadb-sdbc`*: This switch disables the MariaDB SDBC connector for Libreoffice Base. Leaving it enabled results in a build failure because of a problem linking to [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}.

*`--enable-release-build=yes`*: This switch enables a Release Build. [LibreOffice]{.application} can be built as a Release Build or as a Developer Build, because their default installation paths and user profile paths are different. Developer Build displays the words "Dev" and "Beta" in several places (e.g, menu and splash screen).

*`--enable-python=system`*: This switch tells [LibreOffice]{.application} to use the system installed [Python 3]{.application} instead of the bundled one.

*`--with-system-icu`*: This switch tells the build system to use the system installed version of ICU.

*`--with-system-*`*: These switches prevent [LibreOffice]{.application} from trying to compile its own versions of these dependencies. If you've not installed some of the dependencies, remove the corresponding switches.

[**make distro-pack-install**]{.command}: This does a normal install, but if you add a DESTDIR environment variable it will also install a lot of (text) gid_Module\_\* files in the DESTDIR, to help distributions which want to break the package into parts.

`--with-parallelism=<count>`{.option}: This switch tells [LibreOffice]{.application} to use \<count\> CPU cores to compile in parallel. (Do not include literal angle brackets.) The default is to use all available cores on the system.

`--disable-cups`{.option}: Use this switch if you don't need printing support.

`--disable-dbus`{.option}: Use this switch if you've not installed D-Bus-1.8.0 or later. It also disables Bluetooth support and font install via PackageKit.

`--disable-firebird-sdbc`{.option}: By default, the ability to connect to a [firebird]{.application} database is enabled. Add this switch if you do not need that feature.

`--disable-gstreamer-1-0`{.option}: Use this switch if you have not installed [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}.

`--disable-postgresql-sdbc`{.option}: This switch disables compiling [LibreOffice]{.application} with the ability to connect to a [PostgreSQL]{.application} database. Use it if you have not installed [PostgreSQL]{.application} and you do not want [LibreOffice]{.application} to compile its bundled copy.

`--disable-skia`{.option}: Use [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref} for rendering instead of skia.

`--enable-lto`{.option}: This switch will enable Link Time Optimization, which results in slightly smaller libraries (about 40 MB). This is said to make [LibreOffice]{.application} programs load faster (and possibly run faster, e.g. when recalculating a spreadsheet). On an 8-core machine with 16 GB of memory, the difference in compile times was minimal, but an extra 2 GB was used for the work files. On machines with fewer processors or a lack of memory, the compile might be much slower.

`--without-java`{.option}: This switch disables [Java]{.application} support in [LibreOffice]{.application}. Java is needed for the deprecated HSQLDB driver, which allows reading databases created by other programs or in earlier versions of libreoffice [base]{.application}. It is also needed for some optional user interface components.

`--without-fonts`{.option}: [LibreOffice]{.application} includes a number of third-party TrueType fonts. If you have already installed some or all of the same fonts, you may prefer to use the system versions.

`--enable-evolution2`{.option}: Enables support for Evolution address books through Evolution Data Server. Note that Evolution Data Server must be installed for this feature to function.

`--enable-qt6`{.option}: This switch enables support for integration with Qt6 and the Qt6 theming engine. If [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} is not installed in `/usr`{.filename}, the include and library directories must be specified in the `QT6INC`{.envar} and `QT6LIB`{.envar} environment variables.

`--enable-kf6`{.option}: This switch enables KDE/Plasma integration. If [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} and/or [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} are not installed in `/usr`{.filename}, the include and library directories must be specified in `QT6INC`{.envar}, `QT6LIB`{.envar}, `KF6INC`{.envar}, and `KF6LIB`{.envar}, respectively. This includes a style plugin and KIO integration.

`--with-system-abseil`{.option}: This switch enables using a system version of the Abseil C++ libraries instead of the bundled copy. Add this switch if [Abseil-cpp-20260107.1](../general/abseil-cpp.md "Abseil-cpp-20260107.1"){.xref} is installed and you want to use it instead of the bundled copy.

`--with-system-zxing`{.option}: This switch enables using a system version of zxing-cpp instead of the bundled copy. Add this switch if [zxing-cpp-3.0.2](../general/zxing-cpp.md "zxing-cpp-3.0.2"){.xref} is installed and you want to use it instead of the bundled copy.

`--enable-gtk4`{.option}: This switch enables integration with GTK-4, including the usage of a GTK-4 file browsing dialog and themes.
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [libreoffice, lobase, localc, lodraw, loffice, lofromtemplate, loimpress, lomath, loweb, lowriter, soffice and unopkg; several programs under \$LO_PREFIX/lib/libreoffice/program]{.segbody}
:::

::: seg
**Installed Libraries:** [several libraries under \$LO_PREFIX/lib/libreoffice/program]{.segbody}
:::

::: seg
**Installed Directory:** [\$LO_PREFIX/lib/libreoffice]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------- ---------------------------------------------------------------------------------------
  []{#libreoffice-suite}[[**libreoffice (or soffice)**]{.command}]{.term}   is the main libreofice suite (symlink to \$LO_PREFIX/lib/libreoffice/program/soffice)
  []{#lobase}[[**lobase**]{.command}]{.term}                                is the database manager module shell starting script
  []{#localc}[[**localc**]{.command}]{.term}                                is the spreadsheet module shell starting script
  []{#lodraw}[[**lodraw**]{.command}]{.term}                                is the vector graphics editor and diagramming tool module shell starting script
  []{#loimpress}[[**loimpress**]{.command}]{.term}                          is the (PowerPoint) presentations editor and displayer module shell starting script
  []{#lomath}[[**lomath**]{.command}]{.term}                                is the mathematical formula editor module shell starting script
  []{#loweb}[[**loweb**]{.command}]{.term}                                  is the HTML editor module shell starting script
  []{#lowriter}[[**lowriter**]{.command}]{.term}                            is the word processor module shell starting script
  []{#unopkg}[[**unopkg**]{.command}]{.term}                                is a tool to manage [LibreOffice]{.application} extensions from the command line
  ------------------------------------------------------------------------- ---------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](gnumeric.md "Gnumeric-1.12.61"){accesskey="p"}

    Gnumeric-1.12.61

-   [Next](graphweb.md "Graphical Web Browsers"){accesskey="n"}

    Graphical Web Browsers

-   [Up](office.md "Chapter 39. Office Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
