::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](ed.md "Ed-1.22.5"){accesskey="p"}

    Ed-1.22.5

-   [Next](joe.md "JOE-4.6"){accesskey="n"}

    JOE-4.6

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#emacs}Emacs-30.2 {#emacs-30.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Emacs {#introduction-to-emacs .sect2}

The [Emacs]{.application} package contains an extensible, customizable, self-documenting real-time display editor.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/emacs/emacs-30.2.tar.xz](https://ftpmirror.gnu.org/emacs/emacs-30.2.tar.xz){.ulink}

-   Download MD5 sum: 0adba4843ac864ba8c3c9b2a7deea176

-   Download size: 53 MB

-   Estimated disk space required: 556 MB

-   Estimated build time: 0.6 SBU (Using parallelism=4)
:::

### Emacs Dependencies

#### Recommended

[harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref}, [GnuTLS-3.8.13](gnutls.md "GnuTLS-3.8.13"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, and [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}

#### Optional

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [GPM-1.20.7](../general/gpm.md "GPM-1.20.7"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [MIT Kerberos V5-1.22.2](mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [intlfonts](https://ftpmirror.gnu.org/intlfonts/){.ulink}, [libungif](https://directory.fsf.org/wiki/Libungif){.ulink}, [libotf](https://www.nongnu.org/m17n/){.ulink}, and [m17n-lib](https://www.nongnu.org/m17n/){.ulink} - to correctly display such complex scripts as Indic and Khmer, and also for scripts that require Arabic shaping support (Arabic and Farsi), [mailutils](https://mailutils.org/){.ulink}, and [libXaw3d](https://www.x.org/pub/individual/lib/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Emacs {#installation-of-emacs .sect2}

Install [Emacs]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite. If make succeeds, you can test the result by running [**src/emacs -Q**]{.command}, which is the program that will be installed, with its auxiliary files. This should start and display the application opening screen.

Now, as the `root`{.systemitem} user:

``` root
make install &&
chown -v -R root:root /usr/share/emacs/30.2
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and you can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed and issue the following command as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--with-imagemagick`{.option}: Use this if you have installed [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} and wish to link against it.

`--with-gif=no`{.option}: Use this if you have not installed [giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref} or [libungif](https://directory.fsf.org/wiki/Libungif){.ulink}.

`--with-tiff=no`{.option}: Use this if you have not installed [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}.

`--with-gnutls=no`{.option}: Use this if you have not installed [GnuTLS-3.8.13](gnutls.md "GnuTLS-3.8.13"){.xref}.

`--without-harfbuzz`{.option}: Use this if you have not installed [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}.

`--with-json=no`{.option}: Use this if you have not installed [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}.

`--with-kerberos5`{.option}: Use this option if you have installed [MIT Kerberos V5-1.22.2](mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} and need to use it for authentication in Emacs' built-in email client.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ctags, ebrowse, emacs (symlink), emacs-30.2, emacsclient, and etags]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/libexec/emacs and /usr/share/emacs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------
  []{#ctags}[[**ctags**]{.command}]{.term}               creates cross-reference tagfile database files for source code
  []{#ebrowse}[[**ebrowse**]{.command}]{.term}           permits browsing of C++ class hierarchies from within [**emacs**]{.command}
  []{#emacs-prog}[[**emacs**]{.command}]{.term}          is an editor
  []{#emacsclient}[[**emacsclient**]{.command}]{.term}   attaches an [**emacs**]{.command} session to an already running [**emacsserver**]{.command} instance
  []{#etags}[[**etags**]{.command}]{.term}               is another program to generate source code cross-reference tagfiles
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](ed.md "Ed-1.22.5"){accesskey="p"}

    Ed-1.22.5

-   [Next](joe.md "JOE-4.6"){accesskey="n"}

    JOE-4.6

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
