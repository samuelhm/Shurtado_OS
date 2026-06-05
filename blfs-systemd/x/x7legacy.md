::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](TTF-and-OTF-fonts.md "TTF and OTF fonts"){accesskey="p"}

    TTF and OTF fonts

-   [Next](lib.md "Graphical Environment Libraries"){accesskey="n"}

    Graphical Environment Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg7-legacy}Xorg Legacy {#xorg-legacy .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Xorg Legacy {#introduction-to-xorg-legacy .sect2}

[Xorg]{.application}'s ancestor (X11R1, in 1987) at first only provided bitmap fonts, with a tool ([**bdftopcf**]{.command}) to assist in their installation. With the introduction of [xorg-server-1.19.0]{.application} and [libXfont2]{.application} many people will not need them. There are still a few old packages which might require, or benefit from, these deprecated fonts and so the following packages are shown here.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The font-adobe-100dpi package installs 100 dots per inch versions of Courier, Helvetica, New Century Schoolbook and Times fonts.

The remaining font packages here provide 75dpi versions of those fonts, and various miscellaneous fonts - mostly for legacy encodings. Those are primarily to silence warnings when testing Xorg. In previous versions of BLFS a lot more legacy fonts were installed.

Please consult the BLFS-7.10 systemd book at [https://www.linuxfromscratch.org/blfs/view/7.10-systemd/x/x7font.html](https://www.linuxfromscratch.org/blfs/view/7.10-systemd/x/x7font.md){.ulink} if you wish to install any of those other fonts.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/](https://www.x.org/pub/individual/){.ulink}

-   Download size: 4.2 MB

-   Estimated disk space required: 30 MB

-   Estimated build time: 0.3 SBU
:::

### Xorg Legacy Dependencies

#### Required

[Xorg Fonts](x7font.md "Xorg Fonts"){.xref}
::::::

::: {.sect2 lang="en"}
## Downloading Xorg Legacy {#downloading-xorg-legacy .sect2}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

``` userinput
cat > legacy.dat << "EOF"
e09b61567ab4a4d534119bba24eddfb1 util/ bdftopcf-1.1.1.tar.xz
20239f6f99ac586f10360b0759f73361 font/ font-adobe-100dpi-1.0.4.tar.xz
2dc044f693ee8e0836f718c2699628b9 font/ font-adobe-75dpi-1.0.4.tar.xz
2c939d5bd4609d8e284be9bef4b8b330 font/ font-jis-misc-1.0.4.tar.xz
6300bc99a1e45fbbe6075b3de728c27f font/ font-daewoo-misc-1.0.4.tar.xz
fe2c44307639062d07c6e9f75f4d6a13 font/ font-isas-misc-1.0.4.tar.xz
145128c4b5f7820c974c8c5b9f6ffe94 font/ font-misc-misc-1.1.3.tar.xz
EOF
```

To download the needed files using [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, use the following commands:

``` userinput
mkdir legacy &&
cd    legacy &&
grep -v '^#' ../legacy.dat | awk '{print $2$3}' | wget -i- -c \
     -B https://www.x.org/pub/individual/ &&
grep -v '^#' ../legacy.dat | awk '{print $1 " " $3}' > ../legacy.md5 &&
md5sum -c ../legacy.md5
```
:::

::::: {.installation lang="en"}
## Installation of Xorg Legacy {#installation-of-xorg-legacy .sect2}

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
for package in $(grep -v '^#' ../legacy.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
    ./configure $XORG_CONFIG
    make
    as_root make install
  popd
  rm -rf $packagedir
  as_root /sbin/ldconfig
done
```

Finally, exit the shell that was started earlier:

``` userinput
exit
```
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bdftopcf]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [`$XORG_PREFIX`{.envar}/share/fonts/100dpi, `$XORG_PREFIX`{.envar}/share/fonts/75dpi, `$XORG_PREFIX`{.envar}/share/fonts/misc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- --------------------------------------------------------------------------------
  []{#bdftopcf-x7}[[**bdftopcf**]{.command}]{.term}   converts an X font from Bitmap Distribution Format to Portable Compiled Format
  --------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](TTF-and-OTF-fonts.md "TTF and OTF fonts"){accesskey="p"}

    TTF and OTF fonts

-   [Next](lib.md "Graphical Environment Libraries"){accesskey="n"}

    Graphical Environment Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
