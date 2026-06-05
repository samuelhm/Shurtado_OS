<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 39. Office Programs

-   [Prev](gnumeric.md "Gnumeric-1.12.61")

    Gnumeric-1.12.61

-   [Next](graphweb.md "Graphical Web Browsers")

    Graphical Web Browsers

-   [Up](office.md "Chapter 39. Office Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LibreOffice-26.2.2 {#libreoffice-26.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LibreOffice {#introduction-to-libreoffice}

<span class="application">LibreOffice</span> is a full-featured office suite. It is largely compatible with <span class="application">Microsoft Office</span> and is descended from <span class="application">OpenOffice.org</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Core Download: <a class="ulink" href="https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-26.2.2.2.tar.xz">https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-26.2.2.2.tar.xz</a>

-   Core Download MD5 sum: acaa63689cc524173d0a79dcadb83367

-   Core Download size: 278 MB

-   Estimated disk space required: 7.6 GB including the additional files if downloaded during the build (744 MB installed). Installing the whole set of languages requires more than 25 GB (around 3 GB installed)

-   Estimated build time: 24 SBU with parallelism=8 (will vary due to download time)
</div>

### Additional Downloads

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Around 80 smallish tarballs and zip files will be downloaded during the build. The download time will vary with the local internet speed and server load. The download time is about 3 minutes on a fiber connection and probably not much more than 10 minutes on an ADSL connection. If you have not installed one or more of the following dependencies, they will also be downloaded during the build.
</div>

<div class="itemizedlist">
-   Dictionaries: <a class="ulink" href="https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-dictionaries-26.2.2.2.tar.xz">https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-dictionaries-26.2.2.2.tar.xz</a>

    Dictionaries MD5 sum: 7fd7e703ac17a6970c8315d89b455e13

    Dictionaries size: 60 MB

-   Help Files: <a class="ulink" href="https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-help-26.2.2.2.tar.xz">https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-help-26.2.2.2.tar.xz</a>

    Help Files MD5 sum: 97171746ac4ef40fbadc5e6b3d31a0a3

    Help Files size: 56 MB

-   Translations: <a class="ulink" href="https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-translations-26.2.2.2.tar.xz">https://download.documentfoundation.org/libreoffice/src/26.2.2/libreoffice-translations-26.2.2.2.tar.xz</a>

    Translations MD5 sum: 49d9571fe2de9fd7d6405e097f6dd4f7

    Translations size: 225 MB
</div>

### LibreOffice Dependencies

#### Required

<a class="xref" href="../general/perl-modules.md#perl-archive-zip" title="Archive::Zip-1.68">Archive-Zip-1.68</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a>, and <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>

#### Recommended

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Most of these packages are recommended because if they're not installed, the build process will compile and install its own (often older) version, with the side effect of increasing both build and installed disk space along with increasing build time.
</div>

<a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a>, <a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>, <a class="xref" href="../general/clucene.md" title="CLucene-2.3.3.4">CLucene-2.3.3.4</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/glm.md" title="GLM-1.0.3">GLM-1.0.3</a>, <a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a>, <a class="xref" href="../postlfs/gpgmepp.md" title="gpgmepp-2.1.0">gpgmepp-2.1.0</a>, <a class="xref" href="../general/graphite2.md" title="Graphite2-1.3.14">Graphite2-1.3.14</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/libatomic_ops.md" title="libatomic_ops-7.10.0">libatomic_ops-7.10.0</a>, <a class="xref" href="../x/libepoxy.md" title="libepoxy-1.5.10">libepoxy-1.5.10</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (clang is preferred for rendering with skia), <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a> (if connecting to an LDAP server), <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="../general/redland.md" title="Redland-1.0.17">Redland-1.0.17</a>, and <a class="xref" href="../general/unixodbc.md" title="unixODBC-2.3.14">unixODBC-2.3.14</a>

#### Optional

<a class="xref" href="../general/abseil-cpp.md" title="Abseil-cpp-20260107.1">Abseil-cpp-20260107.1</a>, <a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../gnome/dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (not relevant if using --disable-odk), <a class="xref" href="../gnome/evolution-data-server.md" title="evolution-data-server-3.60.2">evolution-data-server-3.60.2</a>, <a class="xref" href="../general/gdb.md" title="GDB-17.2">GDB-17.2</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../general/libpaper.md" title="libpaper-2.2.8">libpaper-2.2.8</a>, <a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, <a class="xref" href="../pst/sane.md" title="SANE-1.4.0">SANE-1.4.0</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../multimedia/vlc.md" title="VLC-3.0.23">VLC-3.0.23</a>, <a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a>, <a class="ulink" href="https://beanshell.github.io/">BeanShell</a>, <a class="ulink" href="https://box2d.org/documentation/">box2d</a>, <a class="ulink" href="https://projects.coin-or.org/CoinMP/">CoinMP</a>, <a class="ulink" href="https://freedesktop.org/wiki/Software/cppunit/">Cppunit</a>, <a class="ulink" href="https://github.com/jk-jeon/dragonbox">Dragonbox</a>, <a class="ulink" href="https://www.firebirdsql.org/">Firebird</a>, <a class="ulink" href="https://github.com/serge-sans-paille/frozen">frozen</a>, <a class="ulink" href="https://github.com/hamcrest/JavaHamcrest/releases">hamcrest</a>, <a class="ulink" href="https://hunspell.github.io/">Hunspell</a>, <a class="ulink" href="https://sourceforge.net/projects/hunspell/files/Hyphen/">Hyphen</a>, <a class="ulink" href="https://github.com/TooTallNate/Java-WebSocket">Java-WebSocket</a>, <a class="ulink" href="https://sourceforge.net/projects/jfreereport/">jfreereport</a>, <a class="ulink" href="https://jqlang.org/">jq</a>, <a class="ulink" href="https://github.com/junit-team/junit4/releases">junit4</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libabw">libabw</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libcdr">libcdr</a>, <a class="ulink" href="https://sourceforge.net/projects/libcmis/">libcmis</a>, <a class="ulink" href="https://www.sourceforge.net/projects/libebook/">libebook</a>, <a class="ulink" href="https://github.com/umanwizard/libeot">libeot</a>, <a class="ulink" href="https://sourceforge.net/projects/libepubgen/">libepubgen</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libetonyek">libetonyek</a>, <a class="ulink" href="https://wiki.documentfoundation.org/Libexttextcat">libexttextcat</a>, <a class="ulink" href="https://github.com/PetteriAimonen/libfixmath">libfixmath</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libfreehand">libfreehand</a>, <a class="ulink" href="https://tagoh.github.io/liblangtag/">liblangtag</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libmspub">libmspub</a>, <a class="ulink" href="https://sourceforge.net/projects/libmwaw/">libmwaw</a>, <a class="ulink" href="https://github.com/Numbertext/libnumbertext">libnumbertext</a>, <a class="ulink" href="https://sourceforge.net/projects/libwpd/files/libodfgen/">libodfgen</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libpagemaker">libpagemaker</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libqxp">libqxp</a>, <a class="ulink" href="https://sourceforge.net/projects/libwpd/files/librevenge/">librevenge (WordPerfect Document importer)</a>, <a class="ulink" href="https://github.com/fosnola/libstaroffice/wiki">libstaroffice</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libvisio">libvisio</a>, <a class="ulink" href="https://libwpd.sourceforge.net/">libwpd</a>, <a class="ulink" href="https://libwpg.sourceforge.net/">libwpg</a>, <a class="ulink" href="https://sourceforge.net/p/libwps/wiki/Home/">libwps</a>, <a class="ulink" href="https://wiki.documentfoundation.org/DLP/Libraries/libzmf">libzmf</a>, <a class="ulink" href="https://lpsolve.sourceforge.net/">lp_solve</a>, <a class="ulink" href="https://gitlab.com/mdds/mdds">mdds</a>, <a class="ulink" href="https://sourceforge.net/projects/hunspell/files/MyThes/">MyThes</a>, <a class="ulink" href="https://odftoolkit.org/conformance/ODFValidator.md">odfvalidator</a>, <a class="ulink" href="https://code.google.com/archive/p/officeotron/">officeotron</a>, <a class="ulink" href="https://gitlab.com/orcus/orcus">Orcus</a>, <a class="ulink" href="https://github.com/mozilla/rhino">rhino</a>, and <a class="ulink" href="https://people.engr.tamu.edu/davis/suitesparse.md">suitesparse (colamd)</a>

There are many optional dependencies not listed here. They can be found in the <code class="filename">download.lst</code> file in the sources directory.

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/libreoffice">https://wiki.linuxfromscratch.org/blfs/wiki/libreoffice</a>
</div>

<div class="installation" lang="en">
## Installation of LibreOffice {#installation-of-libreoffice}

First, fix build failures introduced by the latest version of poppler:

```bash
sed -e '/, const GooString/ s/GooString *\*/std::string \&/' \
    -i sdext/source/pdfimport/xpdfwrapper/pdfioutdev_gpl.cxx \
       sdext/source/pdfimport/xpdfwrapper/pdfioutdev_gpl.hxx
```

First, fix a bug with linking to zlib, fix a bug which would cause an install failure, and prevent compression of man pages:

```bash
sed -i '/icuuc \\/a zlib\\'           writerperfect/Library_wpftdraw.mk &&
sed -i "/distro-install-file-lists/d" Makefile.in                       &&
sed -e "/gzip -f/d"   \
    -e "s|.1.gz|.1|g" \
    -i bin/distro-install-desktop-integration
```

If you have downloaded the dictionaries, help and translations tarballs, create symlinks to them from the source directory so they won't get downloaded again:

```bash
install -dm755 external/tarballs &&
ln -sv ../../../libreoffice-dictionaries-26.2.2.2.tar.xz external/tarballs/ &&
ln -sv ../../../libreoffice-help-26.2.2.2.tar.xz         external/tarballs/ &&
ln -sv ../../../libreoffice-translations-26.2.2.2.tar.xz external/tarballs/
```

The instructions in the package unpack some tarballs into a location it cannot find later. Create some symlinks to help the build system out:

```bash
ln -sv src/libreoffice-help-26.2.2.2/helpcontent2/ &&
ln -sv src/libreoffice-dictionaries-26.2.2.2/dictionaries/ &&
ln -sv src/libreoffice-translations-26.2.2.2/translations/
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

During the build process, some packages will be downloaded (including the ones listed as recommended and optional dependencies) if they are not present on the system. Because of this, build time may vary from the published time more than usual.
</div>

Due to the large size of the package, you may prefer to install it in <code class="filename">/opt</code>, instead of <code class="filename">/usr</code>. Depending on your choice, replace *`<PREFIX>`* by <code class="filename">/usr</code> or by <code class="filename">/opt/libreoffice-26.2.2.2</code>:

```bash
export LO_PREFIX=<PREFIX>
```

Locales "fr" and "en-GB", you will find below, are just examples; you should change them to suit your needs - you might want to read the "Command Explanations", further below, before proceeding.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you set the ACLOCAL environment variable to support installing Xorg in /opt, you will need to unset it for this package.
</div>

If you are building on a 32 bit machine, <code class="envar">CFLAGS</code> is set to <span class="command"><strong>-Os</strong></span>, which breaks the build. Prevent this by issuing:

```bash
case $(uname -m) in
   i?86) sed /-Os/d -i solenv/gbuild/platform/LINUX_INTEL_GCC.mk ;;
