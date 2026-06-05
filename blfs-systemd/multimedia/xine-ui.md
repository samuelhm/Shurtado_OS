::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](vlc.md "VLC-3.0.23"){accesskey="p"}

    VLC-3.0.23

-   [Next](cdwriteutils.md "CD/DVD-Writing Utilities"){accesskey="n"}

    CD/DVD-Writing Utilities

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xine-ui}xine-ui-0.99.14 {#xine-ui-0.99.14 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Xine User Interface {#introduction-to-xine-user-interface .sect2}

The [xine User Interface]{.application} package contains a multimedia player. It plays back CDs, DVDs and VCDs. It also decodes multimedia files like AVI, MOV, WMV, MPEG and MP3 from local disk drives, and displays multimedia streamed over the Internet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although this version of xine-ui works with most files, it is unable to open encrypted (content-scrambled) DVDs with the current version of libdvdcss.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/xine/xine-ui-0.99.14.tar.xz](https://downloads.sourceforge.net/xine/xine-ui-0.99.14.tar.xz){.ulink}

-   Download MD5 sum: 86a4db9050405a91fcc33b7ad85274f5

-   Download size: 2.1 MB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU
:::

### Xine User Interface Dependencies

#### Required

[xine-lib-1.2.13](xine-lib.md "xine-lib-1.2.13"){.xref} and [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref}

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [AAlib-1.4rc5](../general/aalib.md "AAlib-1.4rc5"){.xref}, [LIRC](https://www.lirc.org){.ulink}, and [libcaca](https://github.com/cacalabs/libcaca){.ulink}
::::::

:::: {.installation lang="en"}
## Installation of Xine User Interface {#installation-of-xine-user-interface .sect2}

Install [xine User Interface]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make CC="gcc -std=gnu17"
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docsdir=/usr/share/doc/xine-ui-0.99.14 install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed (for the icon cache) and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`docsdir=/usr/share/doc/xine-ui-0.99.14`*: This parameter causes the [Xine UI]{.application} documentation to be installed in the versioned directory `/usr/share/doc/xine-ui-0.99.14`{.filename}, rather that the default `/usr/share/doc/xine-ui`{.filename}.
:::

::::: {.configuration lang="en"}
## Configuring Xine User Interface {#configuring-xine-user-interface .sect2}

::: {.sect3 lang="en"}
### []{#xine-ui-config}Config Files {#config-files .sect3}

`~/.xine/config`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The above file is created and maintainable through the [**xine**]{.command} setup dialog box. The documentation for the configuration settings is located at `/usr/share/doc/xine-ui-0.99.14/README.config_en`{.filename}.

If you have a DVB TV card, you can watch TV with the command [**xine dvb://**]{.command} and change channels with the scroll wheel on your mouse.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aaxine, cacaxine, fbxine, xine, xine-bugreport, xine-check, and xine-remote]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/xine and /usr/share/doc/xine-ui-0.99.14]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aaxine}[[**aaxine**]{.command}]{.term}                   is an ASCII art video player which utilizes [AAlib]{.application} as the frontend for the [xine Libraries]{.application}
  []{#cacaxine}[[**cacaxine**]{.command}]{.term}               is a color ASCII art video player which utilizes [CACA]{.application} as the frontend for the [xine Libraries]{.application}
  []{#fbxine}[[**fbxine**]{.command}]{.term}                   is a frame buffer interface to the [xine Libraries]{.application}
  []{#xine}[[**xine**]{.command}]{.term}                       is a multimedia player designed to play MPEG streams (audio and video), MPEG elementary streams (MP3), MPEG transport streams, Ogg files, AVI files, ASF files, some Quicktime files, VCDs and DVDs
  []{#xine-bugreport}[[**xine-bugreport**]{.command}]{.term}   produces a terse system description and guides you through the process of reporting a bug
  []{#xine-check}[[**xine-check**]{.command}]{.term}           tests the [**xine**]{.command} video player installation for common problems. It tests the operating system settings, installation of plugins, CD/DVD drive settings and video support parameters
  []{#xine-remote}[[**xine-remote**]{.command}]{.term}         is a tool to connect to a [**xine**]{.command} remote control server
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](vlc.md "VLC-3.0.23"){accesskey="p"}

    VLC-3.0.23

-   [Next](cdwriteutils.md "CD/DVD-Writing Utilities"){accesskey="n"}

    CD/DVD-Writing Utilities

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
