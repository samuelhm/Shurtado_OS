<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](joe.md "JOE-4.6")

    JOE-4.6

-   [Next](mousepad.md "mousepad-0.7.0")

    mousepad-0.7.0

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kate-26.04.1 {#kate-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Kate {#introduction-to-kate}

The <span class="application">Kate</span> package contains an advanced KDE Frameworks-based graphical text editor.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/kate-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/kate-26.04.1.tar.xz</a>

-   Download MD5 sum: 98d611f29f346f37dd843bb44899c22b

-   Download size: 8.2 MB

-   Estimated disk space required: 554 MB

-   Estimated build time: 0.9 SBU (using parallelism=4)
</div>

### Kate Dependencies

#### Required

<a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>
</div>

<div class="installation" lang="en">
## Installation of Kate {#installation-of-kate}

Install <span class="application">Kate</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX  \
      -D CMAKE_BUILD_TYPE=Release          \
      -D BUILD_TESTING=OFF                 \
      -W no-dev .. &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">kate and kwrite</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Several plugins under \$KF6_PREFIX/lib/plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/lib/plugins/ktexteditor, \$KF6_PREFIX/lib/plugins/plasma/dataengine, \$KF6_PREFIX/share/doc/HTML/\*/{kate,katepart,kwrite}, \$KF6_PREFIX/share/{kateproject,katexmltools}, and \$KF6_PREFIX/share/plasma/plasmoids/org.kde.plasma.katesessions</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ------------------------------------
  <a id="kate-prog"></a><span class="command"><span class="term"><strong>kate</strong></span></span>   is an advanced text editor for KDE
  <a id="kwrite"></a><span class="command"><span class="term"><strong>kwrite</strong></span></span>    is a minimal text editor for KDE
  --------------------------------------------- ------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](joe.md "JOE-4.6")

    JOE-4.6

-   [Next](mousepad.md "mousepad-0.7.0")

    mousepad-0.7.0

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