esac
```

Prepare <span class="application">LibreOffice</span> for compilation by running the following commands:

```bash
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

```bash
make build
```

Now, as the <code class="systemitem">root</code> user:

```bash
make distro-pack-install
```

If installed in <code class="filename">/opt/libreoffice-26.2.2.2</code> some additional steps are necessary. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
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

If you have installed <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, and you wish to update the MIME database, issue, as the <code class="systemitem">root</code> user:

```bash
update-desktop-database
```

The suite and main modules can be started from the menu. From a terminal, the suite can be started with the <span class="command"><strong>libreoffice</strong></span> command and the modules with the <span class="command"><strong>libreoffice --<em>`<module>`</strong></em></span> command, respectively, where *`<module>`* is one of base, calc, draw, impress, math, web, or writer. Modules cannot be started using their shell starting script names (see "Installed Programs", below), if LO_PREFIX is other than <code class="filename">/usr</code>, unless the <code class="filename">$LO_PREFIX/bin</code> directory is appended to the PATH.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-vendor=BLFS`*: This switch sets BLFS as the vendor which is mentioned when you click "About" from the Help menu on the toolbar.

*`--with-lang='fr en-GB'`*: This switch sets what languages to support. To list several languages, separate them with a space. For all languages, use <code class="option">--with-lang=ALL</code>. Note that the translations file is not needed and won't be downloaded if using only en-US as a language.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

For a list of the available languages, look in <code class="filename">solenv/inc/langlist.mk</code>.
</div>

*`--with-help=html`*: Without this switch, the help files are not built.

*`--with-jdk-home=/opt/jdk`*: This parameter will silence a warning that the configure script attempted to find JAVA_HOME automatically (even though that is passed in the environment). Omit this if you disabled java.

*`--with-myspell-dicts`*: This switch adds myspell dictionaries to the <span class="application">LibreOffice</span> installation set.

*`--with-system-boost`*: This switch enables using system boost. From time to time, recent versions of boost break the build of libreoffice. In this case, it is possible to use the bundled copy of boost by removing this flag.

*`--disable-dconf`*: This switch disables compiling <span class="application">LibreOffice</span> with the <span class="application">GNOME DConf</span> configuration system support.

*`--without-junit`*: This switch disables the tests for the deprecated HSQLDB driver which is written in Java.

*`--without-system-dicts`*: This switch disables the use of dictionaries from system paths so that the ones installed by this package are used.

*`--disable-odk`*: This switch disables installing the office development kit. Remove if you want to develop a <span class="application">LibreOffice</span> based application.

*`--disable-mariadb-sdbc`*: This switch disables the MariaDB SDBC connector for Libreoffice Base. Leaving it enabled results in a build failure because of a problem linking to <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>.

*`--enable-release-build=yes`*: This switch enables a Release Build. <span class="application">LibreOffice</span> can be built as a Release Build or as a Developer Build, because their default installation paths and user profile paths are different. Developer Build displays the words "Dev" and "Beta" in several places (e.g, menu and splash screen).

*`--enable-python=system`*: This switch tells <span class="application">LibreOffice</span> to use the system installed <span class="application">Python 3</span> instead of the bundled one.

*`--with-system-icu`*: This switch tells the build system to use the system installed version of ICU.

*`--with-system-*`*: These switches prevent <span class="application">LibreOffice</span> from trying to compile its own versions of these dependencies. If you've not installed some of the dependencies, remove the corresponding switches.

<span class="command"><strong>make distro-pack-install</strong></span>: This does a normal install, but if you add a DESTDIR environment variable it will also install a lot of (text) gid_Module\_\* files in the DESTDIR, to help distributions which want to break the package into parts.

<code class="option">--with-parallelism=<count></code>: This switch tells <span class="application">LibreOffice</span> to use \<count\> CPU cores to compile in parallel. (Do not include literal angle brackets.) The default is to use all available cores on the system.

<code class="option">--disable-cups</code>: Use this switch if you don't need printing support.

<code class="option">--disable-dbus</code>: Use this switch if you've not installed D-Bus-1.8.0 or later. It also disables Bluetooth support and font install via PackageKit.

<code class="option">--disable-firebird-sdbc</code>: By default, the ability to connect to a <span class="application">firebird</span> database is enabled. Add this switch if you do not need that feature.

<code class="option">--disable-gstreamer-1-0</code>: Use this switch if you have not installed <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>.

<code class="option">--disable-postgresql-sdbc</code>: This switch disables compiling <span class="application">LibreOffice</span> with the ability to connect to a <span class="application">PostgreSQL</span> database. Use it if you have not installed <span class="application">PostgreSQL</span> and you do not want <span class="application">LibreOffice</span> to compile its bundled copy.

<code class="option">--disable-skia</code>: Use <a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> for rendering instead of skia.

<code class="option">--enable-lto</code>: This switch will enable Link Time Optimization, which results in slightly smaller libraries (about 40 MB). This is said to make <span class="application">LibreOffice</span> programs load faster (and possibly run faster, e.g. when recalculating a spreadsheet). On an 8-core machine with 16 GB of memory, the difference in compile times was minimal, but an extra 2 GB was used for the work files. On machines with fewer processors or a lack of memory, the compile might be much slower.

<code class="option">--without-java</code>: This switch disables <span class="application">Java</span> support in <span class="application">LibreOffice</span>. Java is needed for the deprecated HSQLDB driver, which allows reading databases created by other programs or in earlier versions of libreoffice <span class="application">base</span>. It is also needed for some optional user interface components.

<code class="option">--without-fonts</code>: <span class="application">LibreOffice</span> includes a number of third-party TrueType fonts. If you have already installed some or all of the same fonts, you may prefer to use the system versions.

<code class="option">--enable-evolution2</code>: Enables support for Evolution address books through Evolution Data Server. Note that Evolution Data Server must be installed for this feature to function.

<code class="option">--enable-qt6</code>: This switch enables support for integration with Qt6 and the Qt6 theming engine. If <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> is not installed in <code class="filename">/usr</code>, the include and library directories must be specified in the <code class="envar">QT6INC</code> and <code class="envar">QT6LIB</code> environment variables.

<code class="option">--enable-kf6</code>: This switch enables KDE/Plasma integration. If <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> and/or <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> are not installed in <code class="filename">/usr</code>, the include and library directories must be specified in <code class="envar">QT6INC</code>, <code class="envar">QT6LIB</code>, <code class="envar">KF6INC</code>, and <code class="envar">KF6LIB</code>, respectively. This includes a style plugin and KIO integration.

<code class="option">--with-system-abseil</code>: This switch enables using a system version of the Abseil C++ libraries instead of the bundled copy. Add this switch if <a class="xref" href="../general/abseil-cpp.md" title="Abseil-cpp-20260107.1">Abseil-cpp-20260107.1</a> is installed and you want to use it instead of the bundled copy.

<code class="option">--with-system-zxing</code>: This switch enables using a system version of zxing-cpp instead of the bundled copy. Add this switch if <a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a> is installed and you want to use it instead of the bundled copy.

<code class="option">--enable-gtk4</code>: This switch enables integration with GTK-4, including the usage of a GTK-4 file browsing dialog and themes.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">libreoffice, lobase, localc, lodraw, loffice, lofromtemplate, loimpress, lomath, loweb, lowriter, soffice and unopkg; several programs under \$LO_PREFIX/lib/libreoffice/program</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">several libraries under \$LO_PREFIX/lib/libreoffice/program</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$LO_PREFIX/lib/libreoffice</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------- ---------------------------------------------------------------------------------------
  <a id="libreoffice-suite"></a><span class="command"><span class="term"><strong>libreoffice (or soffice)</strong></span></span>   is the main libreofice suite (symlink to \$LO_PREFIX/lib/libreoffice/program/soffice)
  <a id="lobase"></a><span class="command"><span class="term"><strong>lobase</strong></span></span>                                is the database manager module shell starting script
  <a id="localc"></a><span class="command"><span class="term"><strong>localc</strong></span></span>                                is the spreadsheet module shell starting script
  <a id="lodraw"></a><span class="command"><span class="term"><strong>lodraw</strong></span></span>                                is the vector graphics editor and diagramming tool module shell starting script
  <a id="loimpress"></a><span class="command"><span class="term"><strong>loimpress</strong></span></span>                          is the (PowerPoint) presentations editor and displayer module shell starting script
  <a id="lomath"></a><span class="command"><span class="term"><strong>lomath</strong></span></span>                                is the mathematical formula editor module shell starting script
  <a id="loweb"></a><span class="command"><span class="term"><strong>loweb</strong></span></span>                                  is the HTML editor module shell starting script
  <a id="lowriter"></a><span class="command"><span class="term"><strong>lowriter</strong></span></span>                            is the word processor module shell starting script
  <a id="unopkg"></a><span class="command"><span class="term"><strong>unopkg</strong></span></span>                                is a tool to manage <span class="application">LibreOffice</span> extensions from the command line
  ------------------------------------------------------------------------- ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnumeric.md "Gnumeric-1.12.61")

    Gnumeric-1.12.61

-   [Next](graphweb.md "Graphical Web Browsers")

    Graphical Web Browsers

-   [Up](office.md "Chapter 39. Office Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
