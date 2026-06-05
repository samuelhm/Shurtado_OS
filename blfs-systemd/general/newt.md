<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](mypaint-brushes.md "mypaint-brushes-2.0.2")

    mypaint-brushes-2.0.2

-   [Next](opencv.md "opencv-4.13.0")

    opencv-4.13.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# newt-0.52.25 {#newt-0.52.25}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to newt {#introduction-to-newt}

<span class="application">Newt</span> is a programming library for color text mode, widget based user interfaces. It can be used to add stacked windows, entry widgets, checkboxes, radio buttons, labels, plain text fields, scrollbars, etc., to text mode user interfaces. <span class="application">Newt</span> is based on the S-Lang library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://releases.pagure.org/newt/newt-0.52.25.tar.gz">https://releases.pagure.org/newt/newt-0.52.25.tar.gz</a>

-   Download MD5 sum: cca66ed1d8774fb9e3f6a33525de416d

-   Download size: 176 KB

-   Estimated disk space required: 3.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Newt Dependencies

#### Required

<a class="xref" href="popt.md" title="Popt-1.19">popt-1.19</a> and <a class="xref" href="slang.md" title="slang-2.3.3">slang-2.3.3</a>

#### Recommended

<a class="xref" href="gpm.md" title="GPM-1.20.7">GPM-1.20.7</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of newt {#installation-of-newt}

Install <span class="application">newt</span> by running the following command:

```bash
sed -e '/install -m 644 $(LIBNEWT)/ s/^/#/' \
    -e '/$(LIBNEWT):/,/rv/ s/^/#/'          \
    -e 's/$(LIBNEWT)/$(LIBNEWTSH)/g'        \
    -i Makefile.in                          &&

./configure --prefix=/usr      \
            --with-gpm-support &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -e ... -i Makefile.in</strong></span>: Disables installation of a static library.

*`--with-gpm-support`*: This switch enables mouse support for newt applications through GPM.

*`--with-python=python3.14`*: By giving explicitly the name of the directory where python modules reside, this switch prevents building the python2 module.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">whiptail</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libnewt.so, whiptcl.so, and /usr/lib/python3.14/site-packages/\_snack.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------
  <a id="whiptail-prog"></a><span class="command"><span class="term"><strong>whiptail</strong></span></span>   displays dialog boxes from shell scripts
  <a id="libnewt-lib"></a><span class="term"><code class="filename">libnewt.so</code></span>      is the library for color text mode, widget based user interfaces
  ----------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mypaint-brushes.md "mypaint-brushes-2.0.2")

    mypaint-brushes-2.0.2

-   [Next](opencv.md "opencv-4.13.0")

    opencv-4.13.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
