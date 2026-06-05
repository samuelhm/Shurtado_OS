::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){accesskey="p"}

    rpcsvc-proto-1.4.4

-   [Next](textweb.md "Text Web Browsers"){accesskey="n"}

    Text Web Browsers

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#serf}Serf-1.3.10 {#serf-1.3.10 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Serf {#introduction-to-serf .sect2}

The [Serf]{.application} package contains a C-based HTTP client library built upon the Apache Portable Runtime (APR) library. It multiplexes connections, running the read/write communication asynchronously. Memory copies and transformations are kept to a minimum to provide high performance operation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/serf/serf-1.3.10.tar.bz2](https://archive.apache.org/dist/serf/serf-1.3.10.tar.bz2){.ulink}

-   Download MD5 sum: 5320087299084c297eff8e1dacfab1af

-   Download size: 148 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### Serf Dependencies

#### Required

[Apr-Util-1.6.3](../general/apr-util.md "Apr-Util-1.6.3"){.xref} and [SCons-4.10.1](../general/scons.md "SCons-4.10.1"){.xref}

#### Optional

[MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} (for GSSAPI support)
:::::

::: {.installation lang="en"}
## Installation of Serf {#installation-of-serf .sect2}

Install [Serf]{.application} by running the following commands:

``` userinput
sed -i "/Append/s:RPATH=libdir,::"          SConstruct &&
sed -i "/Default/s:lib_static,::"           SConstruct &&
sed -i "/Alias/s:install_static,::"         SConstruct &&
sed -e 's/nm->d.ia5->length/ASN1_STRING_length(nm->d.ia5)/'                \
    -e 's/nm->d.ia5->data/(const char *)ASN1_STRING_get0_data(nm->d.ia5)/' \
    -i buckets/ssl_buckets.c                           &&


scons PREFIX=/usr
```

This package does not come with a functional test suite.

Now, as the `root`{.systemitem} user:

``` root
scons PREFIX=/usr install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i "..."**]{.command}: The first command removes the runtime path from a shared library and the next two commands disable building and installing of the static library. The fourth command corrects for changes in OpenSSL-4.

`GSSAPI=/usr`{.option}: Use this switch if you have installed a GSSAPI library and you want [serf]{.application} to use it.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libserf-1.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/serf-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------
  []{#libserf-1}[`libserf-1.so`{.filename}]{.term}   contains the [Serf]{.application} API functions
  -------------------------------------------------- -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){accesskey="p"}

    rpcsvc-proto-1.4.4

-   [Next](textweb.md "Text Web Browsers"){accesskey="n"}

    Text Web Browsers

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
