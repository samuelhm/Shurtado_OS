::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gnupg.md "GnuPG-2.5.20"){accesskey="p"}

    GnuPG-2.5.20

-   [Next](gpgme.md "gpgme-2.1.0"){accesskey="n"}

    gpgme-2.1.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnutls}GnuTLS-3.8.13 {#gnutls-3.8.13 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GnuTLS {#introduction-to-gnutls .sect2}

The [GnuTLS]{.application} package contains libraries and userspace tools which provide a secure layer over a reliable transport layer. Currently the [GnuTLS]{.application} library implements the proposed standards by the IETF's TLS working group. Quoting from the [TLS 1.3 protocol specification](https://datatracker.ietf.org/doc/rfc8446/){.ulink} :

[“ [TLS allows client/server applications to communicate over the Internet in a way that is designed to prevent eavesdropping, tampering, and message forgery.]{.quote} ”]{.quote}

[GnuTLS]{.application} provides support for TLS 1.3, TLS 1.2, TLS 1.1, TLS 1.0, and (optionally) SSL 3.0 protocols. It also supports TLS extensions, including server name and max record size. Additionally, the library supports authentication using the SRP protocol, X.509 certificates, and OpenPGP keys, along with support for the TLS Pre-Shared-Keys (PSK) extension, the Inner Application (TLS/IA) extension, and X.509 and OpenPGP certificate handling.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz](https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz){.ulink}

-   Download MD5 sum: a97671c1839340c6b43c23ccb3237180

-   Download size: 7.0 MB

-   Estimated disk space required: 336 MB (with tests)

-   Estimated build time: 0.6 SBU (add 1.4 SBU for tests; both using parallelism=8)
:::

### GnuTLS Dependencies

#### Required

[Nettle-4.0](nettle.md "Nettle-4.0"){.xref}

#### Recommended

[make-ca-1.16.1](make-ca.md "make-ca-1.16.1"){.xref}, [libunistring-1.4.2](../general/libunistring.md "libunistring-1.4.2"){.xref}, [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, and [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref}

#### Optional

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref} or [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, [Net-tools-2.10](../basicnet/net-tools.md "Net-tools-2.10"){.xref} (used during the test suite), [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (used during the test suite), [autogen](https://ftpmirror.gnu.org/autogen/){.ulink}, [cmocka](https://cmocka.org/){.ulink} and (used during the test suite if the DANE library is built), [leancrypto](https://github.com/smuellerDD/leancrypto){.ulink}, and [Trousers](https://downloads.sourceforge.net/trousers/){.ulink} (Trusted Platform Module support)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Note that if you do not install [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, a version shipped in the [GnuTLS]{.application} tarball will be used instead.
:::
::::::

::: {.installation lang="en"}
## Installation of GnuTLS {#installation-of-gnutls .sect2}

Install [GnuTLS]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr \
            --docdir=/usr/share/doc/gnutls-3.8.13 \
            --with-default-trust-store-pkcs11="pkcs11:" &&
make
```

To test the results, now issue: [**make check**]{.command}.

Now, install the package as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-default-trust-store-pkcs11="pkcs11:"`*: This switch tells gnutls to use the PKCS #11 trust store as the default trust. Omit this switch if [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} is not installed.

`--with-default-trust-store-file=/etc/pki/tls/certs/ca-bundle.crt`{.option}: This switch tells [**configure**]{.command} where to find the legacy CA certificate bundle and to use it instead of PKCS #11 module by default. Use this if [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} is not installed.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.

`--enable-openssl-compatibility`{.option}: Use this switch if you wish to build the OpenSSL compatibility library.

`--without-p11-kit`{.option}: Use this switch if you have not installed [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref}.

`--with-included-unistring`{.option}: This switch uses the bundled version of libunistring, instead of the system one. Use this switch if you have not installed [libunistring-1.4.2](../general/libunistring.md "libunistring-1.4.2"){.xref}.

`--disable-dsa`{.option}: This switch completely disables DSA algorithm support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [certtool, danetool, gnutls-cli, gnutls-cli-debug, gnutls-serv, ocsptool, p11tool, psktool, and srptool]{.segbody}
:::

::: seg
**Installed Libraries:** [libgnutls.so, libgnutls-dane.so, libgnutlsxx.so, and libgnutls-openssl.so (optional)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gnutls and /usr/share/doc/gnutls-3.8.13]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  []{#certtool}[[**certtool**]{.command}]{.term}                   is used to generate X.509 certificates, certificate requests, and private keys
  []{#danetool}[[**danetool**]{.command}]{.term}                   is a tool used to generate and check DNS resource records for the DANE protocol
  []{#gnutls-cli}[[**gnutls-cli**]{.command}]{.term}               is a simple client program to set up a TLS connection to some other computer
  []{#gnutls-cli-debug}[[**gnutls-cli-debug**]{.command}]{.term}   is a simple client program to set up a TLS connection to some other computer and produces very verbose progress results
  []{#gnutls-serv}[[**gnutls-serv**]{.command}]{.term}             is a simple server program that listens to incoming TLS connections
  []{#ocsptool}[[**ocsptool**]{.command}]{.term}                   is a program that can parse and print information about OCSP requests/responses, generate requests and verify responses
  []{#p11tool}[[**p11tool**]{.command}]{.term}                     is a program that allows handling data from PKCS #11 smart cards and security modules
  []{#psktool}[[**psktool**]{.command}]{.term}                     is a simple program that generates random keys for use with TLS-PSK
  []{#srptool}[[**srptool**]{.command}]{.term}                     is a simple program that emulates the programs in the Stanford SRP (Secure Remote Password) libraries using GnuTLS
  []{#libgnutls}[`libgnutls.so`{.filename}]{.term}                 contains the core API functions and X.509 certificate API functions
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnupg.md "GnuPG-2.5.20"){accesskey="p"}

    GnuPG-2.5.20

-   [Next](gpgme.md "gpgme-2.1.0"){accesskey="n"}

    gpgme-2.1.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
