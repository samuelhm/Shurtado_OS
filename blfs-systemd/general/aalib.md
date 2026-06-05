::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](graphlib.md "Graphics and Font Libraries"){accesskey="p"}

    Graphics and Font Libraries

-   [Next](babl.md "babl-0.1.126"){accesskey="n"}

    babl-0.1.126

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#aalib}AAlib-1.4rc5 {#aalib-1.4rc5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to AAlib {#introduction-to-aalib .sect2}

[AAlib]{.application} is a library to render any graphic into ASCII Art.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/aa-project/aalib-1.4rc5.tar.gz](https://downloads.sourceforge.net/aa-project/aalib-1.4rc5.tar.gz){.ulink}

-   Download MD5 sum: 9801095c42bba12edebd1902bcf0a990

-   Download size: 388 KB

-   Estimated disk space required: 6.5 MB

-   Estimated build time: 0.1 SBU
:::

### AAlib Dependencies

#### Optional

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, [Xorg Fonts](../x/x7font.md "Xorg Fonts"){.xref} (runtime), [slang-2.3.3](slang.md "slang-2.3.3"){.xref}, and [GPM-1.20.7](gpm.md "GPM-1.20.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of AAlib {#installation-of-aalib .sect2}

Fix a minor problem with the included m4 file:

``` userinput
sed -i -e '/AM_PATH_AALIB,/s/AM_PATH_AALIB/[&]/' aalib.m4
```

Change the default X11 font from [Xorg Legacy Fonts](../x/x7legacy.md "Xorg Legacy"){.xref} to [Xorg Fonts](../x/x7font.md "Xorg Fonts"){.xref}:

``` userinput
sed -e 's/8x13bold/-*-luxi mono-bold-r-normal--13-120-*-*-m-*-*-*/' \
    -i src/aax.c
```

Fix an overuse of some ncurses internal data structures to allow building this package with ncurses-6.5 or later:

``` userinput
sed 's/stdscr->_max\([xy]\) + 1/getmax\1(stdscr)/' \
    -i src/aacurses.c
```

To allow building this package with GCC-14 or later, add some missing `#include`{.literal} directives and fix a bad `return`{.literal} statement to make the code C99-compatible. Then regenerate the [**configure**]{.command} script to ensure the C code for probing system features is C99-compatible as well:

``` userinput
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

Install [AAlib]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr             \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   \
            --with-ncurses=/usr       \
            --disable-static          &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aafire, aainfo, aalib-config, aasavefont, and aatest]{.segbody}
:::

::: seg
**Installed Library:** [libaa.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aafire}[[**aafire**]{.command}]{.term}               is a demo of [AAlib]{.application}, rendering an animated fire in ASCII Art
  []{#aainfo}[[**aainfo**]{.command}]{.term}               provides information for your current settings related to [AAlib]{.application}
  []{#aalib-config}[[**aalib-config**]{.command}]{.term}   provides configuration info for [AAlib]{.application}
  []{#aasavefont}[[**aasavefont**]{.command}]{.term}       saves a font to a file
  []{#aatest}[[**aatest**]{.command}]{.term}               shows the abilities of [AAlib]{.application} in a little test
  []{#libaa}[`libaa.so`{.filename}]{.term}                 is a collection of routines to render any graphical input in portable format to ASCII Art. It can be used through many programs and has a very well documented API, so you can easily put it into your own programs
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](graphlib.md "Graphics and Font Libraries"){accesskey="p"}

    Graphics and Font Libraries

-   [Next](babl.md "babl-0.1.126"){accesskey="n"}

    babl-0.1.126

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
