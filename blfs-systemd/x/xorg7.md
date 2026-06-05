::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](installing.md "Graphical Environments"){accesskey="p"}

    Graphical Environments

-   [Next](util-macros.md "util-macros-1.20.2"){accesskey="n"}

    util-macros-1.20.2

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg7}Introduction to Xorg-7 {#introduction-to-xorg-7 .sect1}

::::::::: {.sect1 lang="en"}
[Xorg]{.application} is a freely redistributable, open-source implementation of the [X]{.application} Window System. This system provides a client/server interface between display hardware (the mouse, keyboard, and video displays) and the desktop environment, while also providing both the windowing infrastructure and a standardized application interface (API).

### Xorg Download and Installation Instructions

Xorg-7.0 introduced a completely auto-tooled, modular build system. With the new modular build system, it is no longer possible to download the entire package in a single file. In fact, there will be well over 100 packages that need to be fetched from the download location. To assist with such a large task, installing [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref} is strongly recommended for downloading the needed files. A complete [wget]{.application} file list is provided for each page that includes multiple packages.

Given the number of packages available, deciding which packages you need to install for your particular setup may seem a bit overwhelming at first. Take a look at [this page](https://wiki.x.org/wiki/ModuleDescriptions){.ulink} and [this thread](https://lists.x.org/archives/xorg-modular/2005-November/000801.md){.ulink} to get an idea of what you will need. If you are unsure, you should install all packages at the cost of extra disk space.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Even if you intend to download only the necessary packages, you should download the wget file lists. The list of files are ordered by dependency, and the package versions listed in the files are known to work well with each other. Further, the wget file lists contain comments for specific packages that are deprecated or are not recommended to install. Newer packages are likely intended for the next release of [Xorg]{.application} and have already proved to be incompatible with current versions of software installed in BLFS. The installed size of [Xorg]{.application} can be reduced considerably by installing only the packages that you will need and use, however, the BLFS book cannot account for all dependencies and build options for the individual [Xorg]{.application} packages. The instructions assume that all packages have been built.
:::

Additionally, because of the large number of repetitive commands, you are encouraged to partially automate the build. Instructions have been given that utilize the [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} package. It is recommended that you use the *`:NOPASSWD`* configuration option for the user that will be building the xorg packages.

::::::: {.sect2 lang="en"}
## []{#xorg-env}Setting up the Xorg Build Environment {#setting-up-the-xorg-build-environment .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The following instructions assume that the shell startup files have been set up as described in [The Bash Shell Startup Files](../postlfs/profile.md "The Bash Shell Startup Files"){.xref}.
:::

As with previous releases of the X Window System, it may be desirable to install [Xorg]{.application} into an alternate prefix. This is no longer common practice among Linux distributions. The common installation prefix for [Xorg]{.application} on Linux is `/usr`{.filename}. There is no standard alternate prefix, nor is there any exception in the current revision of the Filesystem Hierarchy Standard for Release 7 of the X Window System. Alan Coopersmith of Sun Microsystems, once stated "At Sun, we were using `/usr/X11`{.filename} and plan to stick with it." Only the `/opt/*`{.filename} prefix or the `/usr`{.filename} prefix adhere to the current FHS guidelines.

The BLFS editors recommend using the `/usr`{.filename} prefix.

Choose your installation prefix, and set the `XORG_PREFIX`{.envar} variable with the following command:

``` userinput
export XORG_PREFIX="<PREFIX>"
```

Throughout these instructions, you will use the following [**configure**]{.command} switches for all of the packages. Create the `XORG_CONFIG`{.envar} variable to use for this parameter substitution:

``` userinput
export XORG_CONFIG="--prefix=$XORG_PREFIX --sysconfdir=/etc \
    --localstatedir=/var --disable-static"
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

We will use `$XORG_CONFIG`{.envar} in the instructions for many packages belonging to or related to Xorg. These instructions won't work properly with the default behavior of [zsh-5.9.1](../postlfs/zsh.md "zsh-5.9.1"){.xref}. So if you are using [zsh-5.9.1](../postlfs/zsh.md "zsh-5.9.1"){.xref} as the interactive shell and building a package for which the instruction uses this variable, make [zsh-5.9.1](../postlfs/zsh.md "zsh-5.9.1"){.xref} behavior expanding `$XORG_CONFIG`{.envar} same as bash:

``` userinput
set -o shwordsplit
```

If you want to make this setting persistent, add this command into the zsh startup file.
:::

Create an `/etc/profile.d/xorg.sh`{.filename} configuration file containing these variables as the `root`{.systemitem} user:

``` root
cat > /etc/profile.d/xorg.sh << EOF
XORG_PREFIX="$XORG_PREFIX"
XORG_CONFIG="--prefix=\$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static"
export XORG_PREFIX XORG_CONFIG
EOF
chmod 644 /etc/profile.d/xorg.sh
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There is some confusion about the above 'here' document. The backslash in front of the dollar sign is correct. Bash will remove it when creating /etc/profile.d/xorg.sh. However, if you are creating the file with an editor, a copy and paste operation will not remove the backslash. It must then be removed manually.
:::

If you've installed [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref}, ensure that `XORG_PREFIX`{.envar} and `XORG_CONFIG`{.envar} are available in the [sudo]{.application} environment. As the `root`{.systemitem} user, run the following command:

``` root
cat > /etc/sudoers.d/xorg << EOF
Defaults env_keep += XORG_PREFIX
Defaults env_keep += XORG_CONFIG
EOF
```

## If you are not using the standard Xorg prefix...

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you've decided to use the standard `/usr`{.filename} prefix, you must omit the remainder of this page and continue at [util-macros-1.20.2](util-macros.md "util-macros-1.20.2"){.xref}.
:::

If you've decided to [*not*]{.emphasis} use the standard prefix, be sure to add `$XORG_PREFIX/bin`{.filename} to your `PATH`{.envar} environment variable, and `$XORG_PREFIX/lib/pkgconfig`{.filename} and `$XORG_PREFIX/share/pkgconfig`{.filename} to your `PKG_CONFIG_PATH`{.envar} variable. It is also helpful to specify additional search paths for [**gcc**]{.command} and an include directory for the [**aclocal**]{.command} program. Issue the following commands as the `root`{.systemitem} user:

``` userinput
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

``` userinput
source /etc/profile.d/xorg.sh
```

You should also add `$XORG_PREFIX/lib`{.filename} to the `/etc/ld.so.conf`{.filename} file. Again, as the `root`{.systemitem} user, issue the following command:

``` userinput
echo "$XORG_PREFIX/lib" >> /etc/ld.so.conf
```

You should also modify `/etc/man_db.conf`{.filename}, adding appropriate MANDATORY_MANPATH, MANPATH_MAP, and MANDB_MAP entries following the examples for `/usr/X11R6`{.filename}. Issue the following command as the `root`{.systemitem} user:

``` userinput
sed -e "s@X11R6/man@X11R6/share/man@g" \
    -e "s@/usr/X11R6@$XORG_PREFIX@g"   \
    -i /etc/man_db.conf
```

Some applications look for shared files in `/usr/share/X11`{.filename}. Create a symbolic link to the proper location as the `root`{.systemitem} user:

``` userinput
ln -svf $XORG_PREFIX/share/X11 /usr/share/X11
```

If building KDE, some cmake files look for Xorg in places other than \$XORG_PREFIX. Allow cmake to find Xorg with:

``` userinput
ln -svf $XORG_PREFIX /usr/X11R6
```
:::::::
:::::::::

::: navfooter
-   [Prev](installing.md "Graphical Environments"){accesskey="p"}

    Graphical Environments

-   [Next](util-macros.md "util-macros-1.20.2"){accesskey="n"}

    util-macros-1.20.2

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
