::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](plasma-activities-stats.md "plasma-activities-stats-6.6.5"){accesskey="p"}

    plasma-activities-stats-6.6.5

-   [Next](okular.md "okular-26.04.1"){accesskey="n"}

    okular-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kio-extras}kio-extras-26.04.1 {#kio-extras-26.04.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kio-extras {#introduction-to-kio-extras .sect2}

The [kio-extras]{.application} package contains additional components to increase the functionality of the KDE resource and network access abstractions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/kio-extras-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/kio-extras-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 48cab927f6abf6083536f568fbe5c2e6

-   Download size: 5.3 MB

-   Estimated disk space required: 95 MB

-   Estimated build time: 0.5 SBU (using parallelism=4)
:::

### kio-extras Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [kdsoap-ws-discovery-client-0.4.0](../basicnet/kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [plasma-activities-stats-6.6.5](plasma-activities-stats.md "plasma-activities-stats-6.6.5"){.xref}, and [qcoro-0.13.0](../general/qcoro.md "qcoro-0.13.0"){.xref}

#### Recommended

[libkexiv2-26.04.1](libkexiv2.md "libkexiv2-26.04.1"){.xref}

#### Optional

[libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [taglib-2.3](../multimedia/taglib.md "Taglib-2.3"){.xref}, [libappimage](https://github.com/AppImageCommunity/libappimage){.ulink}, [libimobiledevice](https://libimobiledevice.org/){.ulink}, [libmtp](https://libmtp.sourceforge.net/){.ulink}, [libplist](https://github.com/libimobiledevice/libplist){.ulink}, [libssh](https://www.libssh.org/){.ulink}, and [OpenEXR](https://www.openexr.com/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of kio-extras {#installation-of-kio-extras .sect2}

Install [kio-extras]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libkioarchive6.so and 33 plugins]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/KioArchive6, \$KF6_PREFIX/lib/cmake/KioArchive6, and \$KF6_PREFIX/share/doc/HTML/en/kioworker6]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](plasma-activities-stats.md "plasma-activities-stats-6.6.5"){accesskey="p"}

    plasma-activities-stats-6.6.5

-   [Next](okular.md "okular-26.04.1"){accesskey="n"}

    okular-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
