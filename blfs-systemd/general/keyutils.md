::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](json-glib.md "JSON-GLib-1.10.8"){accesskey="p"}

    JSON-GLib-1.10.8

-   [Next](libaio.md "libaio-0.3.113"){accesskey="n"}

    libaio-0.3.113

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#keyutils}keyutils-1.6.3 {#keyutils-1.6.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to keyutils {#introduction-to-keyutils .sect2}

[Keyutils]{.application} is a set of utilities for managing the key retention facility in the kernel, which can be used by filesystems, block devices and more to gain and retain the authorization and encryption keys required to perform secure operations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/keyutils-1.6.3.tar.gz](https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/keyutils-1.6.3.tar.gz){.ulink}

-   Download MD5 sum: 6b70b2b381c1b6d9adfaf66d5d3e7c00

-   Download size: 136 KB

-   Estimated disk space required: 2.6 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
:::

### Keyutils Dependencies

#### Optional

[lsb-tools-0.12](lsb-tools.md "LSB-Tools-0.12"){.xref} (referred by the test suite)
:::::

::: {.kernel lang="en"}
## []{#keyutils-test-kernel}Kernel Configuration {#kernel-configuration .sect2}

If running the test suite, some tests needs the following kernel features enabled:

``` screen
Security options --->
  [*] Enable access key retention support --->                            [KEYS]
    [*] Large payload keys                                            [BIG_KEYS]
    [*] Diffie-Hellman operations on retained keys           [KEY_DH_OPERATIONS]

-*- Cryptographic API --->                                              [CRYPTO]
  Public-key cryptography --->
    <*/M> RSA (Rivest-Shamir-Adleman)                               [CRYPTO_RSA]
  Hashes, digests, and MACs --->
    <*/M> SHA-1                                                    [CRYPTO_SHA1]
  [*] Asymmetric (public-key cryptographic) key type --->  [ASYMMETRIC_KEY_TYPE]
    <*> Asymmetric public-key crypto algorithm subtype
                                            ...  [ASYMMETRIC_PUBLIC_KEY_SUBTYPE]
    # If not built into the kernel, [SYSTEM_TRUSTED_KEYRING] won't show up;
    # building as a module won't work:
    <*>   X.509 certificate parser                     [X509_CERTIFICATE_PARSER]
  Certificates for signature checking --->
    [*] Provide system-wide ring of trusted keys        [SYSTEM_TRUSTED_KEYRING]
    [*]   Provide a keyring to which extra trustable keys may be added
                                                ...  [SECONDARY_TRUSTED_KEYRING]
    [*] Provide system-wide ring of blacklisted keys  [SYSTEM_BLACKLIST_KEYRING]
```
:::

::: {.installation lang="en"}
## Installation of keyutils {#installation-of-keyutils .sect2}

Install [keyutils]{.application} by running the following commands:

``` userinput
make
```

Now, as the `root`{.systemitem} user:

``` root
make NO_ARLIB=1 LIBDIR=/usr/lib BINDIR=/usr/bin SBINDIR=/usr/sbin install
```

The test suite can only run after installing this package. To test the results, issue, as the `root`{.systemitem} user:

``` root
make -k test
```

If [lsb-tools-0.12](lsb-tools.md "LSB-Tools-0.12"){.xref} is not installed, the test suite will output some lines complaining the [**lsb_release**]{.command} command is not available but it won't affect the test result. The tests do not work in a chroot environment.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`NO_ARLIB=1`*: This make flag disables installing the static library.
:::

:::: {.configuration lang="en"}
## Configuring keyutils {#configuring-keyutils .sect2}

::: {.sect3 lang="en"}
### []{#keyutils-config}Config Files {#config-files .sect3}

`/etc/request-key.conf`{.filename} and `/etc/request-key.d/*`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [keyctl, key.dns_resolver, and request-key]{.segbody}
:::

::: seg
**Installed Library:** [libkeyutils.so]{.segbody}
:::

::: seg
**Installed Directory:** [/etc/keyutils, /etc/request-key.d, and /usr/share/keyutils]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#keyctl}[[**keyctl**]{.command}]{.term}                       controls the key management facility with a variety of subcommands
  []{#key.dns_resolver}[[**key.dns_resolver**]{.command}]{.term}   is invoked by [**request-key**]{.command} on behalf of the kernel when kernel services (such as NFS, CIFS and AFS) need to perform a hostname lookup and the kernel does not have the key cached. It is not ordinarily intended to be called directly
  []{#request-key}[[**request-key**]{.command}]{.term}             is invoked by the kernel when the kernel is asked for a key that it doesn't have immediately available. The kernel creates a temporary key and then calls out to this program to instantiate it. It is not intended to be called directly
  []{#libkeyutils}[`libkeyutils.so`{.filename}]{.term}             contains the keyutils library API instantiation
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](json-glib.md "JSON-GLib-1.10.8"){accesskey="p"}

    JSON-GLib-1.10.8

-   [Next](libaio.md "libaio-0.3.113"){accesskey="n"}

    libaio-0.3.113

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
