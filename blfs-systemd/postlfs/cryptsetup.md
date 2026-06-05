::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cracklib.md "CrackLib-2.10.3"){accesskey="p"}

    CrackLib-2.10.3

-   [Next](cyrus-sasl.md "Cyrus SASL-2.1.28"){accesskey="n"}

    Cyrus SASL-2.1.28

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cryptsetup}cryptsetup-2.8.6 {#cryptsetup-2.8.6 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to cryptsetup {#introduction-to-cryptsetup .sect2}

cryptsetup is used to set up transparent encryption of block devices using the kernel crypto API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/utils/cryptsetup/v2.8/cryptsetup-2.8.6.tar.xz](https://www.kernel.org/pub/linux/utils/cryptsetup/v2.8/cryptsetup-2.8.6.tar.xz){.ulink}

-   Download MD5 sum: 110d3dd2dec73401a087f526f598f884

-   Download size: 12 MB

-   Estimated disk space required: 41 MB (add 5 MB for tests)

-   Estimated build time: 0.2 SBU (add 19 SBU for tests)
:::

### cryptsetup Dependencies

#### Required

[JSON-C-0.18](../general/json-c.md "JSON-C-0.18"){.xref}, [LVM2-2.03.41](lvm2.md "LVM2-2.03.41"){.xref}, and [popt-1.19](../general/popt.md "Popt-1.19"){.xref}

#### Optional

[asciidoctor-2.0.26](../general/asciidoctor.md "Asciidoctor-2.0.26"){.xref}, [libpwquality-1.4.5](libpwquality.md "libpwquality-1.4.5"){.xref}, [argon2](https://github.com/P-H-C/phc-winner-argon2){.ulink}, [libssh](https://www.libssh.org/){.ulink}, [mbedtls](https://github.com/Mbed-TLS/mbedtls){.ulink}, and [passwdqc](https://www.openwall.com/passwdqc/){.ulink}
:::::

::: {.kernel lang="en"}
## []{#cryptsetup-kernel}Kernel Configuration {#kernel-configuration .sect2}

Encrypted block devices require kernel support. To use it, the appropriate kernel configuration parameters need to be set:

``` screen
Device Drivers --->
  [*] Multiple devices driver support (RAID and LVM) --->                   [MD]
    <*/M> Device mapper support                                     [BLK_DEV_DM]
    <*/M>   Crypt target support                                      [DM_CRYPT]

-*- Cryptographic API --->                                              [CRYPTO]
  Block ciphers --->
    <*/M> AES (Advanced Encryption Standard)                        [CRYPTO_AES]
    # For tests:
    <*/M> Twofish                                               [CRYPTO_TWOFISH]
  Length-preserving ciphers and modes --->
    <*/M> XTS (XOR Encrypt XOR with ciphertext stealing)            [CRYPTO_XTS]
  Hashes, digests, and MACs --->
    <*/M> SHA-224 and SHA-256                                    [CRYPTO_SHA256]
  Userspace interface --->
    <*/M> Symmetric key cipher algorithms             [CRYPTO_USER_API_SKCIPHER]
```
:::

::: {.installation lang="en"}
## Installation of cryptsetup {#installation-of-cryptsetup .sect2}

Install [cryptsetup]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --disable-ssh-token \
            --disable-asciidoc  &&
make
```

To test the result, issue as the `root`{.systemitem} user: [**make check**]{.command}. Some tests will fail if appropriate kernel configuration options are not set. Some additional options that may be needed for tests are:

``` screen
CONFIG_SCSI_LOWLEVEL,
CONFIG_SCSI_DEBUG,
CONFIG_BLK_DEV_DM_BUILTIN,
CONFIG_CRC_T10DIF,
CONFIG_CRYPTO_USER,
CONFIG_CRYPTO_CRYPTD,
CONFIG_CRYPTO_LRW,
CONFIG_CRYPTO_XTS,
CONFIG_CRYPTO_ESSIV,
CONFIG_CRYPTO_AES_TI,
CONFIG_CRYPTO_AES_NI_INTEL,
CONFIG_CRYPTO_BLOWFISH,
CONFIG_CRYPTO_CAST5,
CONFIG_CRYPTO_SERPENT,
CONFIG_CRYPTO_SERPENT_SSE2_X86_64,
CONFIG_CRYPTO_SERPENT_AVX_X86_64,
CONFIG_CRYPTO_SERPENT_AVX2_X86_64, and
CONFIG_CRYPTO_TWOFISH_X86_64
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-ssh-token`*: This switch is required if the optional libssh dependency is not installed.

*`--disable-asciidoc`*: This switch disables regeneration of the man pages. Remove this switch if you have [asciidoctor-2.0.26](../general/asciidoctor.md "Asciidoctor-2.0.26"){.xref} installed and wish to regenerate the man pages. Note that even if this switch is used, the pre-generated man pages are shipped in the tarball and they'll still be installed.
:::

::: {.configuration lang="en"}
## Configuring cryptsetup {#configuring-cryptsetup .sect2}

Because of the number of possible configurations, setup of encrypted volumes is beyond the scope of the BLFS book. Please see the configuration guide in the cryptsetup [FAQ](https://gitlab.com/cryptsetup/cryptsetup/wikis/FrequentlyAskedQuestions#2-setup){.ulink}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cryptsetup, integritysetup, and veritysetup]{.segbody}
:::

::: seg
**Installed Libraries:** [libcryptsetup.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cryptsetup]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cryptsetup-prog}[[**cryptsetup**]{.command}]{.term}      is used to setup dm-crypt managed device-mapper mappings
  []{#integritysetup}[[**integritysetup**]{.command}]{.term}   is a tool to manage dm-integrity (block level integrity) volumes
  []{#veritysetup}[[**veritysetup**]{.command}]{.term}         is used to configure dm-verity managed device-mapper mappings. The Device-mapper verity target provides read-only transparent integrity checking of block devices using the kernel crypto API
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](cracklib.md "CrackLib-2.10.3"){accesskey="p"}

    CrackLib-2.10.3

-   [Next](cyrus-sasl.md "Cyrus SASL-2.1.28"){accesskey="n"}

    Cyrus SASL-2.1.28

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
