::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libusb.md "libusb-1.0.30"){accesskey="p"}

    libusb-1.0.30

-   [Next](libxkbcommon.md "libxkbcommon-1.13.2"){accesskey="n"}

    libxkbcommon-1.13.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libuv}libuv-1.52.1 {#libuv-1.52.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libuv {#introduction-to-libuv .sect2}

The [libuv]{.application} package is a multi-platform support library with a focus on asynchronous I/O.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://dist.libuv.org/dist/v1.52.1/libuv-v1.52.1.tar.gz](https://dist.libuv.org/dist/v1.52.1/libuv-v1.52.1.tar.gz){.ulink}

-   Download MD5 sum: db711bbe3822dd4fe51fad0cd78baa57

-   Download size: 1.3 MB

-   Estimated disk space required: 33 MB (with tests and man page)

-   Estimated build time: 0.5 SBU (with tests and man page)
:::

### libuv Dependencies

#### Optional

[sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of libuv {#installation-of-libuv .sect2}

Install [libuv]{.application} by running the following commands:

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

The [**sh autogen.sh**]{.command} command below fails if the ACLOCAL environment variable is set as specified in [Xorg-7](../x/xorg7.md "Introduction to Xorg-7"){.xref}. If it is used, ACLOCAL needs to be unset for this package and then reset for other packages.
:::

``` userinput
sh autogen.sh                              &&
./configure --prefix=/usr --disable-static &&
make 
```

If you installed the optional [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} python module, create the man page:

``` userinput
make man -C docs
```

If you want to run the tests, run: [**make check**]{.command} as a non-root user.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the man page, install it as the `root`{.systemitem} user:

``` root
install -Dm644 docs/build/man/libuv.1 /usr/share/man/man1
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libuv.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/uv]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- --------------------------------------------------------
  []{#libuv.so}[`libuv.so`{.filename}]{.term}   contains API functions for asynchronous I/O operations
  --------------------------------------------- --------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libusb.md "libusb-1.0.30"){accesskey="p"}

    libusb-1.0.30

-   [Next](libxkbcommon.md "libxkbcommon-1.13.2"){accesskey="n"}

    libxkbcommon-1.13.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
