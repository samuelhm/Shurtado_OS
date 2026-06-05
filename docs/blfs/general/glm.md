<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glad.md "Glad-2.0.8")

    Glad-2.0.8

-   [Next](glycin.md "glycin-2.1.1")

    glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GLM-1.0.3 {#glm-1.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLM {#introduction-to-glm}

OpenGL Mathematics (<span class="application">GLM</span>) is a header-only C++ mathematics library for graphics software based on the OpenGL Shading Language (GLSL) specifications. An extension system provides extended capabilities such as matrix transformations and quaternions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/g-truc/glm/archive/1.0.3/glm-1.0.3.tar.gz">https://github.com/g-truc/glm/archive/1.0.3/glm-1.0.3.tar.gz</a>

-   Download MD5 sum: 2192069d8d0091ff1cca041cdcdc85fe

-   Download size: 4.4 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of GLM {#installation-of-glm}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package is unusual as it includes its functionality in header files. We just copy them into position.
</div>

As the <code class="systemitem">root</code> user:

```bash
cp -r glm /usr/include/ &&
cp -r doc /usr/share/doc/glm-1.0.3
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/glm and /usr/share/doc/glm-1.0.3</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glad.md "Glad-2.0.8")

    Glad-2.0.8

-   [Next](glycin.md "glycin-2.1.1")

    glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
