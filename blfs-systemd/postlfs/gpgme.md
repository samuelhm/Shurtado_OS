::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gnutls.md "GnuTLS-3.8.13"){accesskey="p"}

    GnuTLS-3.8.13

-   [Next](gpgmepp.md "gpgmepp-2.1.0"){accesskey="n"}

    gpgmepp-2.1.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gpgme}gpgme-2.1.0 {#gpgme-2.1.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gpgme {#introduction-to-gpgme .sect2}

The [gpgme]{.application} package is a C library that allows cryptography support to be added to a program. It is designed to make access to public key crypto engines like [GnuPG]{.application} or GpgSM easier for applications. [gpgme]{.application} provides a high-level crypto API for encryption, decryption, signing, signature verification and key management.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-2.1.0.tar.bz2](https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-2.1.0.tar.bz2){.ulink}

-   Download MD5 sum: 0dd5144452ccc976f581c943d31e2b30

-   Download size: 1.4 MB

-   Estimated disk space required: 29 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests and parallelism=4)
:::

### gpgme Dependencies

#### Required

[libassuan-3.0.2](../general/libassuan.md "libassuan-3.0.2"){.xref}

#### Recommended

[GnuPG-2.5.20](gnupg.md "GnuPG-2.5.20"){.xref} (as per upstream recommendation)

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of gpgme {#installation-of-gpgme .sect2}

Install [gpgme]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

../configure --prefix=/usr --disable-static &&
make
```

To test the results, you should have [GnuPG-2.5.20](gnupg.md "GnuPG-2.5.20"){.xref} installed. If so, run:

``` userinput
make -k check
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--disable-gpg-test`{.option}: Use this switch if [GnuPG-2.5.20](gnupg.md "GnuPG-2.5.20"){.xref} is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gnupg-key-manage, gpgme-json, and gpgme-tool]{.segbody}
:::

::: seg
**Installed Libraries:** [libgpgme.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/common-lisp/source/gpgme]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  []{#gnupg-key-manage}[[**gnupg-key-manage**]{.command}]{.term}   performs a variety of operations on GPG keys, including identifying keys and deleting them
  []{#gpgme-json}[[**gpgme-json**]{.command}]{.term}               outputs [gpgme]{.application} commands in JSON format
  []{#gpgme-tool}[[**gpgme-tool**]{.command}]{.term}               is an assuan server exposing [gpgme]{.application} operations, such as printing fingerprints and keyids with keyservers
  []{#libgpgme}[`libgpgme.so`{.filename}]{.term}                   contains the [gpgme]{.application} API functions
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnutls.md "GnuTLS-3.8.13"){accesskey="p"}

    GnuTLS-3.8.13

-   [Next](gpgmepp.md "gpgmepp-2.1.0"){accesskey="n"}

    gpgmepp-2.1.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
