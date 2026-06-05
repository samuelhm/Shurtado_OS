<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kmix.md "KMix-26.04.1")

    KMix-26.04.1

-   [Next](konsole.md "Konsole-26.04.1")

    Konsole-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# khelpcenter-26.04.1 {#khelpcenter-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Khelpcenter {#introduction-to-khelpcenter}

<span class="application">Khelpcenter</span> is an application that shows documentation for KDE Applications as well as displays manual and info pages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/khelpcenter-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/khelpcenter-26.04.1.tar.xz</a>

-   Download MD5 sum: 63b4932a0a02bf34a6b49a75bf1732bc

-   Download size: 4.1 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
</div>

### Khelpcenter Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="../general/xapian.md" title="Xapian-2.0.0">xapian-2.0.0</a>

#### Recommended

<a class="xref" href="../x/qtwebengine.md" title="QtWebEngine-6.11.1">qtwebengine-6.11.1</a>

#### Optional (Runtime)

<a class="xref" href="kio-extras.md" title="kio-extras-26.04.1">kio-extras-26.04.1</a> (for displaying man pages and info pages)
</div>

<div class="installation" lang="en">
## Installation of Khelpcenter {#installation-of-khelpcenter}

Install <span class="application">khelpcenter</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
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
**Installed Program:** <span class="segbody">khelpcenter</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/khelpcenter, \$KF6_PREFIX/share/doc/HTML/\*/{khelpcenter,fundamentals,onlinehelp}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- -----------------------------------------
  <a id="khelpcenter-prog"></a><span class="command"><span class="term"><strong>khelpcenter</strong></span></span>   is the help viewer for KDE applications
  ----------------------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kmix.md "KMix-26.04.1")

    KMix-26.04.1

-   [Next](konsole.md "Konsole-26.04.1")

    Konsole-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
