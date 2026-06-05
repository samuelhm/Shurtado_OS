<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cracklib.md "CrackLib-2.10.3")

    CrackLib-2.10.3

-   [Next](cyrus-sasl.md "Cyrus SASL-2.1.28")

    Cyrus SASL-2.1.28

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cryptsetup-2.8.6 {#cryptsetup-2.8.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cryptsetup {#introduction-to-cryptsetup}

cryptsetup is used to set up transparent encryption of block devices using the kernel crypto API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/utils/cryptsetup/v2.8/cryptsetup-2.8.6.tar.xz">https://www.kernel.org/pub/linux/utils/cryptsetup/v2.8/cryptsetup-2.8.6.tar.xz</a>

-   Download MD5 sum: 110d3dd2dec73401a087f526f598f884

-   Download size: 12 MB

-   Estimated disk space required: 41 MB (add 5 MB for tests)

-   Estimated build time: 0.2 SBU (add 19 SBU for tests)
</div>

### cryptsetup Dependencies

#### Required

<a class="xref" href="../general/json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>, <a class="xref" href="lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a>, and <a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>

#### Optional

<a class="xref" href="../general/asciidoctor.md" title="Asciidoctor-2.0.26">asciidoctor-2.0.26</a>, <a class="xref" href="libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, <a class="ulink" href="https://github.com/P-H-C/phc-winner-argon2">argon2</a>, <a class="ulink" href="https://www.libssh.org/">libssh</a>, <a class="ulink" href="https://github.com/Mbed-TLS/mbedtls">mbedtls</a>, and <a class="ulink" href="https://www.openwall.com/passwdqc/">passwdqc</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Encrypted block devices require kernel support. To use it, the appropriate kernel configuration parameters need to be set:

```console
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
</div>

<div class="installation" lang="en">
## Installation of cryptsetup {#installation-of-cryptsetup}

Install <span class="application">cryptsetup</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --disable-ssh-token \
            --disable-asciidoc  &&
make
```

To test the result, issue as the <code class="systemitem">root</code> user: <span class="command"><strong>make check</strong></span>. Some tests will fail if appropriate kernel configuration options are not set. Some additional options that may be needed for tests are:

```console
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

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-ssh-token`*: This switch is required if the optional libssh dependency is not installed.

*`--disable-asciidoc`*: This switch disables regeneration of the man pages. Remove this switch if you have <a class="xref" href="../general/asciidoctor.md" title="Asciidoctor-2.0.26">asciidoctor-2.0.26</a> installed and wish to regenerate the man pages. Note that even if this switch is used, the pre-generated man pages are shipped in the tarball and they'll still be installed.
</div>

<div class="configuration" lang="en">
## Configuring cryptsetup {#configuring-cryptsetup}

Because of the number of possible configurations, setup of encrypted volumes is beyond the scope of the BLFS book. Please see the configuration guide in the cryptsetup <a class="ulink" href="https://gitlab.com/cryptsetup/cryptsetup/wikis/FrequentlyAskedQuestions#2-setup">FAQ</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cryptsetup, integritysetup, and veritysetup</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcryptsetup.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cryptsetup</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cryptsetup-prog"></a><span class="command"><span class="term"><strong>cryptsetup</strong></span></span>      is used to setup dm-crypt managed device-mapper mappings
  <a id="integritysetup"></a><span class="command"><span class="term"><strong>integritysetup</strong></span></span>   is a tool to manage dm-integrity (block level integrity) volumes
  <a id="veritysetup"></a><span class="command"><span class="term"><strong>veritysetup</strong></span></span>         is used to configure dm-verity managed device-mapper mappings. The Device-mapper verity target provides read-only transparent integrity checking of block devices using the kernel crypto API
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cracklib.md "CrackLib-2.10.3")

    CrackLib-2.10.3

-   [Next](cyrus-sasl.md "Cyrus SASL-2.1.28")

    Cyrus SASL-2.1.28

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
