<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcursor-themes.md "xcursor-themes-1.0.7")

    xcursor-themes-1.0.7

-   [Next](xkeyboard-config.md "XKeyboardConfig-2.47")

    XKeyboardConfig-2.47

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xorg Fonts {#xorg-fonts}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xorg Fonts {#introduction-to-xorg-fonts}

The <span class="application">Xorg</span> font packages provide some scalable fonts and supporting packages for <span class="application">Xorg</span> applications. Many people will want to install other TTF or OTF fonts in addition to, or instead of, these. Some are listed at <a class="xref" href="TTF-and-OTF-fonts.md" title="TTF and OTF fonts">the section called “TTF and OTF fonts”</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/font/">https://www.x.org/pub/individual/font/</a>

-   Download size: 3.0 MB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.1 SBU
</div>

### Xorg Fonts Dependencies

#### Required

<a class="xref" href="xcursor-themes.md" title="xcursor-themes-1.0.7">xcursor-themes-1.0.7</a>
</div>

<div class="sect2" lang="en">
## Downloading Xorg Fonts {#downloading-xorg-fonts}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

```bash
cat > font-7.md5 << "EOF"
42ea8cc91549e43e9251ccbd664e7864  font-util-1.4.2.tar.xz
a56b1a7f2c14173f71f010225fa131f1  encodings-1.1.0.tar.xz
dd1a744b97eb6d388d4e78b17011193e  font-alias-1.0.6.tar.xz
546d17feab30d4e3abcf332b454f58ed  font-adobe-utopia-type1-1.0.5.tar.xz
063bfa1456c8a68208bf96a33f472bb1  font-bh-ttf-1.0.4.tar.xz
51a17c981275439b85e15430a3d711ee  font-bh-type1-1.0.4.tar.xz
00f64a84b6c9886040241e081347a853  font-ibm-type1-1.0.4.tar.xz
fe972eaf13176fa9aa7e74a12ecc801a  font-misc-ethiopic-1.0.5.tar.xz
3b47fed2c032af3a32aad9acc1d25150  font-xfree86-type1-1.0.5.tar.xz
EOF
```

To download the needed files using <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, use the following commands:

```bash
mkdir font &&
cd font &&
grep -v '^#' ../font-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/font/ &&
md5sum -c ../font-7.md5
```
</div>

<div class="installation" lang="en">
## Installation of Xorg Fonts {#installation-of-xorg-fonts}

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

First, start a subshell that will exit on error:

```bash
bash -e
```

Install all of the packages by running the following commands:

```bash
for package in $(grep -v '^#' ../font-7.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
    ./configure $XORG_CONFIG
    make
    as_root make install
  popd
  as_root rm -rf $packagedir
done
```

Finally, exit the shell that was started earlier:

```bash
exit
```

When all of the fonts have been installed, the system must be configured so that <span class="application">Fontconfig</span> can find the TrueType fonts. Since the fonts are outside of the default search path of several packages <span class="bold"><strong>if <code class="envar">XORG_PREFIX</code> is not <code class="filename">/usr</code></strong></span>, make symlinks to the <span class="application">Xorg</span> TrueType font directories in <code class="filename">/usr/share/fonts</code> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/fonts                               &&
ln -svfn $XORG_PREFIX/share/fonts/X11/OTF /usr/share/fonts/X11-OTF &&
ln -svfn $XORG_PREFIX/share/fonts/X11/TTF /usr/share/fonts/X11-TTF
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bdftruncate and ucs2any</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/share/fonts</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------
  <a id="bdftruncate-x7"></a><span class="command"><span class="term"><strong>bdftruncate</strong></span></span>   generates a truncated BDF font from an ISO 10646-1 encoded BDF font
  <a id="ucs2any-x7"></a><span class="command"><span class="term"><strong>ucs2any</strong></span></span>           generates BDF fonts in any encoding from an ISO 10646-1 encoded BDF font
  --------------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xcursor-themes.md "xcursor-themes-1.0.7")

    xcursor-themes-1.0.7

-   [Next](xkeyboard-config.md "XKeyboardConfig-2.47")

    XKeyboardConfig-2.47

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
