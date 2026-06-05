::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcursor-themes.md "xcursor-themes-1.0.7"){accesskey="p"}

    xcursor-themes-1.0.7

-   [Next](xkeyboard-config.md "XKeyboardConfig-2.47"){accesskey="n"}

    XKeyboardConfig-2.47

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg7-font}Xorg Fonts {#xorg-fonts .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xorg Fonts {#introduction-to-xorg-fonts .sect2}

The [Xorg]{.application} font packages provide some scalable fonts and supporting packages for [Xorg]{.application} applications. Many people will want to install other TTF or OTF fonts in addition to, or instead of, these. Some are listed at [the section called “TTF and OTF fonts”](TTF-and-OTF-fonts.md "TTF and OTF fonts"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/font/](https://www.x.org/pub/individual/font/){.ulink}

-   Download size: 3.0 MB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.1 SBU
:::

### Xorg Fonts Dependencies

#### Required

[xcursor-themes-1.0.7](xcursor-themes.md "xcursor-themes-1.0.7"){.xref}
:::::

::: {.sect2 lang="en"}
## Downloading Xorg Fonts {#downloading-xorg-fonts .sect2}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

``` userinput
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

To download the needed files using [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, use the following commands:

``` userinput
mkdir font &&
cd font &&
grep -v '^#' ../font-7.md5 | awk '{print $2}' | wget -i- -c \
    -B https://www.x.org/pub/individual/font/ &&
md5sum -c ../font-7.md5
```
:::

::::: {.installation lang="en"}
## Installation of Xorg Fonts {#installation-of-xorg-fonts .sect2}

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

::: orderedlist
1.  Run the entire script as the root user (not recommended).

2.  Use the [**sudo**]{.command} command from the [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} package.

3.  Use [**su -c "command arguments"**]{.command} (quotes required) which will ask for the root password for every iteration of the loop.
:::

One way to handle this situation is to create a short [**bash**]{.command} function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

``` userinput
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
::::

First, start a subshell that will exit on error:

``` userinput
bash -e
```

Install all of the packages by running the following commands:

``` userinput
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

``` userinput
exit
```

When all of the fonts have been installed, the system must be configured so that [Fontconfig]{.application} can find the TrueType fonts. Since the fonts are outside of the default search path of several packages [**if `XORG_PREFIX`{.envar} is not `/usr`{.filename}**]{.bold}, make symlinks to the [Xorg]{.application} TrueType font directories in `/usr/share/fonts`{.filename} by running the following commands as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/fonts                               &&
ln -svfn $XORG_PREFIX/share/fonts/X11/OTF /usr/share/fonts/X11-OTF &&
ln -svfn $XORG_PREFIX/share/fonts/X11/TTF /usr/share/fonts/X11-TTF
```
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bdftruncate and ucs2any]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [`$XORG_PREFIX`{.envar}/share/fonts]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------
  []{#bdftruncate-x7}[[**bdftruncate**]{.command}]{.term}   generates a truncated BDF font from an ISO 10646-1 encoded BDF font
  []{#ucs2any-x7}[[**ucs2any**]{.command}]{.term}           generates BDF fonts in any encoding from an ISO 10646-1 encoded BDF font
  --------------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xcursor-themes.md "xcursor-themes-1.0.7"){accesskey="p"}

    xcursor-themes-1.0.7

-   [Next](xkeyboard-config.md "XKeyboardConfig-2.47"){accesskey="n"}

    XKeyboardConfig-2.47

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
