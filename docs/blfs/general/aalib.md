<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](graphlib.md "Graphics and Font Libraries")

    Graphics and Font Libraries

-   [Next](babl.md "babl-0.1.126")

    babl-0.1.126

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# AAlib-1.4rc5 {#aalib-1.4rc5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to AAlib {#introduction-to-aalib}

<span class="application">AAlib</span> is a library to render any graphic into ASCII Art.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/aa-project/aalib-1.4rc5.tar.gz">https://downloads.sourceforge.net/aa-project/aalib-1.4rc5.tar.gz</a>

-   Download MD5 sum: 9801095c42bba12edebd1902bcf0a990

-   Download size: 388 KB

-   Estimated disk space required: 6.5 MB

-   Estimated build time: 0.1 SBU
</div>

### AAlib Dependencies

#### Optional

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, <a class="xref" href="../x/x7font.md" title="Xorg Fonts">Xorg Fonts</a> (runtime), <a class="xref" href="slang.md" title="slang-2.3.3">slang-2.3.3</a>, and <a class="xref" href="gpm.md" title="GPM-1.20.7">GPM-1.20.7</a>
</div>

<div class="installation" lang="en">
## Installation of AAlib {#installation-of-aalib}

Fix a minor problem with the included m4 file:

```bash
sed -i -e '/AM_PATH_AALIB,/s/AM_PATH_AALIB/[&]/' aalib.m4
```

Change the default X11 font from <a class="xref" href="../x/x7legacy.md" title="Xorg Legacy">Xorg Legacy Fonts</a> to <a class="xref" href="../x/x7font.md" title="Xorg Fonts">Xorg Fonts</a>:

```bash
sed -e 's/8x13bold/-*-luxi mono-bold-r-normal--13-120-*-*-m-*-*-*/' \
    -i src/aax.c
```

Fix an overuse of some ncurses internal data structures to allow building this package with ncurses-6.5 or later:

```bash
sed 's/stdscr->_max\([xy]\) + 1/getmax\1(stdscr)/' \
    -i src/aacurses.c
```

To allow building this package with GCC-14 or later, add some missing <code class="literal">#include</code> directives and fix a bad <code class="literal">return</code> statement to make the code C99-compatible. Then regenerate the <span class="command"><strong>configure</strong></span> script to ensure the C code for probing system features is C99-compatible as well:

```bash
sed -i '1i#include <stdlib.h>'                            \
    src/aa{fire,info,lib,linuxkbd,savefont,test,regist}.c &&
sed -i '1i#include <string.h>'                            \
    src/aa{kbdreg,moureg,test,regist}.c                   &&
sed -i '/X11_KBDDRIVER/a#include <X11/Xutil.h>'           \
    src/aaxkbd.c                                          &&
sed -i '/rawmode_init/,/^}/s/return;/return 0;/'          \
    src/aalinuxkbd.c                                      &&
autoconf
```

Install <span class="application">AAlib</span> by running the following commands:

```bash
./configure --prefix=/usr             \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   \
            --with-ncurses=/usr       \
            --disable-static          &&
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
**Installed Programs:** <span class="segbody">aafire, aainfo, aalib-config, aasavefont, and aatest</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libaa.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="aafire"></a><span class="command"><span class="term"><strong>aafire</strong></span></span>               is a demo of <span class="application">AAlib</span>, rendering an animated fire in ASCII Art
  <a id="aainfo"></a><span class="command"><span class="term"><strong>aainfo</strong></span></span>               provides information for your current settings related to <span class="application">AAlib</span>
  <a id="aalib-config"></a><span class="command"><span class="term"><strong>aalib-config</strong></span></span>   provides configuration info for <span class="application">AAlib</span>
  <a id="aasavefont"></a><span class="command"><span class="term"><strong>aasavefont</strong></span></span>       saves a font to a file
  <a id="aatest"></a><span class="command"><span class="term"><strong>aatest</strong></span></span>               shows the abilities of <span class="application">AAlib</span> in a little test
  <a id="libaa"></a><span class="term"><code class="filename">libaa.so</code></span>                 is a collection of routines to render any graphical input in portable format to ASCII Art. It can be used through many programs and has a very well documented API, so you can easily put it into your own programs
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](graphlib.md "Graphics and Font Libraries")

    Graphics and Font Libraries

-   [Next](babl.md "babl-0.1.126")

    babl-0.1.126

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
