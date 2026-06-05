::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0"){accesskey="p"}

    kdsoap-ws-discovery-client-0.4.0

-   [Next](libevent.md "libevent-2.1.12"){accesskey="n"}

    libevent-2.1.12

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ldns}ldns-1.9.0 {#ldns-1.9.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ldns {#introduction-to-ldns .sect2}

[ldns]{.application} is a fast DNS library with the goal to simplify DNS programming and to allow developers to easily create software conforming to current RFCs and Internet drafts. This packages also includes the [**drill**]{.command} tool.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.nlnetlabs.nl/downloads/ldns/ldns-1.9.0.tar.gz](https://www.nlnetlabs.nl/downloads/ldns/ldns-1.9.0.tar.gz){.ulink}

-   Download MD5 sum: 895ccabbeadf67fe72fdf07c6a5e2a1a

-   Download size: 1.2 MB

-   Estimated disk space required: 31 MB (with docs)

-   Estimated build time: 0.2 SBU (with docs)
:::

### ldns Dependencies

#### Optional

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} and [libpcap-1.10.6](libpcap.md "libpcap-1.10.6"){.xref} (for example programs), [SWIG-4.4.1](../general/swig.md "SWIG-4.4.1"){.xref} (for Python bindings), and [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for html documentation)
:::::

::: {.installation lang="en"}
## Installation of ldns {#installation-of-ldns .sect2}

Install [ldns]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --with-drill      &&
make
```

If you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed and want to build html documentation, run the following command:

``` userinput
make doc
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built html documentation, install it by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/doc/ldns-1.9.0 &&
install -v -m644 doc/html/* /usr/share/doc/ldns-1.9.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-drill`*: This option enables building of the [**drill**]{.command} tool (used for obtaining debug information from DNS(SEC))

`--with-examples`{.option}: This option enables building of the example programs.

`--with-pyldns`{.option}: This option enables building of the Python bindings. If you use this option, you will need to add PYTHON=/usr/bin/python3 to the configure line as well.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [drill and ldns-config]{.segbody}
:::

::: seg
**Installed Library:** [libldns.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ldns and /usr/share/doc/ldns-1.9.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#drill}[[**drill**]{.command}]{.term}               is a tool which is similar to [**dig**]{.command} from [BIND Utilities-9.20.20](bind-utils.md "BIND Utilities-9.20.20"){.xref} that queries extensive information from DNS servers
  []{#ldns-config}[[**ldns-config**]{.command}]{.term}   shows the compiler and linker flags needed to link to ldns
  []{#libldns}[`libldns.so`{.filename}]{.term}           provides the [ldns]{.application} API functions to programs
  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0"){accesskey="p"}

    kdsoap-ws-discovery-client-0.4.0

-   [Next](libevent.md "libevent-2.1.12"){accesskey="n"}

    libevent-2.1.12

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
