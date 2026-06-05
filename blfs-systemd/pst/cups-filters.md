::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups-browsed.md "cups-browsed-2.1.1"){accesskey="p"}

    cups-browsed-2.1.1

-   [Next](gs.md "ghostscript-10.07.1"){accesskey="n"}

    ghostscript-10.07.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cups-filters}cups-filters-2.0.1 {#cups-filters-2.0.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to CUPS Filters {#introduction-to-cups-filters .sect2}

The [CUPS Filters]{.application} package is only needed to adapt [libcupsfilters-2.1.1](libcupsfilters.md "libcupsfilters-2.1.1"){.xref} and [libppd-2.1.1](libppd.md "libppd-2.1.1"){.xref} filter functions for cups-2.x. It should not be needed for cups-3.x.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/OpenPrinting/cups-filters/releases/download/2.0.1/cups-filters-2.0.1.tar.xz](https://github.com/OpenPrinting/cups-filters/releases/download/2.0.1/cups-filters-2.0.1.tar.xz){.ulink}

-   Download MD5 sum: b40d0f135af414666e1c3917983a1bb3

-   Download size: 440 KB

-   Estimated disk space required: 9.0 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/cups-filters-2.0.1-security_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/cups-filters-2.0.1-security_fix-1.patch){.ulink}
:::

### CUPS Filters Dependencies

#### Required

[libcupsfilters-2.1.1](libcupsfilters.md "libcupsfilters-2.1.1"){.xref} and [libppd-2.1.1](libppd.md "libppd-2.1.1"){.xref}

#### Optional (runtime)

[cups-browsed-2.1.1](cups-browsed.md "cups-browsed-2.1.1"){.xref} (if you need Network Discovery capabilities)
::::::

::: {.installation lang="en"}
## Installation of CUPS Filters {#installation-of-cups-filters .sect2}

First, fix a problem when building with gcc-15:

``` userinput
sed -i '/proc_func)()/s/()/(FILE*, FILE*, void*)/' filter/foomatic-rip/process.h
```

Next, fix a security vulnerability:

``` userinput
patch -Np1 -i ../cups-filters-2.0.1-security_fix-1.patch
```

Install [CUPS Filters]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/cups-filters-2.0.1 &&
make
```

This package does not come with a functional test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [driverless, driverless-fax, and foomatic-rip]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cups/{backend,driver,filter}, /usr/share/doc/cups-filters-2.0.1, and /usr/share/ppd/cupsfilters]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------
  []{#driverless}[[**driverless**]{.command}]{.term}           is a PPD generator utility for driverless printing
  []{#driverless-fax}[[**driverless-fax**]{.command}]{.term}   is a wrapper to [**driverless**]{.command} for FAX type devices
  []{#foomatic-rip}[[**foomatic-rip**]{.command}]{.term}       is a universal print filter/RIP wrapper which can be used as CUPS filter or stand-alone for spooler-less, direct printing
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cups-browsed.md "cups-browsed-2.1.1"){accesskey="p"}

    cups-browsed-2.1.1

-   [Next](gs.md "ghostscript-10.07.1"){accesskey="n"}

    ghostscript-10.07.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
