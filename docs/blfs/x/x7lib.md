<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libxcb.md "libxcb-1.17.0")

    libxcb-1.17.0

-   [Next](libxcvt.md "libxcvt-0.1.3")

    libxcvt-0.1.3

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xorg Libraries {#xorg-libraries}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xorg Libraries {#introduction-to-xorg-libraries}

The <span class="application">Xorg</span> libraries provide library routines that are used within all X Window applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/lib/">https://www.x.org/pub/individual/lib/</a>

-   Download size: 12 MB

-   Estimated disk space required: 274 MB (47 MB installed) - if source directories not deleted

-   Estimated build time: 1.8 SBU
</div>

### Xorg Libraries Dependencies

#### Required

<a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a> and <a class="xref" href="libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a>

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> with one or more of the following: <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a>, <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>, <a class="ulink" href="https://github.com/vapier/ncompress">ncompress</a> (for some tests), and <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a> (to generate additional PDF or text documentation for the libXfont package).

#### Recommended at runtime

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>
</div>

<div class="sect2" lang="en">
## Downloading Xorg Libraries {#downloading-xorg-libraries}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

```bash
cat > lib-7.md5 << "EOF"
6ad67d4858814ac24e618b8072900664  xtrans-1.6.0.tar.xz
b617a053d2003cc81309f4e13d01379c  libX11-1.8.13.tar.xz
ea8149187a26e9df6dbd94a60b3d8da0  libXext-1.3.7.tar.xz
c5cc0942ed39c49b8fcd47a427bd4305  libFS-1.0.10.tar.xz
d1ffde0a07709654b20bada3f9abdd16  libICE-1.1.2.tar.xz
3aeeea05091db1c69e6f768e0950a431  libSM-1.2.6.tar.xz
ec09c90a1cfd2c0630321d366a5e7203  libXScrnSaver-1.2.5.tar.xz
9acd189c68750b5028cf120e53c68009  libXt-1.3.1.tar.xz
1ef8065f0284e76c2238770365012ab2  libXmu-1.3.1.tar.xz
cdc7a83243dba674b1ea3c365a1deab1  libXpm-3.5.19.tar.xz
2a9793533224f92ddad256492265dd82  libXaw-1.0.16.tar.xz
baa39ada682dd524491a165bb0dfc708  libXfixes-6.0.2.tar.xz
132816d5efccb883bbc2bf45eb905770  libXcomposite-0.4.7.tar.xz
4c54dce455d96e3bdee90823b0869f89  libXrender-0.9.12.tar.xz
5ce55e952ec2d84d9817169d5fdb7865  libXcursor-1.2.3.tar.xz
72bb73f2a07f81784ad69a39d7df1da2  libXdamage-1.1.7.tar.xz
3cba344d6b351cf308114865afa0d91e  libfontenc-1.1.9.tar.xz
66e03e3405d923dfaf319d6f2b47e3da  libXfont2-2.0.7.tar.xz
d378be0fcbd1f689f9a132e0d642bc4b  libXft-2.3.9.tar.xz
2b1cde310bc361464df43276fb969adf  libXi-1.8.3.tar.xz
5f3f5754a40730d1518233a60ba5c48e  libXinerama-1.1.6.tar.xz
b550dfa388292a821aecdd52acecc94c  libXrandr-1.5.5.tar.xz
5014282a08b54ec0edfa73c5cf9ae2c1  libXres-1.2.3.tar.xz
b62dc44d8e63a67bb10230d54c44dcb7  libXtst-1.2.5.tar.xz
8a26503185afcb1bbd2c65e43f775a67  libXv-1.0.13.tar.xz
de4227c5722a8f5ca5748f3ef524aeee  libXvMC-1.0.15.tar.xz
543164f1239fbe92cc0a9128d8da88e9  libXxf86dga-1.1.7.tar.xz
bea9e3707fae6c3275769e771006fa0f  libXxf86vm-1.1.7.tar.xz
0c11ea502b531e59563a9aa7979146fc  libpciaccess-0.19.tar.xz
fa0faa5b6a8e726186c535d73712ccea  libxkbfile-1.2.0.tar.xz
9805be7e18f858bed9938542ed2905dc  libxshmfence-1.3.3.tar.xz
53b72ce969745f8d3e41175d6549ce0b  libXpresent-1.0.2.tar.xz
EOF
```

To download the needed files using <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, use the following commands:

```bash
mkdir lib &&
cd lib &&
grep -v '^#' ../lib-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/lib/ &&
md5sum -c ../lib-7.md5
```
</div>

<div class="installation" lang="en">
## Installation of Xorg Libraries {#installation-of-xorg-libraries}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

<div class="orderedlist">
1.  Run the entire script as the root user (not recommended).

2.  Use the <span class="command"><strong>sudo</strong></span> command from the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package.

3.  Use <span class="command"><strong>su -c "command arguments"</strong></span> (quotes required) which will ask for the root password for every iteration of the loop.
</div>

One way to handle this situation is to create a short <span class="command"><strong>bash</strong></span> function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

```bash
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
</div>

Some libraries come with a test suite. If you wish to execute them, either comment out the <span class="command"><strong>rm -rf ...</strong></span> below, so that, after all libraries are installed, you can come back to the corresponding directory and run <span class="command"><strong>make check</strong></span>, or do individual builds, running the tests for each of those distributed with working test suites. Alternatively, you can uncomment the line \#<span class="command"><strong>make check ...</strong></span>, and at the end, check the test results with:

```bash
grep -A9 summary *make_check.log
```

BLFS developers have confirmed that <span class="application">libX11</span>, <span class="application">libXt</span>, <span class="application">libXmu</span>, <span class="application">libXpm</span>, and <span class="application">libxshmfence</span> are distributed with working test suites.

First, start a subshell that will exit on error:

```bash
bash -e
```

Install all of the packages by running the following commands:

```bash
for package in $(grep -v '^#' ../lib-7.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  echo "Building $packagedir"

  tar -xf $package
  pushd $packagedir
  docdir="--docdir=$XORG_PREFIX/share/doc/$packagedir"

  do_build() { make; }
  do_test() { make check; }
  do_install() { as_root make install; }
  
  case $packagedir in
    libXfont2-[0-9]* )
      ./configure $XORG_CONFIG $docdir --disable-devel-docs
    ;;

    libXt-[0-9]* )
      ./configure $XORG_CONFIG $docdir \
                  --with-appdefaultdir=/etc/X11/app-defaults
    ;;

    libXpm-[0-9]* )
      ./configure $XORG_CONFIG $docdir --disable-open-zfile
    ;;
  
    libpciaccess* | libxkbfile* )
      meson setup --prefix=$XORG_PREFIX --buildtype=release build
      do_build()  { ninja -C build; }
      do_test() { ninja -C build test; }
      do_install() { as_root ninja -C build install; }
    ;;

    * )
      ./configure $XORG_CONFIG $docdir
    ;;
  esac

  do_build
  #do_test |& tee ../$packagedir-test.log
  do_install
  unset do_build do_test do_install

  popd
  rm -rf $packagedir
  as_root /sbin/ldconfig
