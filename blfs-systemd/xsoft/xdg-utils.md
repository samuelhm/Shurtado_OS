::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](xarchiver.md "xarchiver-0.5.4.26"){accesskey="p"}

    xarchiver-0.5.4.26

-   [Next](xscreensaver.md "XScreenSaver-6.15"){accesskey="n"}

    XScreenSaver-6.15

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-utils}xdg-utils-1.2.1 {#xdg-utils-1.2.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdg-utils {#introduction-to-xdg-utils .sect2}

[xdg-utils]{.application} is a set of command line tools that assist applications with a variety of desktop integration tasks. It is required for Linux Standards Base (LSB) conformance.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v1.2.1/xdg-utils-v1.2.1.tar.gz](https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v1.2.1/xdg-utils-v1.2.1.tar.gz){.ulink}

-   Download MD5 sum: 4c72585a98ba8f775cb9e72b066cc0df

-   Download size: 304 KB

-   Estimated disk space required: 3.3 MB (with tests)

-   Estimated build time: 2.5 SBU (with tests)
:::

### xdg-utils Dependencies

#### Required

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} with one of [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref}, [Links-2.30](../basicnet/links.md "Links-2.30"){.xref}, or [W3m](https://w3m.sourceforge.net/){.ulink}

#### Required (runtime)

[Xorg Applications](../x/x7app.md "Xorg Applications"){.xref}

#### Optional (runtime)

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of xdg-utils {#installation-of-xdg-utils .sect2}

Compile [xdg-utils]{.application} with the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

The tests for the scripts must be made from an X-Window based session. There are several run-time requirements to run the tests including a browser and an MTA. Running the tests as `root`{.systemitem} user is not recommended.
:::

To run the tests, issue: [**make -k test**]{.command}.

Now install it as the `root`{.systemitem} user:

``` root
make install
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xdg-desktop-menu, xdg-desktop-icon, xdg-mime, xdg-icon-resource, xdg-open, xdg-email, xdg-screensaver, xdg-settings]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------
  []{#xdg-desktop-menu}[[**xdg-desktop-menu**]{.command}]{.term}     is a command line tool for (un)installing desktop menu items
  []{#xdg-desktop-icon}[[**xdg-desktop-icon**]{.command}]{.term}     is a command line tool for (un)installing icons to the desktop
  []{#xdg-mime}[[**xdg-mime**]{.command}]{.term}                     is a command line tool for querying information about file type handling and adding descriptions for new file types
  []{#xdg-icon-resource}[[**xdg-icon-resource**]{.command}]{.term}   is a command line tool for (un)installing icon resources
  []{#xdg-open}[[**xdg-open**]{.command}]{.term}                     opens a file or URL in the user's preferred application
  []{#xdg-email}[[**xdg-email**]{.command}]{.term}                   opens the user's preferred e-mail composer in order to send a mail message
  []{#xdg-screensaver}[[**xdg-screensaver**]{.command}]{.term}       is a command line tool for controlling the screensaver
  []{#xdg-settings}[[**xdg-settings**]{.command}]{.term}             is a command line tool for managing various settings from the desktop environment
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xarchiver.md "xarchiver-0.5.4.26"){accesskey="p"}

    xarchiver-0.5.4.26

-   [Next](xscreensaver.md "XScreenSaver-6.15"){accesskey="n"}

    XScreenSaver-6.15

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
