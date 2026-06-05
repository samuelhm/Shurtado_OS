::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](Python.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](util-linux.md "Util-linux-2.42.1"){accesskey="n"}

    Util-linux-2.42.1

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-texinfo}7.11. Texinfo-7.3 {#texinfo-7.3 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Texinfo package contains programs for reading, writing, and converting info pages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [152 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 7.11.1. Installation of Texinfo {#installation-of-texinfo .sect2}

Prepare Texinfo for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```
:::

::: {.content lang="en"}
Details on this package are located in [Section 8.72.2, "Contents of Texinfo."](../chapter08/texinfo.md#contents-texinfo "8.72.2. Contents of Texinfo"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](Python.md "Python-3.14.5"){accesskey="p"}

    Python-3.14.5

-   [Next](util-linux.md "Util-linux-2.42.1"){accesskey="n"}

    Util-linux-2.42.1

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
