::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libcap.md "Libcap-2.78"){accesskey="p"}

    Libcap-2.78

-   [Next](shadow.md "Shadow-4.19.4"){accesskey="n"}

    Shadow-4.19.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libxcrypt}8.28. Libxcrypt-4.5.2 {#libxcrypt-4.5.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Libxcrypt package contains a modern library for one-way hashing of passwords.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [14 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.28.1. Installation of Libxcrypt {#installation-of-libxcrypt .sect2}

First, make a fix required by glibc-2.43 and later:

``` userinput
sed -i '/strchr/s/const//' lib/crypt-{sm3,gost}-yescrypt.c
```

Prepare Libxcrypt for compilation:

``` userinput
./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens
```

::: variablelist
**The meaning of the new configure options:**

[*`--enable-hashes=strong,glibc`*]{.term}

:   Build strong hash algorithms recommended for security use cases, and the hash algorithms provided by traditional Glibc `libcrypt`{.systemitem} for compatibility.

[*`--enable-obsolete-api=no`*]{.term}

:   Disable obsolete API functions. They are not needed for a modern Linux system built from source.

[*`--disable-failure-tokens`*]{.term}

:   Disable failure token feature. It\'s needed for compatibility with the traditional hash libraries of some platforms, but a Linux system based on Glibc does not need it.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The instructions above disabled obsolete API functions since no package installed by compiling from sources would link against them at runtime. However, the only known binary-only applications that link against these functions require ABI version 1. If you must have such functions because of some binary-only application or to be compliant with LSB, build the package again with the following commands:

``` userinput
make distclean
./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=glibc  \
            --disable-static             \
            --disable-failure-tokens
make
cp -av --remove-destination .libs/libcrypt.so.1* /usr/lib
```
:::
:::::

::::::: {.content lang="en"}
## []{#contents-libxcrypt}8.28.2. Contents of Libxcrypt {#contents-of-libxcrypt .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed libraries:** [libcrypt.so]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  --------------------------------------------- --------------------------------------
  []{#libcrypt}[`libcrypt`{.filename}]{.term}   Contains functions to hash passwords
  --------------------------------------------- --------------------------------------
:::
:::::::
::::::::::::::::

::: navfooter
-   [Prev](libcap.md "Libcap-2.78"){accesskey="p"}

    Libcap-2.78

-   [Next](shadow.md "Shadow-4.19.4"){accesskey="n"}

    Shadow-4.19.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
