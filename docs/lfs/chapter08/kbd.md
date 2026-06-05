::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](iproute2.md "IPRoute2-7.0.0"){accesskey="p"}

    IPRoute2-7.0.0

-   [Next](libpipeline.md "Libpipeline-1.5.8"){accesskey="n"}

    Libpipeline-1.5.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-kbd}8.67. Kbd-2.10.0 {#kbd-2.10.0 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Kbd package contains key-table files, console fonts, and keyboard utilities.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [37 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.67.1. Installation of Kbd {#installation-of-kbd .sect2}

The behavior of the backspace and delete keys is not consistent across the keymaps in the Kbd package. The following patch fixes this issue for i386 keymaps:

``` userinput
patch -Np1 -i ../kbd-2.10.0-backspace-1.patch
```

After patching, the backspace key generates the character with code 127, and the delete key generates a well-known escape sequence.

Remove the redundant [**resizecons**]{.command} program (it requires the defunct svgalib to provide the video mode files - for normal use [**setfont**]{.command} sizes the console appropriately) together with its manpage.

``` userinput
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
```

Prepare Kbd for compilation:

``` userinput
./configure --prefix=/usr --disable-vlock
```

::: variablelist
**The meaning of the configure option:**

[*`--disable-vlock`*]{.term}

:   This option prevents the vlock utility from being built because it requires the PAM library, which isn\'t available in the chroot environment.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For some languages (e.g., Belarusian) the Kbd package doesn\'t provide a useful keymap where the stock ["[by]{.quote}"]{.quote} keymap assumes the ISO-8859-5 encoding, and the CP1251 keymap is normally used. Users of such languages have to download working keymaps separately.
:::

If desired, install the documentation:

``` userinput
cp -R -v docs/doc -T /usr/share/doc/kbd-2.10.0
```
:::::

:::::::: {.content lang="en"}
## []{#contents-kbd}8.67.2. Contents of Kbd {#contents-of-kbd .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [chvt, deallocvt, dumpkeys, fgconsole, getkeycodes, kbdinfo, kbd_mode, kbdrate, loadkeys, loadunimap, mapscrn, openvt, psfaddtable (link to psfxtable), psfgettable (link to psfxtable), psfstriptable (link to psfxtable), psfxtable, setfont, setkeycodes, setleds, setmetamode, setvtrgb, showconsolefont, showkey, unicode_start, and unicode_stop]{.segbody}
:::

::: seg
**Installed directories:** [/usr/share/consolefonts, /usr/share/consoletrans, /usr/share/keymaps, /usr/share/doc/kbd-2.10.0, and /usr/share/unimaps]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#chvt}[[**chvt**]{.command}]{.term}                         Changes the foreground virtual terminal
  []{#deallocvt}[[**deallocvt**]{.command}]{.term}               Deallocates unused virtual terminals
  []{#dumpkeys}[[**dumpkeys**]{.command}]{.term}                 Dumps the keyboard translation tables
  []{#fgconsole}[[**fgconsole**]{.command}]{.term}               Prints the number of the active virtual terminal
  []{#getkeycodes}[[**getkeycodes**]{.command}]{.term}           Prints the kernel scancode-to-keycode mapping table
  []{#kbdinfo}[[**kbdinfo**]{.command}]{.term}                   Obtains information about the status of a console
  []{#kbd_mode}[[**kbd_mode**]{.command}]{.term}                 Reports or sets the keyboard mode
  []{#kbdrate}[[**kbdrate**]{.command}]{.term}                   Sets the keyboard repeat and delay rates
  []{#loadkeys}[[**loadkeys**]{.command}]{.term}                 Loads the keyboard translation tables
  []{#loadunimap}[[**loadunimap**]{.command}]{.term}             Loads the kernel unicode-to-font mapping table
  []{#mapscrn}[[**mapscrn**]{.command}]{.term}                   An obsolete program that used to load a user-defined output character mapping table into the console driver; this is now done by [**setfont**]{.command}
  []{#openvt}[[**openvt**]{.command}]{.term}                     Starts a program on a new virtual terminal (VT)
  []{#psfaddtable}[[**psfaddtable**]{.command}]{.term}           Adds a Unicode character table to a console font
  []{#psfgettable}[[**psfgettable**]{.command}]{.term}           Extracts the embedded Unicode character table from a console font
  []{#psfstriptable}[[**psfstriptable**]{.command}]{.term}       Removes the embedded Unicode character table from a console font
  []{#psfxtable}[[**psfxtable**]{.command}]{.term}               Handles Unicode character tables for console fonts
  []{#setfont}[[**setfont**]{.command}]{.term}                   Changes the Enhanced Graphic Adapter (EGA) and Video Graphics Array (VGA) fonts on the console
  []{#setkeycodes}[[**setkeycodes**]{.command}]{.term}           Loads kernel scancode-to-keycode mapping table entries; this is useful if there are unusual keys on the keyboard
  []{#setleds}[[**setleds**]{.command}]{.term}                   Sets the keyboard flags and Light Emitting Diodes (LEDs)
  []{#setmetamode}[[**setmetamode**]{.command}]{.term}           Defines the keyboard meta-key handling
  []{#setvtrgb}[[**setvtrgb**]{.command}]{.term}                 Sets the console color map in all virtual terminals
  []{#showconsolefont}[[**showconsolefont**]{.command}]{.term}   Shows the current EGA/VGA console screen font
  []{#showkey}[[**showkey**]{.command}]{.term}                   Reports the scancodes, keycodes, and ASCII codes of the keys pressed on the keyboard
  []{#unicode_start}[[**unicode_start**]{.command}]{.term}       Puts the keyboard and console in UNICODE mode \[Don\'t use this program unless your keymap file is in the ISO-8859-1 encoding. For other encodings, this utility produces incorrect results.\]
  []{#unicode_stop}[[**unicode_stop**]{.command}]{.term}         Reverts keyboard and console from UNICODE mode
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](iproute2.md "IPRoute2-7.0.0"){accesskey="p"}

    IPRoute2-7.0.0

-   [Next](libpipeline.md "Libpipeline-1.5.8"){accesskey="n"}

    Libpipeline-1.5.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
