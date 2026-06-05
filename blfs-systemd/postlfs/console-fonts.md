::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](bootdisk.md "Creating a Custom Boot Device"){accesskey="p"}

    Creating a Custom Boot Device

-   [Next](firmware.md "About Firmware"){accesskey="n"}

    About Firmware

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-console-fonts}About Console Fonts {#about-console-fonts .sect1}

:::::::: {.sect1 lang="en"}
An LFS system can be used without a graphical desktop, and unless or until you install [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} you will have to work in the console. Most, if not all, PCs boot with an 8x16 font - whatever the actual screen size. There are a few things you can do to alter the display on the console. Most of them involve changing the font, but the first alters the commandline used by grub.

::: {.sect2 lang="en"}
## []{#grub-video}Setting a smaller screen resolution in grub {#setting-a-smaller-screen-resolution-in-grub .sect2}

Modern screens often have a lot more pixels than the screens used in the past. If your screen is 1600 pixels wide, an 8x16 font will give you 200 columns of text - unless your monitor is enormous, the text will be tiny. One of the ways to work around this is to tell GRUB and the kernel to use a smaller resolution, such as 1024x768 or 800x600 or even 640x480. Even if your screen does not have a 4:3 aspect ratio, this should work.

If you've followed the LFS book to configure your kernel with SimpleDRM enabled and the kernel driver dedicated for your GPU (for example i915 or AMDGPU) is built as a kernel module, before the dedicated driver is loaded, the SimpleDRM driver will be used for displaying. The SimpleDRM driver itself cannot change the resolution, so you need to tell GRUB to set the suitable resolution before loading the kernel by modifying the `set gfxpayload=1024x768x32`{.literal} line in [the `grub.cfg`{.filename} file](../../../../lfs/view/systemd/chapter10/grub.md){.ulink}.

When the dedicated GPU driver starts to work (once the kernel or the module is loaded depending on if you've built it as a part of the kernel image or a module), it takes the display control away from the SimpleDRM driver and changes the display resolution. To make it use the resolution you want, again edit the `grub.cfg`{.filename} file to insert a `video=`{.literal} parameter into the kernel command line, for example `root=/dev/sda2 video=DP-1:800x600 ro`{.literal}. Note that it's necessary to explicitly specify the output name like `DP-1`{.literal} here: a `video=`{.literal} parameter without an output name is only recognized by GRUB (as a deprecated alias of `set gfxpayload=`{.literal}) and completely ignored by the kernel. The content of `/sys/class/drm/`{.filename} can be helpful for figuring out the output name, for example the `card1-DP-1`{.filename} subdirectory indicates an output named `DP-1`{.literal}. To align the output name with your monitor, install the [libdisplay-info-0.3.0](../general/libdisplay-info.md "libdisplay-info-0.3.0"){.xref} package and run the [**di-edid-decode /sys/class/drm/card*`<card ID>`*-*`<output name>`*/edid**]{.command} command to show the info (including the model name and the supported resolutions) about the the monitor connected on the output.

If you decide that you wish to do this, you can then (as the `root`{.systemitem} user) edit `/boot/grub/grub.cfg`{.filename}.
:::

::: {.sect2 lang="en"}
## []{#psf-fonts}Using the standard psf fonts {#using-the-standard-psf-fonts .sect2}

In LFS the [kbd]{.application} package is used. The fonts it provides are PC Screen Fonts, usually called PSF, and they were installed into `/usr/share/consolefonts`{.filename}. Where these include a unicode mapping table, the file suffix is often changed to `.psfu`{.literal} although packages such as [terminus-font]{.application} (see below) do not add the 'u'. These fonts are usually compressed with gzip to save space, but that is not essential.

The initial PC text screens had 8 colours, or 16 colours if the bright versions of the original 8 colours were used. A PSF font can include up to 256 characters (technically, glyphs) while allowing 16 colours, or up to 512 characters (in which case, the bright colours will not be available). Clearly, these console fonts cannot be used to display CJK text - that would need thousands of available glyphs.

Some fonts in [kbd]{.application} can cover more than 512 codepoints ('characters'), with varying degrees of fidelity: unicode contains several whitespace codepoints which can all be mapped to a space, varieties of dashes can be mapped to a minus sign, smart quotes can map to the regular ASCII quotes rather than to whatever is used for "codepoint not present or invalid", and those cyrillic or greek letters which look like latin letters can be mapped onto them, so 'A' can also do duty for cyrillic A and greek Alpha, and 'P' can also do duty for cyrillic ER and greek RHO. Unfortunately, where a font has been created from a BDF file (the method in terminus and Debian's [console-setup](https://packages.debian.org/stable/console-setup){.ulink} ) such mapping of additional codepoints onto an existing glyph is not always done, although the terminus ter-vXXn fonts do this well.

There are over 120 combinations of font and size in [kbd]{.application}: often a font is provided at several character sizes, and sometimes varieties cover different subsets of unicode. Most are 8 pixels wide, in heights from 8 to 16 pixels, but there are a few which are 9 pixels wide, some others which are 12x22, and even one (`latarcyrheb-sun32.psfu`{.filename}) which has been scaled up to 16x32. Using a bigger font is another way of making text on a large screen easier to read.
:::

::: {.sect2 lang="en"}
## []{#testing-fonts}Testing different fonts {#testing-different-fonts .sect2}

You can test fonts as a normal user. If you have a font which has not been installed, you can load it with :

``` userinput
setfont /path/to/yourfont.ext
```

For the fonts already installed you only need the name, so using `gr737a-9x16.psfu.gz`{.filename} as an example:

``` userinput
setfont gr737a-9x16
```

To see the glyphs in the font, use:

``` userinput
showconsolefont
```

If the font looks as if it might be useful, you can then go on to test it more thoroughly.

When you find a font which you wish to use, as the `root`{.systemitem} user) edit [`/etc/vconsole.conf`{.filename} as described in LFS section 9.6 [../../../../lfs/view/systemd/chapter09/console.html](../../../../lfs/view/systemd/chapter09/console.md){.ulink}.]{.phrase}

For fonts not supplied with the [kbd]{.application} package you will need to optionally compress it / them with [**gzip**]{.command} and then install it / them as the `root`{.systemitem} user.
:::

::: {.sect2 lang="en"}
## []{#psf-tools}Editing fonts using psf-tools {#editing-fonts-using-psf-tools .sect2}

Although some console fonts are created from BDF files, which is a text format with hex values for the pixels in each row of the character, there are more-modern tools available for editing psf fonts. The [psftools](https://www.seasip.info/Unix/PSF/){.ulink} package allows you to dump a font to a text representation with a dash for a pixel which is off (black) and a hash for a pixel which is on (white). You can then edit the text file to add more characters, or reshape them, or map extra codepoints onto them, and then create a new psf font with your changes.
:::

::: {.sect2 lang="en"}
## []{#terminus-font}Using fonts from Terminus-font {#using-fonts-from-terminus-font .sect2}

The [Terminus Font](https://terminus-font.sourceforge.net/){.ulink} package provides fixed-width bitmap fonts designed for long (8 hours and more per day) work with computers. Under 'Character variants' on that page is a list of patches (in the `alt/`{.filename} directory). If you are using a graphical browser to look at that page, you can see what the patches do, e.g. 'll2' makes 'l' more visibly different from 'i' and '1'.

By default [terminus-fonts]{.application} will try to create several types of font, and it will fail if [**bdftopcf**]{.command} from [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref} has not been installed. The configure script is only really useful if you go on to install [*all*]{.emphasis} the fonts (console and X11 bitmap) to the correct directories, as in a distro. To build only the PSF fonts and their dependencies, run:

``` userinput
make psf
```

This will create more than 240 ter-\*.psf fonts. The 'b' suffix indicates bright, 'n' indicates normal. You can then test them to see if any fit your requirements. Unless you are creating a distro, there seems little point in installing them all.

As an example, to install the last of these fonts, you can gzip it and then as the `root`{.systemitem} user:

``` userinput
install -v -m644 ter-v32n.psf.gz /usr/share/consolefonts
```
:::
::::::::

::: navfooter
-   [Prev](bootdisk.md "Creating a Custom Boot Device"){accesskey="p"}

    Creating a Custom Boot Device

-   [Next](firmware.md "About Firmware"){accesskey="n"}

    About Firmware

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
