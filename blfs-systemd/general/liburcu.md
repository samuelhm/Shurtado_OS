::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libunwind.md "libunwind-1.8.3"){accesskey="p"}

    libunwind-1.8.3

-   [Next](libusb.md "libusb-1.0.30"){accesskey="n"}

    libusb-1.0.30

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#liburcu}liburcu-0.15.6 {#liburcu-0.15.6 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to liburcu {#introduction-to-liburcu .sect2}

The [userspace-rcu]{.application} package provides a set of userspace RCU (read-copy-update) libraries. These data synchronization libraries provide read-side access which scales linearly with the number of cores. It does so by allowing multiples copies of a given data structure to live at the same time, and by monitoring the data structure accesses to detect grace periods after which memory reclamation is possible.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://lttng.org/files/urcu/userspace-rcu-0.15.6.tar.bz2](https://lttng.org/files/urcu/userspace-rcu-0.15.6.tar.bz2){.ulink}

-   Download MD5 sum: 08ad35d135f3797d572bc2aa9129abf5

-   Download size: 672 KB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of liburcu {#installation-of-liburcu .sect2}

Install [liburcu]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/liburcu-0.15.6 &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Libraries:** [liburcu.so, liburcu-bp.so, liburcu-cds.so, liburcu-common.so, liburcu-mb.so, liburcu-memb.so, liburcu-qsbr.so, and liburcu-signal.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/urcu and /usr/share/doc/liburcu-0.15.6]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libunwind.md "libunwind-1.8.3"){accesskey="p"}

    libunwind-1.8.3

-   [Next](libusb.md "libusb-1.0.30"){accesskey="n"}

    libusb-1.0.30

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
