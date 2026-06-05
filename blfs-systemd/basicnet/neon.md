::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libtirpc.md "libtirpc-1.3.7"){accesskey="p"}

    libtirpc-1.3.7

-   [Next](nghttp2.md "nghttp2-1.69.0"){accesskey="n"}

    nghttp2-1.69.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#neon}neon-0.37.1 {#neon-0.37.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to neon {#introduction-to-neon .sect2}

[neon]{.application} is an HTTP and WebDAV client library, with a C interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://notroj.github.io/neon/neon-0.37.1.tar.gz](https://notroj.github.io/neon/neon-0.37.1.tar.gz){.ulink}

-   Download MD5 sum: 5e661a69b52d26d8baab0e61a783d419

-   Download size: 960 KB

-   Estimated disk space required: 84 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
:::

### neon Dependencies

#### Optional

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref} (for some tests), [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (to regenerate the documentation), and [PaKChoiS](https://www.manyfish.co.uk/pakchois/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of neon {#installation-of-neon .sect2}

Install [neon]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --with-ssl       \
            --enable-shared  \
            --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

If you wish to regenerate the documentation, issue:

``` userinput
make docs
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-ssl`*: This switch enables SSL support using [OpenSSL]{.application}. [GnuTLS]{.application} can be used instead, by passing `--with-ssl=gnutls`{.option} and `--with-ca-bundle=/etc/pki/tls/certs/ca-bundle.crt`{.option} to the [**configure**]{.command} script.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--with-libproxy`{.option}: This switch enables support for using libproxy to retrieve proxy server information. Use this switch if you have [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref} installed and wish to use it.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [neon-config]{.segbody}
:::

::: seg
**Installed Library:** [libneon.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/neon and /usr/share/doc/neon-0.37.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------
  []{#neon-config}[[**neon-config**]{.command}]{.term}   is a script that provides information about an installed copy of the neon library
  []{#libneon}[`libneon.so`{.filename}]{.term}           is used as a high-level interface to common HTTP and WebDAV methods
  ------------------------------------------------------ -----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libtirpc.md "libtirpc-1.3.7"){accesskey="p"}

    libtirpc-1.3.7

-   [Next](nghttp2.md "nghttp2-1.69.0"){accesskey="n"}

    nghttp2-1.69.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
