::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Part VI. Graphical Components

-   [Prev](x.md "Graphical Components"){accesskey="p"}

    Graphical Components

-   [Next](xorg7.md "Introduction to Xorg-7"){accesskey="n"}

    Introduction to Xorg-7

-   [Up](x.md "Part VI. Graphical Components"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#x-window-system}Graphical Environments {#graphical-environments .chapter}

:::: {.chapter lang="en"}
This chapter contains instructions to build and configure a graphical user environment.

For a long time the only graphical environment usable with GNU/Linux has been the [*X Window System*]{.emphasis}. It uses a client/server model which allows writing applications completely independent of the graphical hardware. This has the drawback that accessing modern hardware acceleration is difficult, so another approach named [*Wayland*]{.emphasis} is developed. It is a simpler replacement for X, easier to develop and maintain, using the OpenGL framework. The main desktop environments GNOME and KDE have been ported to it.

This chapter provides the basic components of the X Window System and Wayland. For X, the chosen implementation is Xorg, which is a modular implementation and requires more than 100 packages to be installed. The distribution of Xorg is given a release number by the developers, in this case Xorg-7. Individual packages are updated as needed without changing this number.

::: toc
### Table of Contents

-   [Introduction to Xorg-7](xorg7.md)
-   [util-macros-1.20.2](util-macros.md)
-   [xorgproto-2025.1](xorgproto.md)
-   [libXau-1.0.12](libXau.md)
-   [libXdmcp-1.1.5](libXdmcp.md)
-   [xcb-proto-1.17.0](xcb-proto.md)
-   [libxcb-1.17.0](libxcb.md)
-   [Xorg Libraries](x7lib.md)
-   [libxcvt-0.1.3](libxcvt.md)
-   [xcb-util-0.4.1](xcb-util.md)
-   [XCB Utilities](xcb-utilities.md)
-   [Mesa-26.0.7](mesa.md)
-   [xbitmaps-1.1.4](xbitmaps.md)
-   [Xorg Applications](x7app.md)
-   [luit-20250912](luit.md)
-   [xcursor-themes-1.0.7](xcursor-themes.md)
-   [Xorg Fonts](x7font.md)
-   [XKeyboardConfig-2.47](xkeyboard-config.md)
-   [Xwayland-24.1.12](xwayland.md)
-   [Xorg-Server-21.1.23](xorg-server.md)
-   [Xorg Input Drivers](x7driver.md)
-   [twm-1.0.13.1](twm.md)
-   [xterm-410](xterm.md)
-   [xclock-1.1.1](xclock.md)
-   [xinit-1.4.4](xinit.md)
-   [Xorg-7 Testing and Configuration](xorg-config.md)
-   [Tuning Fontconfig](tuning-fontconfig.md)
-   [TTF and OTF fonts](TTF-and-OTF-fonts.md)
-   [Xorg Legacy](x7legacy.md)
:::
::::

::: navfooter
-   [Prev](x.md "Graphical Components"){accesskey="p"}

    Graphical Components

-   [Next](xorg7.md "Introduction to Xorg-7"){accesskey="n"}

    Introduction to Xorg-7

-   [Up](x.md "Part VI. Graphical Components"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
