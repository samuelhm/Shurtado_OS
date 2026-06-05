<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](installing.md "Graphical Environments")

    Graphical Environments

-   [Next](util-macros.md "util-macros-1.20.2")

    util-macros-1.20.2

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Introduction to Xorg-7 {#introduction-to-xorg-7}

<div class="sect1" lang="en">
<span class="application">Xorg</span> is a freely redistributable, open-source implementation of the <span class="application">X</span> Window System. This system provides a client/server interface between display hardware (the mouse, keyboard, and video displays) and the desktop environment, while also providing both the windowing infrastructure and a standardized application interface (API).

### Xorg Download and Installation Instructions

Xorg-7.0 introduced a completely auto-tooled, modular build system. With the new modular build system, it is no longer possible to download the entire package in a single file. In fact, there will be well over 100 packages that need to be fetched from the download location. To assist with such a large task, installing <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a> is strongly recommended for downloading the needed files. A complete <span class="application">wget</span> file list is provided for each page that includes multiple packages.

Given the number of packages available, deciding which packages you need to install for your particular setup may seem a bit overwhelming at first. Take a look at <a class="ulink" href="https://wiki.x.org/wiki/ModuleDescriptions">this page</a> and <a class="ulink" href="https://lists.x.org/archives/xorg-modular/2005-November/000801.md">this thread</a> to get an idea of what you will need. If you are unsure, you should install all packages at the cost of extra disk space.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Even if you intend to download only the necessary packages, you should download the wget file lists. The list of files are ordered by dependency, and the package versions listed in the files are known to work well with each other. Further, the wget file lists contain comments for specific packages that are deprecated or are not recommended to install. Newer packages are likely intended for the next release of <span class="application">Xorg</span> and have already proved to be incompatible with current versions of software installed in BLFS. The installed size of <span class="application">Xorg</span> can be reduced considerably by installing only the packages that you will need and use, however, the BLFS book cannot account for all dependencies and build options for the individual <span class="application">Xorg</span> packages. The instructions assume that all packages have been built.
</div>

Additionally, because of the large number of repetitive commands, you are encouraged to partially automate the build. Instructions have been given that utilize the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package. It is recommended that you use the *`:NOPASSWD`* configuration option for the user that will be building the xorg packages.

<div class="sect2" lang="en">
## Setting up the Xorg Build Environment {#setting-up-the-xorg-build-environment}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The following instructions assume that the shell startup files have been set up as described in <a class="xref" href="../postlfs/profile.md" title="The Bash Shell Startup Files">The Bash Shell Startup Files</a>.
</div>

As with previous releases of the X Window System, it may be desirable to install <span class="application">Xorg</span> into an alternate prefix. This is no longer common practice among Linux distributions. The common installation prefix for <span class="application">Xorg</span> on Linux is <code class="filename">/usr</code>. There is no standard alternate prefix, nor is there any exception in the current revision of the Filesystem Hierarchy Standard for Release 7 of the X Window System. Alan Coopersmith of Sun Microsystems, once stated "At Sun, we were using <code class="filename">/usr/X11</code> and plan to stick with it." Only the <code class="filename">/opt/*</code> prefix or the <code class="filename">/usr</code> prefix adhere to the current FHS guidelines.

The BLFS editors recommend using the <code class="filename">/usr</code> prefix.

Choose your installation prefix, and set the <code class="envar">XORG_PREFIX</code> variable with the following command:

```bash
export XORG_PREFIX="<PREFIX>"
```

Throughout these instructions, you will use the following <span class="command"><strong>configure</strong></span> switches for all of the packages. Create the <code class="envar">XORG_CONFIG</code> variable to use for this parameter substitution:

```bash
export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

We will use <code class="envar">$XORG_CONFIG</code> in the instructions for many packages belonging to or related to Xorg. These instructions won't work properly with the default behavior of <a class="xref" href="../postlfs/zsh.md" title="zsh-5.9.1">zsh-5.9.1</a>. So if you are using <a class="xref" href="../postlfs/zsh.md" title="zsh-5.9.1">zsh-5.9.1</a> as the interactive shell and building a package for which the instruction uses this variable, make <a class="xref" href="../postlfs/zsh.md" title="zsh-5.9.1">zsh-5.9.1</a> behavior expanding <code class="envar">$XORG_CONFIG</code> same as bash:

```bash
set -o shwordsplit
```

If you want to make this setting persistent, add this command into the zsh startup file.
</div>

Create an <code class="filename">/etc/profile.d/xorg.sh</code> configuration file containing these variables as the <code class="systemitem">root</code> user:

```bash
cat > /etc/profile.d/xorg.sh << EOF
XORG_PREFIX="$XORG_PREFIX"
XORG_CONFIG="--prefix=\$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static"
export XORG_PREFIX XORG_CONFIG
EOF
chmod 644 /etc/profile.d/xorg.sh
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There is some confusion about the above 'here' document. The backslash in front of the dollar sign is correct. Bash will remove it when creating /etc/profile.d/xorg.sh. However, if you are creating the file with an editor, a copy and paste operation will not remove the backslash. It must then be removed manually.
</div>

If you've installed <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a>, ensure that <code class="envar">XORG_PREFIX</code> and <code class="envar">XORG_CONFIG</code> are available in the <span class="application">sudo</span> environment. As the <code class="systemitem">root</code> user, run the following command:

```bash
cat > /etc/sudoers.d/xorg << EOF
Defaults env_keep += XORG_PREFIX
Defaults env_keep += XORG_CONFIG
EOF
```

## If you are not using the standard Xorg prefix...

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you've decided to use the standard <code class="filename">/usr</code> prefix, you must omit the remainder of this page and continue at <a class="xref" href="util-macros.md" title="util-macros-1.20.2">util-macros-1.20.2</a>.
</div>

If you've decided to <span class="emphasis"><em>not</em></span> use the standard prefix, be sure to add <code class="filename">$XORG_PREFIX/bin</code> to your <code class="envar">PATH</code> environment variable, and <code class="filename">$XORG_PREFIX/lib/pkgconfig</code> and <code class="filename">$XORG_PREFIX/share/pkgconfig</code> to your <code class="envar">PKG_CONFIG_PATH</code> variable. It is also helpful to specify additional search paths for <span class="command"><strong>gcc</strong></span> and an include directory for the <span class="command"><strong>aclocal</strong></span> program. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/profile.d/xorg.sh << "EOF"

pathappend $XORG_PREFIX/bin             PATH
pathappend $XORG_PREFIX/lib/pkgconfig   PKG_CONFIG_PATH
pathappend $XORG_PREFIX/share/pkgconfig PKG_CONFIG_PATH

pathappend $XORG_PREFIX/lib             LIBRARY_PATH
pathappend $XORG_PREFIX/include         C_INCLUDE_PATH
pathappend $XORG_PREFIX/include         CPLUS_INCLUDE_PATH

ACLOCAL="aclocal -I $XORG_PREFIX/share/aclocal"

export PATH PKG_CONFIG_PATH ACLOCAL LIBRARY_PATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH
EOF
```

The script above needs to be activated. Normally it will be automatic at login, but to activate it now, as a regular user, run:

```bash
source /etc/profile.d/xorg.sh
```

You should also add <code class="filename">$XORG_PREFIX/lib</code> to the <code class="filename">/etc/ld.so.conf</code> file. Again, as the <code class="systemitem">root</code> user, issue the following command:

```bash
echo "$XORG_PREFIX/lib" >> /etc/ld.so.conf
```

You should also modify <code class="filename">/etc/man_db.conf</code>, adding appropriate MANDATORY_MANPATH, MANPATH_MAP, and MANDB_MAP entries following the examples for <code class="filename">/usr/X11R6</code>. Issue the following command as the <code class="systemitem">root</code> user:

```bash
sed -e "s@X11R6/man@X11R6/share/man@g" \
    -e "s@/usr/X11R6@$XORG_PREFIX@g"   \
    -i /etc/man_db.conf
```

Some applications look for shared files in <code class="filename">/usr/share/X11</code>. Create a symbolic link to the proper location as the <code class="systemitem">root</code> user:

```bash
ln -svf $XORG_PREFIX/share/X11 /usr/share/X11
```

If building KDE, some cmake files look for Xorg in places other than \$XORG_PREFIX. Allow cmake to find Xorg with:

```bash
ln -svf $XORG_PREFIX /usr/X11R6
```
</div>
</div>

<div class="navfooter">
-   [Prev](installing.md "Graphical Environments")

    Graphical Environments

-   [Next](util-macros.md "util-macros-1.20.2")

    util-macros-1.20.2

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
