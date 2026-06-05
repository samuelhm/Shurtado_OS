::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1"){accesskey="p"}

    intel-vaapi-driver-2.4.1

-   [Next](libao.md "Libao-1.2.0"){accesskey="n"}

    Libao-1.2.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#liba52}Liba52-0.8.0 {#liba52-0.8.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Liba52 {#introduction-to-liba52 .sect2}

[liba52]{.application} is a free library for decoding ATSC A/52 (also known as AC-3) streams. The A/52 standard is used in a variety of applications, including digital television and DVD.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://distfiles.adelielinux.org/source/a52dec/a52dec-0.8.0.tar.gz](https://distfiles.adelielinux.org/source/a52dec/a52dec-0.8.0.tar.gz){.ulink}

-   Download MD5 sum: 4debeed0257f5312e84d92711a5cfcec

-   Download size: 448 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Optional

[djbfft](https://cr.yp.to/djbfft.md){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/liba52](https://wiki.linuxfromscratch.org/blfs/wiki/liba52){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Liba52 {#installation-of-liba52 .sect2}

Install [liba52]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --enable-shared         \
            --disable-static        \
            CFLAGS="${CFLAGS:--g -O3} -fPIC" &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
cp liba52/a52_internal.h /usr/include/a52dec &&
install -v -m644 -D doc/liba52.txt \
    /usr/share/doc/liba52-0.8.0/liba52.txt
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`CFLAGS="${CFLAGS:--g -O3} -fPIC"`*: This appends `-fPIC`{.option} to `CFLAGS`{.envar} but use `-g -O3`{.option} (the default of this package) instead of an empty string when `CFLAGS`{.envar} is not set. This is needed to compile [liba52]{.application} without runtime text relocation. Runtime text relocation is prohibited on x86_64 so `-fPIC`{.option} is strictly required. On 32-bit x86 runtime text relocation is allowed but it's insecure and it may waste physical RAM, so `-fPIC`{.option} is still better.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

[**cp liba52/a52_internal.h ...**]{.command}: Copying this header file into /usr/include/a52dec allows some other programs (such as [xine-lib]{.application}) to compile and link against a system installed [liba52]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [a52dec and extract_a52]{.segbody}
:::

::: seg
**Installed Library:** [liba52.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/a52dec and /usr/share/doc/liba52-0.8.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------
  []{#a52dec}[[**a52dec**]{.command}]{.term}             plays ATSC A/52 audio streams
  []{#extract_a52}[[**extract_a52**]{.command}]{.term}   extracts ATSC A/52 audio from an MPEG stream
  []{#liba52-lib}[`liba52.so`{.filename}]{.term}         provides functions for the programs dealing with ATSC A/52 streams
  ------------------------------------------------------ --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1"){accesskey="p"}

    intel-vaapi-driver-2.4.1

-   [Next](libao.md "Libao-1.2.0"){accesskey="n"}

    Libao-1.2.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
