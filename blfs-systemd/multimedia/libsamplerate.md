::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libplacebo.md "libplacebo-7.360.1"){accesskey="p"}

    libplacebo-7.360.1

-   [Next](libsndfile.md "libsndfile-1.2.2"){accesskey="n"}

    libsndfile-1.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsamplerate}libsamplerate-0.2.2 {#libsamplerate-0.2.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsamplerate {#introduction-to-libsamplerate .sect2}

[libsamplerate]{.application} is a sample rate converter for audio.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libsndfile/libsamplerate/releases/download/0.2.2/libsamplerate-0.2.2.tar.xz](https://github.com/libsndfile/libsamplerate/releases/download/0.2.2/libsamplerate-0.2.2.tar.xz){.ulink}

-   Download MD5 sum: 97c010fc25156c33cddc272c1935afab

-   Download size: 3.2 MB

-   Estimated disk space required: 15 MB (add 2 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests)
:::

### libsamplerate Dependencies

#### Optional

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}, and [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref} (for tests)
:::::

::: {.installation lang="en"}
## Installation of libsamplerate {#installation-of-libsamplerate .sect2}

Install [libsamplerate]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libsamplerate-0.2.2 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libsamplerate.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libsamplerate-0.2.2]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](libplacebo.md "libplacebo-7.360.1"){accesskey="p"}

    libplacebo-7.360.1

-   [Next](libsndfile.md "libsndfile-1.2.2"){accesskey="n"}

    libsndfile-1.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
