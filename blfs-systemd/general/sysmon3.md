<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysmond.md "sysmond-1.0.1")

    sysmond-1.0.1

-   [Next](usbutils.md "usbutils-019")

    usbutils-019

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sysmon3-3.0.3 {#sysmon3-3.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sysmon3 {#introduction-to-sysmon3}

The <span class="application">sysmon3</span> package (pronounced sys-mon-3) is the client portion of the sysmond/sysmon3 client/server application that monitors system values including CPU usage, memory usage, and system temperatures in a compact screen window. Multiple instances of <span class="application">sysmon3</span> can be run on a system to monitor values on different systems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/sysmon3/releases/download/3.0.3/sysmon3-3.0.3.tar.xz">https://github.com/lfs-book/sysmon3/releases/download/3.0.3/sysmon3-3.0.3.tar.xz</a>

-   Download MD5 sum: 614be3041d908295430a54045901d2cd

-   Download size: 40 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: 0.4 SBU
</div>

### sysmon3 Dependencies

#### Required

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (or qt5)

#### Required at runtime

<a class="xref" href="sysmond.md" title="sysmond-1.0.1">sysmond-1.0.1</a> (runtime on the system to be monitored)
</div>

<div class="installation" lang="en">
## Installation of sysmon3 {#installation-of-sysmon3}

Install <span class="application">sysmon3</span> by running the following commands:

```bash
qmake sysmon3.pro &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm755 sysmon3 /usr/bin
```
</div>

<div class="configuration" lang="en">
## Configuring sysmon3 {#configuring-sysmon3}

<div class="sect3" lang="en">
### Configuration Files {#configuration-files}

<code class="filename">$HOME/.config/LinuxFromScratch/<monitored system>.conf</code>

The configuration files are created at run time for each system being monitored. They are not normally updated manually, but are managed by the program's configuration widgets.

When first run, the program asks for the system to be monitored. After testing that communication to the server is satisfactory and the server name is saved, the main window will start. After initial setup, the setup widget can be bypassed by passing the server name as an argument to the program.

The program is designed to take up minimal screen space so by default it does not have a frame. The frame can be toggled on and off with Ctrl-F. This can be useful for placing the window in the desired location. After initial placement, the location is saved in the configuration file for the next time the program is started.

A short operation menu is brought up with a right mouse click on the main window. Configuration widgets are brought up with F1.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sysmon3</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$HOME/.config/LinuxFromScratch/</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sysmond.md "sysmond-1.0.1")

    sysmond-1.0.1

-   [Next](usbutils.md "usbutils-019")

    usbutils-019

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
