::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](highlight.md "Highlight-4.20"){accesskey="p"}

    Highlight-4.20

-   [Next](imagemagick.md "ImageMagick-7.1.2-13"){accesskey="n"}

    ImageMagick-7.1.2-13

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ibus}ibus-1.5.34 {#ibus-1.5.34 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to ibus {#introduction-to-ibus .sect2}

[ibus]{.application} is an Intelligent Input Bus. It is a new input framework for the Linux OS. It provides a fully featured and user friendly input method user interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ibus/ibus/archive/1.5.34/ibus-1.5.34.tar.gz](https://github.com/ibus/ibus/archive/1.5.34/ibus-1.5.34.tar.gz){.ulink}

-   Download MD5 sum: 7504f9c694d12e3cfe1e9e358f84c21f

-   Download size: 1.8 MB

-   Estimated disk space required: 116 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; add 1.4 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Unicode Character Database: [https://www.unicode.org/Public/17.0.0/ucd/UCD.zip](https://www.unicode.org/Public/17.0.0/ucd/UCD.zip){.ulink}
:::

### ibus Dependencies

#### Required

[ISO Codes-4.20.1](iso-codes.md "ISO Codes-4.20.1"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref} (for extracting the Unicode Character Database), and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Recommended

[DConf-0.49.0](../gnome/dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, and [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}

#### Optional

[gnome-desktop-44.5](../gnome/gnome-desktop.md "gnome-desktop-44.5"){.xref} (for one test), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for generating API documentation), [libxkbcommon-1.13.2](libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for [**ibus-setup**]{.command}), [Wayland-1.25.0](wayland.md "Wayland-1.25.0"){.xref} (to build the Wayland support programs), [EmojiOne](https://www.joypixels.com/){.ulink}, and [libdbusmenu](https://github.com/AyatanaIndicators/libdbusmenu){.ulink}
::::::

::: {.installation lang="en"}
## Installation of ibus {#installation-of-ibus .sect2}

First, install the Unicode Character Database as the `root`{.systemitem} user:

``` root
mkdir -p               /usr/share/unicode/ucd &&
unzip -o ../UCD.zip -d /usr/share/unicode/ucd
```

Fix an issue with deprecated schema entries:

``` userinput
sed -e 's@/desktop/ibus@/org/freedesktop/ibus@g' \
    -i data/dconf/org.freedesktop.ibus.gschema.xml
```

If [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} is not installed, remove the references to it:

``` userinput
if ! [ -e /usr/bin/gtkdocize ]; then
  sed '/docs/d;/GTK_DOC/d' -i Makefile.am configure.ac
fi
```

Install [ibus]{.application} by running the following commands:

``` userinput
SAVE_DIST_FILES=1 NOCONFIGURE=1 ./autogen.sh &&

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-python2      \
            --disable-appindicator \
            --disable-gtk2         \
            --disable-emoji-dict   &&
make
```

To test the results, issue: [**sed 's/python\$/&3/' -i engine/test-gnome.py && make -k check**]{.command}. The test named ibus-compose fails because it uses some locales not installed in LFS. The test named ibus-keypress requires `CONFIG_INPUT_UINPUT`{.literal} enabled in the kernel configuration and it would fail otherwise. The xkb-latin-layouts test is also known to fail on some systems.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-appindicator`*: This switch disables use of libdbusmenu. Omit if you installed the optional dependency.

*`--disable-emoji-dict`*: This switch disables the use of emoticon dictionaries. Omit if you installed the optional package.

*`--disable-gtk2`*: This switch removes the dependency on [GTK+-2]{.application}.

`--disable-gtk4`{.option}: This switch disables building the [GTK 4]{.application} immodule. Use it if you don't want to install [GTK 4]{.application}.

`--enable-wayland`{.option}: This switch enables building the [Wayland]{.application} support programs. It's automatically enabled if both [libxkbcommon-1.13.2](libxkbcommon.md "libxkbcommon-1.13.2"){.xref} and [Wayland-1.25.0](wayland.md "Wayland-1.25.0"){.xref} are installed.

`NOCONFIGURE=1`{.envar}: Prevent [**autogen.sh**]{.command} from running the generated [**configure**]{.command} script. We'll run the script manually instead of relying on [**autogen.sh**]{.command} to run it, because [**autogen.sh**]{.command} would set `-fsanitize=address -fsanitize=leak`{.option} in `CFLAGS`{.envar} running [**configure**]{.command}, but those compiler options are not suitable for productive use and they may also cause a build failure.

`SAVE_DIST_FILES=1`{.envar}: This environment variable makes the [**autogen.sh**]{.command} script save some pre-generated header files instead of overwriting them when it is run. This prevents build failures when generating `ibusemojigen.h`{.filename}.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::: {.configuration lang="en"}
## Configuring Ibus {#configuring-ibus .sect2}

If GTK+-3 is installed and `--disable-gtk3`{.option} is not used, the ibus IM module for GTK+-3 will be installed. As the `root`{.systemitem} user, update a cache file of GTK+-3 so the GTK-based applications can find the newly installed IM module and use ibus as an input method:

``` userinput
gtk-query-immodules-3.0 --update-cache
```

The command above updates the cache file for GTK+-3. GTK-4 does not require a cache file for IM modules.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ibus, ibus-daemon, and ibus-setup]{.segbody}
:::

::: seg
**Installed Library:** [libibus-1.0.so and im-ibus.so ([GTK+ Immodule]{.application})]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/dconf/db/ibus.d, /usr/include/ibus-1.0, /usr/share/gtk-doc/html/ibus, and /usr/share/ibus]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------
  []{#ibus-daemon}[[**ibus-daemon**]{.command}]{.term}   is the Intelligent Input Bus Daemon
  []{#ibus-setup}[[**ibus-setup**]{.command}]{.term}     is the [GTK+]{.application} program used to configure the [**ibus-daemon**]{.command}
  []{#libibus-1.0}[`libibus-1.0.so`{.filename}]{.term}   contains the [ibus]{.application} API functions
  ------------------------------------------------------ ---------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](highlight.md "Highlight-4.20"){accesskey="p"}

    Highlight-4.20

-   [Next](imagemagick.md "ImageMagick-7.1.2-13"){accesskey="n"}

    ImageMagick-7.1.2-13

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
