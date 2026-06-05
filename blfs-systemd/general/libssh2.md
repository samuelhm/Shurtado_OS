::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libsigsegv.md "libsigsegv-2.15"){accesskey="p"}

    libsigsegv-2.15

-   [Next](libstatgrab.md "libstatgrab-0.92.1"){accesskey="n"}

    libstatgrab-0.92.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libssh2}libssh2-1.11.1 {#libssh2-1.11.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libssh2 {#introduction-to-libssh2 .sect2}

[Libssh2]{.application} package is a client-side C library implementing the SSH2 protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.libssh2.org/download/libssh2-1.11.1.tar.gz](https://www.libssh2.org/download/libssh2-1.11.1.tar.gz){.ulink}

-   Download MD5 sum: 38857d10b5c5deb198d6989dacace2e6

-   Download size: 1.0 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### libssh2 Dependencies

#### Optional

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} (can be used instead of the [**configure**]{.command} script), [libgcrypt-1.12.2](libgcrypt.md "libgcrypt-1.12.2"){.xref} (can be used instead of OpenSSL), [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} (for some tests), and [Docker](https://www.docker.com){.ulink} (for some tests)
:::::

::: {.installation lang="en"}
## Installation of libssh2 {#installation-of-libssh2 .sect2}

Install [libssh2]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr          \
            --disable-docker-tests \
            --disable-static       &&
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

*`--disable-docker-tests`*: Disable the tests requiring Docker, which is beyond the scope of BLFS. Remove this switch if you've installed Docker and you wish to run the test suite.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libssh2.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------
  []{#libssh2-lib}[`libssh2.so`{.filename}]{.term}   contains functions to use the SSH2 protocol
  -------------------------------------------------- ---------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libsigsegv.md "libsigsegv-2.15"){accesskey="p"}

    libsigsegv-2.15

-   [Next](libstatgrab.md "libstatgrab-0.92.1"){accesskey="n"}

    libstatgrab-0.92.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
