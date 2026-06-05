::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](gs.md "ghostscript-10.07.1"){accesskey="p"}

    ghostscript-10.07.1

-   [Next](libcupsfilters.md "libcupsfilters-2.1.1"){accesskey="n"}

    libcupsfilters-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gutenprint}Gutenprint-5.3.5 {#gutenprint-5.3.5 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gutenprint {#introduction-to-gutenprint .sect2}

The [Gutenprint]{.application} (formerly [Gimp-Print]{.application}) package contains high quality drivers for many brands and models of printers for use with [Cups-2.4.19](cups.md "Cups-2.4.19"){.xref}. See a list of supported printers at [https://gimp-print.sourceforge.io/p_Supported_Printers.php](https://gimp-print.sourceforge.io/p_Supported_Printers.php){.ulink}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/gimp-print/gutenprint-5.3.5.tar.xz](https://downloads.sourceforge.net/gimp-print/gutenprint-5.3.5.tar.xz){.ulink}

-   Download MD5 sum: 18968a1376a0fb0155afea4ce832d7fd

-   Download size: 5.4 MB

-   Estimated disk space required: 71 MB (without tests)

-   Estimated build time: 0.3 SBU (without tests)
:::

### Gutenprint Dependencies

#### Recommended

[Cups-2.4.19](cups.md "Cups-2.4.19"){.xref}

#### Recommended (at runtime)

Two families of DyeSub photo printers each require another library at runtime. Unless you have one of these devices you will not want these libraries.

For the Sinfonia S6145 and the Ciaat Brava 21, [libS6145ImageReProcess](https://git.shaftnet.org/gitea/slp/selphy_print/src/branch/master/lib6145){.ulink}, see [Peachy Photos (Sinfonia)](https://www.peachyphotos.com/blog/posts/201601301524-sinfonia-chc-s6145-cs2-and-ciaat-brava-21-revited/){.ulink} for instructions on how to build and test this.

For the Mitsubishi D70 family and the similar Kodak 305, [libMitsuD70ImageReProcess](https://git.shaftnet.org/gitea/slp/selphy_print/src/branch/master/lib70x){.ulink}, see [Peachy Photos (Mitsubishi CP-D70)](https://www.peachyphotos.com/blog/posts/201610061508-mitsubishi-cp-d70-family-working/){.ulink} for instructions on how to build and test this.

#### Optional (to Regenerate Documentation)

[ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref}, [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](tl-installer.md "install-tl-unx"){.xref}), [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, and [DocBook-utils-0.6.14](docbook-utils.md "DocBook-utils-0.6.14"){.xref}
:::::

::: {.kernel lang="en"}
## []{#gutenprint-escputil}Kernel Configuration {#kernel-configuration .sect2}

If you intend to use [escputil]{.application} with a USB-connected Epson Stylus printer for commands such as [**--ink-level**]{.command} which need to access the raw device, you must enable the kernel's usblp driver. Enable the following options in your kernel configuration and recompile the kernel:

``` screen
Device Drivers --->
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M> USB Printer support                                      [USB_PRINTER]
```
:::

::: {.installation lang="en"}
## Installation of Gutenprint {#installation-of-gutenprint .sect2}

Install [Gutenprint]{.application} by running the following commands:

``` userinput
sed -i 's|$(PACKAGE)/doc|doc/$(PACKAGE)-$(VERSION)|' \
       {,doc/,doc/developer/}Makefile.in &&

./configure --prefix=/usr    \
            --disable-static \
            --without-gimp2  \
            --without-gimp2-as-gutenprint &&
make
```

To test the results, issue: [**make check**]{.command}. The tests take a very long time and use a lot of disk space. When last tested (version 5.3.5 in March 2025) this needed 292 SBU and 3.8 GB to complete the tests. Note that the tests used only one CPU.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755 -d /usr/share/doc/gutenprint-5.3.5/api/gutenprint{,ui2} &&
install -v -m644    doc/gutenprint/html/* \
                    /usr/share/doc/gutenprint-5.3.5/api/gutenprint &&
install -v -m644    doc/gutenprintui2/html/* \
                    /usr/share/doc/gutenprint-5.3.5/api/gutenprintui2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i '...' ...Makefile.in**]{.command}: This command is used so that the package documentation is installed in the conventional `/usr/share/doc`{.filename} directory structure instead of `/usr/share/gutenprint/doc`{.filename}.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--without-gimp2`*: This switch disables support for GIMP because it has not been updated to support GIMP3 yet.
:::

:::: {.configuration lang="en"}
## Configuring Gutenprint {#configuring-gutenprint .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

For [CUPS]{.application} to see newly installed print drivers, it has to be restarted (as the `root`{.systemitem} user):

``` root
systemctl restart cups
```

Then point your web browser to [http://localhost:631/](http://localhost:631/){.ulink} to add a new printer to [CUPS]{.application}.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cups-calibrate, cups-genppd.5.3, cups-genppdupdate, escputil, and testpattern]{.segbody}
:::

::: seg
**Installed Libraries:** [libgutenprint.so and optionally, various [CUPS]{.application} filters and backend drivers under /usr/lib/gutenprint/5.3/modules/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,share}/gutenprint and /usr/share/doc/gutenprint-5.3.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
  []{#cups-calibrate}[[**cups-calibrate**]{.command}]{.term}         calibrates the color output of printers using the [Gutenprint]{.application}, [CUPS]{.application} or [ESP Print Pro]{.application} drivers
  []{#cups-genppd.5.3}[[**cups-genppd.5.3**]{.command}]{.term}       generates Gutenprint PPD files for use with CUPS
  []{#cups-genppdupdate}[[**cups-genppdupdate**]{.command}]{.term}   regenerates the Gutenprint PPD files in use by CUPS
  []{#escputil}[[**escputil**]{.command}]{.term}                     is a command line utility to perform various maintenance tasks on Epson Stylus inkjet printers
  []{#testpattern}[[**testpattern**]{.command}]{.term}               is a test program to learn how to use libgutenprint
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](gs.md "ghostscript-10.07.1"){accesskey="p"}

    ghostscript-10.07.1

-   [Next](libcupsfilters.md "libcupsfilters-2.1.1"){accesskey="n"}

    libcupsfilters-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
