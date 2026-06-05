::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](automake.md "Automake-1.18.1"){accesskey="p"}

    Automake-1.18.1

-   [Next](libelf.md "Libelf from Elfutils-0.195"){accesskey="n"}

    Libelf from Elfutils-0.195

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-openssl}8.47. OpenSSL-4.0.0 {#openssl-4.0.0 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The OpenSSL package contains management tools and libraries relating to cryptography. These are useful for providing cryptographic functions to other packages, such as OpenSSH, email applications, and web browsers (for accessing HTTPS sites).

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.9 SBU]{.segbody}
:::

::: seg
**Required disk space:** [981 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.47.1. Installation of OpenSSL {#installation-of-openssl .sect2}

Prepare OpenSSL for compilation:

``` userinput
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
```

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
HARNESS_JOBS=$(nproc) make test
```

One test, 30-test_afalg.t, is known to fail if the host kernel does not have `CONFIG_CRYPTO_USER_API_SKCIPHER`{.option} enabled, or does not have any options providing an AES with CBC implementation (for example, the combination of `CONFIG_CRYPTO_AES`{.option} and `CONFIG_CRYPTO_CBC`{.option}, or `CONFIG_CRYPTO_AES_NI_INTEL`{.option} if the CPU supports AES-NI) enabled. If it fails, it can safely be ignored.

Install the package (setting an empty `INSTALL_LIBS`{.envar} prevents the installation of static libraries):

``` userinput
make INSTALL_LIBS= MANSUFFIX=ssl install
```

Add the version to the documentation directory name, to be consistent with other packages:

``` userinput
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-4.0.0
```

If desired, install some additional documentation:

``` userinput
cp -vfr doc/* /usr/share/doc/openssl-4.0.0
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You should update OpenSSL when a new version which fixes vulnerabilities is announced. Since OpenSSL 3.0.0, the OpenSSL versioning scheme follows the MAJOR.MINOR.PATCH format. API/ABI compatibility is guaranteed for the same MAJOR version number. Because LFS installs only the shared libraries, there is no need to recompile packages which link to `libcrypto.so`{.filename} or `libssl.so`{.filename} [*when upgrading to a version with the same MAJOR version number*]{.emphasis}.

However, any running programs linked to those libraries need to be stopped and restarted. Read the related entries in [Section 8.2.1, "Upgrade Issues"](pkgmgt.md#pkgmgmt-upgrade-issues "8.2.1. Upgrade Issues"){.xref} for details.
:::
::::

::::::::: {.content lang="en"}
## []{#contents-openssl}8.47.2. Contents of OpenSSL {#contents-of-openssl .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [c_rehash and openssl]{.segbody}
:::

::: seg
**Installed libraries:** [libcrypto.so and libssl.so]{.segbody}
:::

::: seg
**Installed directories:** [/etc/ssl, /usr/include/openssl, /usr/lib/engines and /usr/share/doc/openssl-4.0.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#c_rehash}[[**c_rehash**]{.command}]{.term}      is a [Perl]{.application} script that scans all files in a directory and adds symbolic links to their hash values. Use of [**c_rehash**]{.command} is considered obsolete and should be replaced by [**openssl rehash**]{.command} command
  []{#openssl-prog}[[**openssl**]{.command}]{.term}   is a command-line tool for using the various cryptography functions of [OpenSSL]{.application}\'s crypto library from the shell. It can be used for various functions which are documented in [openssl(1)](https://man.archlinux.org/man/openssl.1){.ulink}
  []{#libcrypto}[`libcrypto.so`{.filename}]{.term}    implements a wide range of cryptographic algorithms used in various Internet standards. The services provided by this library are used by the [OpenSSL]{.application} implementations of SSL, TLS and S/MIME, and they have also been used to implement [OpenSSH]{.application}, [OpenPGP]{.application}, and other cryptographic standards
  []{#libssl}[`libssl.so`{.filename}]{.term}          implements the Transport Layer Security (TLS v1) protocol. It provides a rich API, documentation on which can be found in [ssl(7)](https://man.archlinux.org/man/ssl.7){.ulink}
  --------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](automake.md "Automake-1.18.1"){accesskey="p"}

    Automake-1.18.1

-   [Next](libelf.md "Libelf from Elfutils-0.195"){accesskey="n"}

    Libelf from Elfutils-0.195

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
