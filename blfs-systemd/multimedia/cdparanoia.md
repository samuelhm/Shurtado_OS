::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](audacious.md "Audacious-4.6"){accesskey="p"}

    Audacious-4.6

-   [Next](kwave.md "kwave-26.04.1"){accesskey="n"}

    kwave-26.04.1

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cdparanoia}CDParanoia-III-10.2 {#cdparanoia-iii-10.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to CDParanoia {#introduction-to-cdparanoia .sect2}

The [CDParanoia]{.application} package contains a CD audio extraction tool. This is useful for extracting `.wav`{.filename} files from audio CDs. A CDDA capable CDROM drive is needed. Practically all drives supported by Linux can be used.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz](https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz){.ulink}

-   Download MD5 sum: b304bbe8ab63373924a744eac9ebc652

-   Download size: 179 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/cdparanoia-III-10.2-gcc_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/cdparanoia-III-10.2-gcc_fixes-1.patch){.ulink}
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/cdparanoia](https://wiki.linuxfromscratch.org/blfs/wiki/cdparanoia){.ulink}
::::::

:::: {.installation lang="en"}
## Installation of CDParanoia {#installation-of-cdparanoia .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
:::

Install [CDParanoia]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../cdparanoia-III-10.2-gcc_fixes-1.patch &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make -j1
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
chmod -v 755 /usr/lib/libcdda_*.so.0.10.2 &&
rm -fv /usr/lib/libcdda_*.a
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [cdparanoia]{.segbody}
:::

::: seg
**Installed Libraries:** [libcdda_interface.so and libcdda_paranoia.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cdparanoia-prog}[[**cdparanoia**]{.command}]{.term}         is used for 'ripping' an audio-cd. Ripping is the process of digitally extracting music from an audio CD
  []{#libcdda_interface}[`libcdda_interface`{.filename}]{.term}   contains functions used by [**cdparanoia**]{.command}, as well as other packages, which can automatically identify if a CD device is CDDA compatible
  []{#libcdda_paranoia}[`libcdda_paranoia`{.filename}]{.term}     contains functions used by [**cdparanoia**]{.command}, as well as other packages, which provide data verification, synchronization, error handling and scratch reconstruction capability
  --------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](audacious.md "Audacious-4.6"){accesskey="p"}

    Audacious-4.6

-   [Next](kwave.md "kwave-26.04.1"){accesskey="n"}

    kwave-26.04.1

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
