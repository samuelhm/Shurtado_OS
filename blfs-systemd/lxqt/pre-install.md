::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-desktop.md "LXQt Desktop"){accesskey="p"}

    LXQt Desktop

-   [Next](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){accesskey="n"}

    kwindowsystem-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-pre-install}LXQt Desktop Pre-Install Instructions {#lxqt-desktop-pre-install-instructions .sect1}

::::: {.sect1 lang="en"}
:::: {.sect2 lang="en"}
## Notes about building LXQt dependencies {#notes-about-building-lxqt-dependencies .sect2}

To build LXQt, the following steps are recommended:

::: procedure
1.  First, build the whole [Xorg Chapter](../x/installing.md#xorg){.xref}, including Wayland support with required and recommended dependencies. Test that the environment works with twm as the window manager. With experience, some of the packages can be omitted, but that is not recommended for first time users.

2.  Second, build the required parts of Qt. The full package, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} is quite long and has a lot of dependencies.

3.  Finally build the LXQt desktop using the pages below in order. The packages in the applications section are optional, but as a minimum, [qterminal-2.4.0](qterminal.md "qterminal-2.4.0"){.xref} is recommended.
:::
::::
:::::

::: navfooter
-   [Prev](lxqt-desktop.md "LXQt Desktop"){accesskey="p"}

    LXQt Desktop

-   [Next](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){accesskey="n"}

    kwindowsystem-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