done
```

Finally, exit the shell that was started earlier:

```bash
exit
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-open-zfile`*: Allow <span class="application">libXpm</span> to build without the optional <span class="command"><strong>compress</strong></span> command present.

*`--disable-devel-docs`*: Disable generation of text documentation in the libXfont2 package if <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> is installed without a text browser. Omit this parameter (or the entire <span class="command"><strong>case</strong></span> statement) if a text browser is installed.

<code class="option">--with-fop</code>: Use <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> to generate PDF documentation (only for the libXfont package).
</div>

<div class="configuration" lang="en">
## Configuration of Xorg Libraries {#configuration-of-xorg-libraries}

If you've chosen to install <span class="application">Xorg</span> into <code class="filename">/usr</code>, then no further configuration is necessary and you can skip the rest of this section. If you've opted for an alternate prefix, you should create two symlinks to satisfy the expected environment of several packages. Execute the following commands as the root user:

```bash
ln -sv $XORG_PREFIX/lib/X11 /usr/lib/X11 &&
ln -sv $XORG_PREFIX/include/X11 /usr/include/X11
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cxpm and sxpm</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfontenc.so, libFS.so, libICE.so, libpciaccess.so, libSM.so, libX11.so, libX11-xcb, libXaw6.so, libXaw7.so, libXaw.so, libXcomposite.so, libXcursor.so, libXdamage.so, libXext.so, libXfixes.so, libXfont2.so, libXft.so, libXinerama.so, libXi.so, libxkbfile.so, libXmu.so, libXmuu.so, libXpm.so, libXpresent.so, libXrandr.so, libXrender.so, libXRes.so, libxshmfence.so, libXss.so, libXt.so, libXtst.so, libXvMC.so, libXvMCW.so, libXv.so, libXxf86dga.so and libXxf86vm.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/include/X11/fonts, <code class="envar">$XORG_PREFIX</code>/include/X11/ICE, <code class="envar">$XORG_PREFIX</code>/include/X11/SM, <code class="envar">$XORG_PREFIX</code>/include/X11/Xmu, <code class="envar">$XORG_PREFIX</code>/include/X11/Xtrans, <code class="envar">$XORG_PREFIX</code>/share/doc/libFS, <code class="envar">$XORG_PREFIX</code>/share/doc/libICE-1.1.2, <code class="envar">$XORG_PREFIX</code>/share/doc/libSM-1.2.6, <code class="envar">$XORG_PREFIX</code>/share/doc/libX11-1.8.13, <code class="envar">$XORG_PREFIX</code>/share/doc/libXaw, <code class="envar">$XORG_PREFIX</code>/share/doc/libXext, <code class="envar">$XORG_PREFIX</code>/share/doc/libXi, <code class="envar">$XORG_PREFIX</code>/share/doc/libXmu-1.3.1, <code class="envar">$XORG_PREFIX</code>/share/doc/libXrender, <code class="envar">$XORG_PREFIX</code>/share/doc/libXt, <code class="envar">$XORG_PREFIX</code>/share/doc/libXtst, <code class="envar">$XORG_PREFIX</code>/share/doc/libXvMC, <code class="envar">$XORG_PREFIX</code>/share/doc/xtrans and <code class="envar">$XORG_PREFIX</code>/share/X11/locale</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------
  <a id="cxpm"></a><span class="command"><span class="term"><strong>cxpm</strong></span></span>                     checks the format of an XPM file
  <a id="sxpm"></a><span class="command"><span class="term"><strong>sxpm</strong></span></span>                     shows an XPM file and/or converts XPM 1 or 2 files to XPM 3
  <a id="libfontenc"></a><span class="term"><code class="filename">libfontenc.so</code></span>         is the X11 font encoding library
  <a id="libFS"></a><span class="term"><code class="filename">libFS.so</code></span>                   is the library interface to the X Font Server
  <a id="libICE"></a><span class="term"><code class="filename">libICE.so</code></span>                 is the X Inter Client Exchange Library
  <a id="libpciaccess"></a><span class="term"><code class="filename">libpciaccess.so</code></span>     is the generic PCI Access library for X
  <a id="libSM"></a><span class="term"><code class="filename">libSM.so</code></span>                   is the X Session Management Library
  <a id="libX11"></a><span class="term"><code class="filename">libX11.so</code></span>                 is the Xlib Library
  <a id="libXaw6"></a><span class="term"><code class="filename">libXaw6.so</code></span>               is the X Athena Widgets Library, version 6
  <a id="libXaw7"></a><span class="term"><code class="filename">libXaw7.so</code></span>               is the X Athena Widgets Library, version 7
  <a id="libXaw"></a><span class="term"><code class="filename">libXaw.so</code></span>                 are symbolic links to the current X Athena Widgets Library, version 7
  <a id="libXcomposite"></a><span class="term"><code class="filename">libXcomposite.so</code></span>   is the X Composite Library
  <a id="libXcursor"></a><span class="term"><code class="filename">libXcursor.so</code></span>         is the X Cursor management library
  <a id="libXdamage"></a><span class="term"><code class="filename">libXdamage.so</code></span>         is the X Damage Library
  <a id="libXext"></a><span class="term"><code class="filename">libXext.so</code></span>               is the Misc X Extension Library
  <a id="libXfixes"></a><span class="term"><code class="filename">libXfixes.so</code></span>           provides augmented versions of core protocol requests
  <a id="libXfont2"></a><span class="term"><code class="filename">libXfont2.so</code></span>           is the X font library
  <a id="libXft"></a><span class="term"><code class="filename">libXft.so</code></span>                 is the X FreeType interface library
  <a id="libXinerama"></a><span class="term"><code class="filename">libXinerama.so</code></span>       is the Xinerama Library
  <a id="libXi"></a><span class="term"><code class="filename">libXi.so</code></span>                   is the X Input Extension Library
  <a id="libxkbfile"></a><span class="term"><code class="filename">libxkbfile.so</code></span>         is the xkbfile Library
  <a id="libXmu"></a><span class="term"><code class="filename">libXmu.so</code></span>                 is the X interface library for miscellaneous utilities not part of the Xlib standard
  <a id="libXmuu"></a><span class="term"><code class="filename">libXmuu.so</code></span>               is the Mini Xmu Library
  <a id="libXpm"></a><span class="term"><code class="filename">libXpm.so</code></span>                 is the X Pixmap Library
  <a id="libXpresent"></a><span class="term"><code class="filename">libXpresent.so</code></span>       is the library interface to the X Present Extension
  <a id="libXrandr"></a><span class="term"><code class="filename">libXrandr.so</code></span>           is the X Resize, Rotate and Reflection extension library
  <a id="libXrender"></a><span class="term"><code class="filename">libXrender.so</code></span>         is the X Render Library
  <a id="libXRes"></a><span class="term"><code class="filename">libXRes.so</code></span>               is the X-Resource extension client library
  <a id="libxshmfence"></a><span class="term"><code class="filename">libxshmfence.so</code></span>     exposes an event API on top of Linux futexes
  <a id="libXss"></a><span class="term"><code class="filename">libXss.so</code></span>                 is the X11 Screen Saver extension client library
  <a id="libXt"></a><span class="term"><code class="filename">libXt.so</code></span>                   is the X Toolkit Library
  <a id="libXtst"></a><span class="term"><code class="filename">libXtst.so</code></span>               is the Xtst Library
  <a id="libXvMC"></a><span class="term"><code class="filename">libXvMC.so</code></span>               is the X-Video Motion Compensation Library
  <a id="libXvMCW"></a><span class="term"><code class="filename">libXvMCW.so</code></span>             is the XvMC Wrapper including the Nonstandard VLD extension
  <a id="libXv"></a><span class="term"><code class="filename">libXv.so</code></span>                   is the X Window System video extension library
  <a id="libXxf86dga"></a><span class="term"><code class="filename">libXxf86dga.so</code></span>       is the client library for the XFree86-DGA extension
  <a id="libXxf86vm"></a><span class="term"><code class="filename">libXxf86vm.so</code></span>         is the client library for the XFree86-VidMode X extension
  ---------------------------------------------------------- --------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxcb.md "libxcb-1.17.0")

    libxcb-1.17.0

-   [Next](libxcvt.md "libxcvt-0.1.3")

    libxcvt-0.1.3

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
