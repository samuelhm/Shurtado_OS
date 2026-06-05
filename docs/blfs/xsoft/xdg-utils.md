<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](xarchiver.md "xarchiver-0.5.4.26")

    xarchiver-0.5.4.26

-   [Next](xscreensaver.md "XScreenSaver-6.15")

    XScreenSaver-6.15

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-utils-1.2.1 {#xdg-utils-1.2.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-utils {#introduction-to-xdg-utils}

<span class="application">xdg-utils</span> is a set of command line tools that assist applications with a variety of desktop integration tasks. It is required for Linux Standards Base (LSB) conformance.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v1.2.1/xdg-utils-v1.2.1.tar.gz">https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v1.2.1/xdg-utils-v1.2.1.tar.gz</a>

-   Download MD5 sum: 4c72585a98ba8f775cb9e72b066cc0df

-   Download size: 304 KB

-   Estimated disk space required: 3.3 MB (with tests)

-   Estimated build time: 2.5 SBU (with tests)
</div>

### xdg-utils Dependencies

#### Required

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> with one of <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>, <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a>, or <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a>

#### Required (runtime)

<a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a>

#### Optional (runtime)

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>
</div>

<div class="installation" lang="en">
## Installation of xdg-utils {#installation-of-xdg-utils}

Compile <span class="application">xdg-utils</span> with the following commands:

```bash
./configure --prefix=/usr &&
make
```

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

The tests for the scripts must be made from an X-Window based session. There are several run-time requirements to run the tests including a browser and an MTA. Running the tests as <code class="systemitem">root</code> user is not recommended.
</div>

To run the tests, issue: <span class="command"><strong>make -k test</strong></span>.

Now install it as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xdg-desktop-menu, xdg-desktop-icon, xdg-mime, xdg-icon-resource, xdg-open, xdg-email, xdg-screensaver, xdg-settings</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------
  <a id="xdg-desktop-menu"></a><span class="command"><span class="term"><strong>xdg-desktop-menu</strong></span></span>     is a command line tool for (un)installing desktop menu items
  <a id="xdg-desktop-icon"></a><span class="command"><span class="term"><strong>xdg-desktop-icon</strong></span></span>     is a command line tool for (un)installing icons to the desktop
  <a id="xdg-mime"></a><span class="command"><span class="term"><strong>xdg-mime</strong></span></span>                     is a command line tool for querying information about file type handling and adding descriptions for new file types
  <a id="xdg-icon-resource"></a><span class="command"><span class="term"><strong>xdg-icon-resource</strong></span></span>   is a command line tool for (un)installing icon resources
  <a id="xdg-open"></a><span class="command"><span class="term"><strong>xdg-open</strong></span></span>                     opens a file or URL in the user's preferred application
  <a id="xdg-email"></a><span class="command"><span class="term"><strong>xdg-email</strong></span></span>                   opens the user's preferred e-mail composer in order to send a mail message
  <a id="xdg-screensaver"></a><span class="command"><span class="term"><strong>xdg-screensaver</strong></span></span>       is a command line tool for controlling the screensaver
  <a id="xdg-settings"></a><span class="command"><span class="term"><strong>xdg-settings</strong></span></span>             is a command line tool for managing various settings from the desktop environment
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xarchiver.md "xarchiver-0.5.4.26")

    xarchiver-0.5.4.26

-   [Next](xscreensaver.md "XScreenSaver-6.15")

    XScreenSaver-6.15

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
