::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](neon.md "neon-0.37.1"){accesskey="p"}

    neon-0.37.1

-   [Next](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){accesskey="n"}

    rpcsvc-proto-1.4.4

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nghttp2}nghttp2-1.69.0 {#nghttp2-1.69.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to nghttp2 {#introduction-to-nghttp2 .sect2}

[nghttp2]{.application} is an implementation of HTTP/2 and its header compression algorithm, HPACK.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/nghttp2/nghttp2/releases/download/v1.69.0/nghttp2-1.69.0.tar.xz](https://github.com/nghttp2/nghttp2/releases/download/v1.69.0/nghttp2-1.69.0.tar.xz){.ulink}

-   Download MD5 sum: 7015bee1f5a24012b848a98bfe4864b1

-   Download size: 1.7 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.1 SBU
:::

### nghttp2 Dependencies

#### Recommended

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

The following are only used if building the full package instead of only the main libraries: [c-ares-1.34.6](c-ares.md "c-ares-1.34.6"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, [libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [jemalloc](https://jemalloc.net/){.ulink}, [libev](http://software.schmorp.de/pkg/libev.md){.ulink}, [mruby](https://mruby.org/){.ulink}, and [Spdylay](https://tatsuhiro-t.github.io/spdylay/){.ulink}.
:::::

::: {.installation lang="en"}
## Installation of nghttp2 {#installation-of-nghttp2 .sect2}

Install [nghttp2]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --disable-static  \
            --enable-lib-only \
            --docdir=/usr/share/doc/nghttp2-1.69.0 &&
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

*`--enable-lib-only`*: only build libnghttp2. Omit this switch if you'd like to build the example applications, Python bindings, or the C++ asio library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libnghttp2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/nghttp2, /usr/share/nghttp2, and /usr/share/doc/nghttp2-1.69.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------
  []{#libnghttp2}[`libnghttp2.so`{.filename}]{.term}   an implementation of the Hypertext Transfer Protocol version 2 in C
  ---------------------------------------------------- ---------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](neon.md "neon-0.37.1"){accesskey="p"}

    neon-0.37.1

-   [Next](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){accesskey="n"}

    rpcsvc-proto-1.4.4

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
