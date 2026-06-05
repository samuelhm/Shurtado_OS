<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libksba.md "libksba-1.8.0")

    libksba-1.8.0

-   [Next](libmbim.md "libmbim-1.34.0")

    libmbim-1.34.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# liblinear-250 {#liblinear-250}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to liblinear {#introduction-to-liblinear}

This package provides a library for learning linear classifiers for large scale applications. It supports Support Vector Machines (SVM) with L2 and L1 loss, logistic regression, multi class classification and also Linear Programming Machines (L1-regularized SVMs). Its computational complexity scales linearly with the number of training examples making it one of the fastest SVM solvers around.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

After updating this package from <span class="application">liblinear-247</span> or earlier, you need to reinstall <a class="xref" href="../basicnet/nmap.md" title="Nmap-7.99">Nmap-7.99</a> in order to link to the new library.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/cjlin1/liblinear/archive/v250/liblinear-250.tar.gz">https://github.com/cjlin1/liblinear/archive/v250/liblinear-250.tar.gz</a>

-   Download MD5 sum: 53ffb394295c7f766adc200a603d6e0d

-   Download size: 76 KB

-   Estimated disk space required: 712 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of liblinear {#installation-of-liblinear}

Install <span class="application">liblinear</span> by running the following commands:

```bash
make lib
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm644 linear.h /usr/include   &&
install -vm755 liblinear.so.6 /usr/lib &&
ln -sfv liblinear.so.6 /usr/lib/liblinear.so
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblinear.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------
  <a id="liblinear-lib"></a><span class="term"><code class="filename">liblinear.so</code></span>   is a large linear classification library
  ------------------------------------------------------ ------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libksba.md "libksba-1.8.0")

    libksba-1.8.0

-   [Next](libmbim.md "libmbim-1.34.0")

    libmbim-1.34.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
