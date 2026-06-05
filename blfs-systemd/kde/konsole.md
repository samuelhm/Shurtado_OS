<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](khelpcenter.md "khelpcenter-26.04.1")

    khelpcenter-26.04.1

-   [Next](konversation.md "konversation-26.04.1")

    konversation-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Konsole-26.04.1 {#konsole-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Konsole {#introduction-to-konsole}

The <span class="application">Konsole</span> package is a KDE Frameworks-based terminal emulator.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/konsole-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/konsole-26.04.1.tar.xz</a>

-   Download MD5 sum: 2ab7ad9fc4f19a39367ca3a7110ef4ba

-   Download size: 1.8 MB

-   Estimated disk space required: 78 MB

-   Estimated build time: 0.7 SBU (using parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/konsole-adjust_scrollbar-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/konsole-adjust_scrollbar-1.patch</a>
</div>

### Konsole Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>
</div>

<div class="installation" lang="en">
## Installation of Konsole {#installation-of-konsole}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

In non-Plasma environments, the konsole scrollbar and its handle do not display well. This can be fixed by applying the following patch if desired:

```bash
patch -Np1 -i ../konsole-adjust_scrollbar-1.patch
```

The patch makes the scrollbar light gray with a small white border. The handle is dark gray. If desired, the colors may be changed by editing the patch.
</div>

Install <span class="application">Konsole</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">konsole and konsoleprofile</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkdeinit6_konsole.so and libkonsoleprivate.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/doc/HTML/\*/konsole, \$KF6_PREFIX/share/konsole, and \$KF6_PREFIX/share/kxmlgui6/konsole</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------
  <a id="konsole-prog"></a><span class="command"><span class="term"><strong>konsole</strong></span></span>            is a KDE Frameworks-based terminal emulator
  <a id="konsoleprofile"></a><span class="command"><span class="term"><strong>konsoleprofile</strong></span></span>   is a command-line tool to change the current tab's profile options
  ------------------------------------------------------------ --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](khelpcenter.md "khelpcenter-26.04.1")

    khelpcenter-26.04.1

-   [Next](konversation.md "konversation-26.04.1")

    konversation-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
