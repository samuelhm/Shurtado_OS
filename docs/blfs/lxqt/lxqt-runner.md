<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0")

    lxqt-powermanagement-2.4.0

-   [Next](lxqt-themes.md "lxqt-themes-2.4.0")

    lxqt-themes-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-runner-2.4.0 {#lxqt-runner-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-runner {#introduction-to-lxqt-runner}

The <span class="application">lxqt-runner</span> package provides a tool used to launch programs quickly by typing their names.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-runner/releases/download/2.4.0/lxqt-runner-2.4.0.tar.xz">https://github.com/lxqt/lxqt-runner/releases/download/2.4.0/lxqt-runner-2.4.0.tar.xz</a>

-   Download MD5 sum: 9ceae166db36448dfbc5825434c2dc08

-   Download size: 232 KB

-   Estimated disk space required: 6.4 MB

-   Estimated build time: 0.2 SBU
</div>

### lxqt-runner Dependencies

#### Required

<a class="xref" href="lxqt-globalkeys.md" title="lxqt-globalkeys-2.4.0">lxqt-globalkeys-2.4.0</a>, <a class="xref" href="lxqt-kwindowsystem.md" title="kwindowsystem-6.26.0 for lxqt">kwindowsystem-6.26.0 for lxqt</a>, and <a class="xref" href="muparser.md" title="muparser-2.3.5">muparser-2.3.5</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-runner {#installation-of-lxqt-runner}

Install <span class="application">lxqt-runner</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="use" lang="en">
## Using lxqt-runner {#using-lxqt-runner}

To use <span class="application">lxqt-runner</span>, simultaneously press the Alt-F2 keys. A dialog window appears in the top center of the screen. When you start typing a command, a list of possible matches appears and changes as you keep typing.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">lxqt-runner</span>
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

  ----------------------------------------------------------- ---------------------------------------------------------------
  <a id="lxqt-runner-prog"></a><span class="command"><span class="term"><strong>lxqt-runner</strong></span></span>   launches a graphical dialog box for quickly running a program
  ----------------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0")

    lxqt-powermanagement-2.4.0

-   [Next](lxqt-themes.md "lxqt-themes-2.4.0")

    lxqt-themes-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
