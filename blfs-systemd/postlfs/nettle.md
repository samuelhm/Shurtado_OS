::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](mitkrb.md "MIT Kerberos V5-1.22.2"){accesskey="p"}

    MIT Kerberos V5-1.22.2

-   [Next](nss.md "NSS-3.124"){accesskey="n"}

    NSS-3.124

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nettle}Nettle-4.0 {#nettle-4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Nettle {#introduction-to-nettle .sect2}

The [Nettle]{.application} package contains a low-level cryptographic library that is designed to fit easily in many contexts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/nettle/nettle-4.0.tar.gz](https://ftpmirror.gnu.org/nettle/nettle-4.0.tar.gz){.ulink}

-   Download MD5 sum: 144401453f9f35e53938bcacfc59800e

-   Download size: 2.5 MB

-   Estimated disk space required: 106 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; both using parallelism=4)
:::

### Nettle Dependencies

#### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (optional for the tests)
:::::

::: {.installation lang="en"}
## Installation of Nettle {#installation-of-nettle .sect2}

Install [Nettle]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so &&
install -v -m755 -d /usr/share/doc/nettle-4.0 &&
install -v -m644 nettle.{html,pdf} /usr/share/doc/nettle-4.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nettle-hash, nettle-lfib-stream, nettle-pbkdf2, pkcs1-conv, and sexp-conv]{.segbody}
:::

::: seg
**Installed Libraries:** [libhogweed.so and libnettle.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/nettle and /usr/share/doc/nettle-4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#nettle-hash}[[**nettle-hash**]{.command}]{.term}                 calculates a hash value using a specified algorithm
  []{#nettle-lfib-stream}[[**nettle-lfib-stream**]{.command}]{.term}   outputs a sequence of pseudorandom (non-cryptographic) bytes, using Knuth's lagged fibonacci generator. The stream is useful for testing, but should not be used to generate cryptographic keys or anything else that needs real randomness
  []{#nettle-pbkdf2}[[**nettle-pbkdf2**]{.command}]{.term}             is a password-based key derivation function that takes a password or a passphrase as input and returns a strengthened password, which is protected against pre-computation attacks by using salting and other expensive computations.
  []{#pkcs1-conv}[[**pkcs1-conv**]{.command}]{.term}                   converts private and public RSA keys from PKCS #1 format to sexp format
  []{#sexp-conv}[[**sexp-conv**]{.command}]{.term}                     converts an s-expression to a different encoding
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mitkrb.md "MIT Kerberos V5-1.22.2"){accesskey="p"}

    MIT Kerberos V5-1.22.2

-   [Next](nss.md "NSS-3.124"){accesskey="n"}

    NSS-3.124

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
