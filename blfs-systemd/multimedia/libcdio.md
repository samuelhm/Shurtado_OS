::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcddb.md "libcddb-1.3.2"){accesskey="p"}

    libcddb-1.3.2

-   [Next](libde265.md "libde265-1.1.0"){accesskey="n"}

    libde265-1.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcdio}libcdio-2.1.0 {#libcdio-2.1.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libcdio {#introduction-to-libcdio .sect2}

The [libcdio]{.application} is a library for CD-ROM and CD image access. The associated [libcdio-cdparanoia]{.application} library reads audio from the CD-ROM directly as data, with no analog step between, and writes the data to a file or pipe as .wav, .aifc or as raw 16 bit linear PCM.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libcdio/libcdio-2.1.0.tar.bz2](https://ftpmirror.gnu.org/libcdio/libcdio-2.1.0.tar.bz2){.ulink}

-   Download MD5 sum: aa7629e8f73662a762f64c444b901055

-   Download size: 1.7 MB

-   Estimated disk space required: 53 MB (both packages, including checks)

-   Estimated build time: 0.2 SBU (using parallelism=4; both packages, including checks)
:::

### Additional Downloads

::: itemizedlist
-   Required file: [https://ftpmirror.gnu.org/libcdio/libcdio-paranoia-10.2+2.0.2.tar.bz2](https://ftpmirror.gnu.org/libcdio/libcdio-paranoia-10.2+2.0.2.tar.bz2){.ulink}
:::

### libcdio Dependencies

#### Optional

[libcddb-1.3.2](libcddb.md "libcddb-1.3.2"){.xref}
::::::

::: {.installation lang="en"}
## Installation of libcdio {#installation-of-libcdio .sect2}

If you are building on an i686 system, fix a build issue caused by large file support:

``` userinput
case $(uname -m) in
   i?86)
      sed '/CDIO_LSEEK/s/lseek64/lseek/'  -i lib/driver/_cdio_generic.c &&
      sed '/CDIO_FSEEK/s/fseeko64/fseek/' -i lib/driver/_cdio_stdio.c   ;;
esac
```

Install [libcdio]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check -k**]{.command}. One test named `realpath`{.filename} is known to fail.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Now install libcdio-paranoia:

``` userinput
tar -xf ../libcdio-paranoia-10.2+2.0.2.tar.bz2 &&
cd libcdio-paranoia-10.2+2.0.2 &&

./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [cdda-player, cd-drive, cd-info, cd-paranoia, cd-read, iso-info, iso-read, and mmc-tool]{.segbody}
:::

::: seg
**Installed Library:** [libcdio.so, libcdio++.so, libcdio_cdda, libcdio_paranoia, libiso9660, libiso9660++, and libudf.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/cdio and /usr/include/cdio++]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------
  []{#cd-drive}[[**cd-drive**]{.command}]{.term}         shows CD-ROM drive characteristics
  []{#cd-info}[[**cd-info**]{.command}]{.term}           shows information about a CD or CD-image
  []{#cd-paranoia}[[**cd-paranoia**]{.command}]{.term}   is an audio CD reading utility which includes extra data verification features
  []{#cd-read}[[**cd-read**]{.command}]{.term}           reads Information from a CD or CD-image
  []{#cdda-player}[[**cdda-player**]{.command}]{.term}   is a simple curses CD player
  []{#iso-info}[[**iso-info**]{.command}]{.term}         shows Information about an ISO 9660 image
  []{#iso-read}[[**iso-read**]{.command}]{.term}         reads portions of an ISO 9660 image
  []{#mmc-tool}[[**mmc-tool**]{.command}]{.term}         issues libcdio multimedia commands
  []{#libcdio.so}[`libcdio.so`{.filename}]{.term}        contains the primary cdio API functions
  ------------------------------------------------------ --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libcddb.md "libcddb-1.3.2"){accesskey="p"}

    libcddb-1.3.2

-   [Next](libde265.md "libde265-1.1.0"){accesskey="n"}

    libde265-1.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
