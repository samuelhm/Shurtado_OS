<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](qpdf.md "Qpdf-12.3.2")

    Qpdf-12.3.2

-   [Next](woff2.md "woff2-1.0.2")

    woff2-1.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sassc-3.6.2 {#sassc-3.6.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sassc {#introduction-to-sassc}

SassC is a wrapper around libsass, a CSS pre-processor language.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz">https://github.com/sass/sassc/archive/3.6.2/sassc-3.6.2.tar.gz</a>

-   Download MD5 sum: 4c3b06ce2979f2a9f0a35093e501d8bb

-   Download size: 28 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/sass/libsass/archive/3.6.6/libsass-3.6.6.tar.gz">https://github.com/sass/libsass/archive/3.6.6/libsass-3.6.6.tar.gz</a>

-   Download MD5 sum: afda97284d75a030cabadf5b9f998a3b

-   Download size: 336 KB

-   Estimated disk space required: 135 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
</div>
</div>

<div class="installation" lang="en">
## Installation of sassc {#installation-of-sassc}

First, build the library:

```bash
tar -xf ../libsass-3.6.6.tar.gz &&
pushd libsass-3.6.6 &&

autoreconf -fi &&

./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Build the command line wrapper:

```bash
popd &&
autoreconf -fi &&

./configure --prefix=/usr &&
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
**Installed Programs:** <span class="segbody">sassc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libsass.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/sass</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- ----------------------------------------------------------
  <a id="sassc-prog"></a><span class="command"><span class="term"><strong>sassc</strong></span></span>   provides a command line interface to the libsass library
  ----------------------------------------------- ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qpdf.md "Qpdf-12.3.2")

    Qpdf-12.3.2

-   [Next](woff2.md "woff2-1.0.2")

    woff2-1.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
