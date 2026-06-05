<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](gs.md "ghostscript-10.07.1")

    ghostscript-10.07.1

-   [Next](libcupsfilters.md "libcupsfilters-2.1.1")

    libcupsfilters-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gutenprint-5.3.5 {#gutenprint-5.3.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gutenprint {#introduction-to-gutenprint}

The <span class="application">Gutenprint</span> (formerly <span class="application">Gimp-Print</span>) package contains high quality drivers for many brands and models of printers for use with <a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a>. See a list of supported printers at <a class="ulink" href="https://gimp-print.sourceforge.io/p_Supported_Printers.php">https://gimp-print.sourceforge.io/p_Supported_Printers.php</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gimp-print/gutenprint-5.3.5.tar.xz">https://downloads.sourceforge.net/gimp-print/gutenprint-5.3.5.tar.xz</a>

-   Download MD5 sum: 18968a1376a0fb0155afea4ce832d7fd

-   Download size: 5.4 MB

-   Estimated disk space required: 71 MB (without tests)

-   Estimated build time: 0.3 SBU (without tests)
</div>

### Gutenprint Dependencies

#### Recommended

<a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a>

#### Recommended (at runtime)

Two families of DyeSub photo printers each require another library at runtime. Unless you have one of these devices you will not want these libraries.

For the Sinfonia S6145 and the Ciaat Brava 21, <a class="ulink" href="https://git.shaftnet.org/gitea/slp/selphy_print/src/branch/master/lib6145">libS6145ImageReProcess</a>, see <a class="ulink" href="https://www.peachyphotos.com/blog/posts/201601301524-sinfonia-chc-s6145-cs2-and-ciaat-brava-21-revited/">Peachy Photos (Sinfonia)</a> for instructions on how to build and test this.

For the Mitsubishi D70 family and the similar Kodak 305, <a class="ulink" href="https://git.shaftnet.org/gitea/slp/selphy_print/src/branch/master/lib70x">libMitsuD70ImageReProcess</a>, see <a class="ulink" href="https://www.peachyphotos.com/blog/posts/201610061508-mitsubishi-cp-d70-family-working/">Peachy Photos (Mitsubishi CP-D70)</a> for instructions on how to build and test this.

#### Optional (to Regenerate Documentation)

<a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>, <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="tl-installer.md" title="install-tl-unx">install-tl-unx</a>), <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, and <a class="xref" href="docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If you intend to use <span class="application">escputil</span> with a USB-connected Epson Stylus printer for commands such as <span class="command"><strong>--ink-level</strong></span> which need to access the raw device, you must enable the kernel's usblp driver. Enable the following options in your kernel configuration and recompile the kernel:

```console
Device Drivers --->
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M> USB Printer support                                      [USB_PRINTER]
```
</div>

<div class="installation" lang="en">
## Installation of Gutenprint {#installation-of-gutenprint}

Install <span class="application">Gutenprint</span> by running the following commands:

```bash
sed -i 's|$(PACKAGE)/doc|doc/$(PACKAGE)-$(VERSION)|' \
       {,doc/,doc/developer/}Makefile.in &&

./configure --prefix=/usr    \
            --disable-static \
            --without-gimp2  \
            --without-gimp2-as-gutenprint &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. The tests take a very long time and use a lot of disk space. When last tested (version 5.3.5 in March 2025) this needed 292 SBU and 3.8 GB to complete the tests. Note that the tests used only one CPU.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755 -d /usr/share/doc/gutenprint-5.3.5/api/gutenprint{,ui2} &&
install -v -m644    doc/gutenprint/html/* \
                    /usr/share/doc/gutenprint-5.3.5/api/gutenprint &&
install -v -m644    doc/gutenprintui2/html/* \
                    /usr/share/doc/gutenprint-5.3.5/api/gutenprintui2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i '...' ...Makefile.in</strong></span>: This command is used so that the package documentation is installed in the conventional <code class="filename">/usr/share/doc</code> directory structure instead of <code class="filename">/usr/share/gutenprint/doc</code>.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--without-gimp2`*: This switch disables support for GIMP because it has not been updated to support GIMP3 yet.
</div>

<div class="configuration" lang="en">
## Configuring Gutenprint {#configuring-gutenprint}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

For <span class="application">CUPS</span> to see newly installed print drivers, it has to be restarted (as the <code class="systemitem">root</code> user):

```bash
systemctl restart cups
```

Then point your web browser to <a class="ulink" href="http://localhost:631/">http://localhost:631/</a> to add a new printer to <span class="application">CUPS</span>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cups-calibrate, cups-genppd.5.3, cups-genppdupdate, escputil, and testpattern</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="application">libgutenprint.so and optionally, various <span class="segbody">CUPS</span> filters and backend drivers under /usr/lib/gutenprint/5.3/modules/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,share}/gutenprint and /usr/share/doc/gutenprint-5.3.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cups-calibrate"></a><span class="command"><span class="term"><strong>cups-calibrate</strong></span></span>         calibrates the color output of printers using the <span class="application">Gutenprint</span>, <span class="application">CUPS</span> or <span class="application">ESP Print Pro</span> drivers
  <a id="cups-genppd.5.3"></a><span class="command"><span class="term"><strong>cups-genppd.5.3</strong></span></span>       generates Gutenprint PPD files for use with CUPS
  <a id="cups-genppdupdate"></a><span class="command"><span class="term"><strong>cups-genppdupdate</strong></span></span>   regenerates the Gutenprint PPD files in use by CUPS
  <a id="escputil"></a><span class="command"><span class="term"><strong>escputil</strong></span></span>                     is a command line utility to perform various maintenance tasks on Epson Stylus inkjet printers
  <a id="testpattern"></a><span class="command"><span class="term"><strong>testpattern</strong></span></span>               is a test program to learn how to use libgutenprint
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gs.md "ghostscript-10.07.1")

    ghostscript-10.07.1

-   [Next](libcupsfilters.md "libcupsfilters-2.1.1")

    libcupsfilters-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
