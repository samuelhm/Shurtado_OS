::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-util.md "xcb-util-0.4.1"){accesskey="p"}

    xcb-util-0.4.1

-   [Next](mesa.md "Mesa-26.0.7"){accesskey="n"}

    Mesa-26.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xcb-utilities}XCB Utilities {#xcb-utilities .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to XCB Utilities {#introduction-to-xcb-utilities .sect2}

The XCB utilities provide extensions that developers can use when making X Window software. [xcb-util-0.4.1](xcb-util.md "xcb-util-0.4.1"){.xref} was just installed but these utilities offer even more extensions that X Window software may depend on.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://xorg.freedesktop.org/archive/individual/lib/](https://xorg.freedesktop.org/archive/individual/lib/){.ulink}

-   Download size: 1.1 MB

-   Estimated disk space required: 13.3 MB

-   Estimated build time: 0.1 SBU (ignoring the time to download)
:::

### XCB Utilities Dependencies

#### Required

[libxcb-1.17.0](libxcb.md "libxcb-1.17.0"){.xref} and [xcb-util-0.4.1](xcb-util.md "xcb-util-0.4.1"){.xref}
:::::

::: {.sect2 lang="en"}
## Downloading XCB Utilities {#downloading-xcb-utilities .sect2}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

``` userinput
cat > xcb-utils.md5 << "EOF"
a67bfac2eff696170259ef1f5ce1b611  xcb-util-image-0.4.1.tar.xz
fbdc05f86f72f287ed71b162f1a9725a  xcb-util-keysyms-0.4.1.tar.xz
193b890e2a89a53c31e2ece3afcbd55f  xcb-util-renderutil-0.3.10.tar.xz
581b3a092e3c0c1b4de6416d90b969c3  xcb-util-wm-0.4.2.tar.xz
e85bccd1993992be07232f8b80a814c8  xcb-util-cursor-0.1.6.tar.xz
EOF
```

To download the needed files using [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, use the following commands:

``` userinput
mkdir xcb-utils &&
cd    xcb-utils &&
grep -v '^#' ../xcb-utils.md5 | awk '{print $2}' | wget -i- -c \
     -B https://xorg.freedesktop.org/archive/individual/lib/ &&
md5sum -c ../xcb-utils.md5
```
:::

::::: {.installation lang="en"}
## Installation of XCB Utilities {#installation-of-xcb-utilities .sect2}

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
for package in $(grep -v '^#' ../xcb-utils.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
     ./configure $XORG_CONFIG
     make
     as_root make install
  popd
  rm -rf $packagedir
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libxcb-image.so, libxcb-keysyms.so, libxcb-render-util.so, libxcb-ewmh.so, libxcb-icccm.so, and libxcb-cursor.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------------------------
  []{#libxcb-image}[`libxcb-image.so`{.filename}]{.term}               is a port of Xlib's XImage and XShmImage functions
  []{#libxcb-keysyms}[`libxcb-keysyms.so`{.filename}]{.term}           provides the standard X key constants and API functions for conversion to/from keycodes
  []{#libxcb-render-util}[`libxcb-render-util.so`{.filename}]{.term}   provides convenience functions for the Render extension
  []{#libxcb-ewmh}[`libxcb-ewmh.so`{.filename}]{.term}                 provides the client and window-manager helpers for EWMH
  []{#libxcb-icccm}[`libxcb-icccm.so`{.filename}]{.term}               provides the client and window-manager helpers for ICCCM
  []{#libxcb-cursor}[`libxcb-cursor.so`{.filename}]{.term}             is a port of Xlib's libXcursor functions
  -------------------------------------------------------------------- -----------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xcb-util.md "xcb-util-0.4.1"){accesskey="p"}

    xcb-util-0.4.1

-   [Next](mesa.md "Mesa-26.0.7"){accesskey="n"}

    Mesa-26.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
