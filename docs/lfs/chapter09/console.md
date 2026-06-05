::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](clock.md "Configuring the System Clock"){accesskey="p"}

    Configuring the System Clock

-   [Next](locale.md "Configuring the System Locale"){accesskey="n"}

    Configuring the System Locale

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-console}9.6. Configuring the Linux Console {#configuring-the-linux-console .sect1}

::::::: {.sect1 lang="en"}
This section discusses how to configure the [**systemd-vconsole-setup**]{.command} system service, which configures the virtual console font and console keymap.

The [**systemd-vconsole-setup**]{.command} service reads the `/etc/vconsole.conf`{.filename} file for configuration information. Decide which keymap and screen font will be used. Various language-specific HOWTOs can also help with this, see [https://tldp.org/HOWTO/HOWTO-INDEX/other-lang.html](https://tldp.org/HOWTO/HOWTO-INDEX/other-lang.html){.ulink}. Examine the output of [**localectl list-keymaps**]{.command} for a list of valid console keymaps. Look in the `/usr/share/consolefonts`{.filename} directory for valid screen fonts.

The `/etc/vconsole.conf`{.filename} file should contain lines of the form: `VARIABLE=value`{.envar}. The following variables are recognized:

::: variablelist

[KEYMAP]{.term}

:   This variable specifies the key mapping table for the keyboard. If unset, it defaults to `us`{.literal}.

[KEYMAP_TOGGLE]{.term}

:   This variable can be used to configure a second toggle keymap and is unset by default.

[FONT]{.term}

:   This variable specifies the font used by the virtual console.

[FONT_MAP]{.term}

:   This variable specifies the console map to be used.

[FONT_UNIMAP]{.term}

:   This variable specifies the Unicode font map.
:::

We\'ll use `C.UTF-8`{.literal} as the locale for interactive sessions in the Linux console in [Section 9.7, "Configuring the System Locale."](locale.md "9.7. Configuring the System Locale"){.xref} The console fonts shipped by the [Kbd]{.application} package containing the glyphs for all characters from the program messages in the `C.UTF-8`{.literal} locale are `LatArCyrHeb*.psfu.gz`{.filename}, `LatGrkCyr*.psfu.gz`{.filename}, `Lat2-Terminus16.psfu.gz`{.filename}, and `pancyrillic.f16.psfu.gz`{.filename} in `/usr/share/consolefonts`{.filename} (the other shipped console fonts lack glyphs of some characters like the Unicode left/right quotation marks and the Unicode English dash). So set one of them, for example `Lat2-Terminus16.psfu.gz`{.filename} as the default console font:

``` userinput
echo FONT=Lat2-Terminus16 > /etc/vconsole.conf
```

An example for a German keyboard and console is given below:

``` userinput
cat > /etc/vconsole.conf << "EOF"
KEYMAP=de-latin1
FONT=Lat2-Terminus16
EOF
```

You can change KEYMAP value at runtime by using the [**localectl**]{.command} utility:

``` userinput
localectl set-keymap MAP
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please note that the [**localectl**]{.command} command doesn\'t work in the chroot environment. It can only be used after the LFS system is booted with systemd.
:::

You can also use [**localectl**]{.command} utility with the corresponding parameters to change X11 keyboard layout, model, variant and options:

``` userinput
localectl set-x11-keymap LAYOUT [MODEL] [VARIANT] [OPTIONS]
```

To list possible values for [**localectl set-x11-keymap**]{.command} parameters, run [**localectl**]{.command} with parameters listed below:

::: variablelist

[list-x11-keymap-models]{.term}

:   Shows known X11 keyboard mapping models.

[list-x11-keymap-layouts]{.term}

:   Shows known X11 keyboard mapping layouts.

[list-x11-keymap-variants]{.term}

:   Shows known X11 keyboard mapping variants.

[list-x11-keymap-options]{.term}

:   Shows known X11 keyboard mapping options.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Using any of the parameters listed above requires the XKeyboard-Config package from BLFS.
:::
:::::::

::: navfooter
-   [Prev](clock.md "Configuring the System Clock"){accesskey="p"}

    Configuring the System Clock

-   [Next](locale.md "Configuring the System Locale"){accesskey="n"}

    Configuring the System Locale

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
