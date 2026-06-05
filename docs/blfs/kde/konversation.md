<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](konsole.md "Konsole-26.04.1")

    Konsole-26.04.1

-   [Next](libkexiv2.md "libkexiv2-26.04.1")

    libkexiv2-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# konversation-26.04.1 {#konversation-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to konversation {#introduction-to-konversation}

The <span class="application">konversation</span> package is a KDE Frameworks-based IRC client.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/konversation-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/konversation-26.04.1.tar.xz</a>

-   Download MD5 sum: 91e055f3cb0b05c7b808caf382b77c47

-   Download size: 4.3 MB

-   Estimated disk space required: 73 MB

-   Estimated build time: 0.8 SBU (using parallelism=4)
</div>

### konversation Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>
</div>

<div class="installation" lang="en">
## Installation of konversation {#installation-of-konversation}

Install <span class="application">konversation</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">konversation</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/doc/HTML/\*/konversation, and \$KF6_PREFIX/share/konversation</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------- ------------------
  <a id="konversation-prog"></a><span class="command"><span class="term"><strong>konversation</strong></span></span>   is an IRC client
  ------------------------------------------------------------- ------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](konsole.md "Konsole-26.04.1")

    Konsole-26.04.1

-   [Next](libkexiv2.md "libkexiv2-26.04.1")

    libkexiv2-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
