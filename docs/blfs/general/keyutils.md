<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](json-glib.md "JSON-GLib-1.10.8")

    JSON-GLib-1.10.8

-   [Next](libaio.md "libaio-0.3.113")

    libaio-0.3.113

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# keyutils-1.6.3 {#keyutils-1.6.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to keyutils {#introduction-to-keyutils}

<span class="application">Keyutils</span> is a set of utilities for managing the key retention facility in the kernel, which can be used by filesystems, block devices and more to gain and retain the authorization and encryption keys required to perform secure operations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/keyutils-1.6.3.tar.gz">https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/keyutils-1.6.3.tar.gz</a>

-   Download MD5 sum: 6b70b2b381c1b6d9adfaf66d5d3e7c00

-   Download size: 136 KB

-   Estimated disk space required: 2.6 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
</div>

### Keyutils Dependencies

#### Optional

<a class="xref" href="lsb-tools.md" title="LSB-Tools-0.12">lsb-tools-0.12</a> (referred by the test suite)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If running the test suite, some tests needs the following kernel features enabled:

```console
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
</div>

<div class="installation" lang="en">
## Installation of keyutils {#installation-of-keyutils}

Install <span class="application">keyutils</span> by running the following commands:

```bash
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make NO_ARLIB=1 LIBDIR=/usr/lib BINDIR=/usr/bin SBINDIR=/usr/sbin install
```

The test suite can only run after installing this package. To test the results, issue, as the <code class="systemitem">root</code> user:

```bash
make -k test
```

If <a class="xref" href="lsb-tools.md" title="LSB-Tools-0.12">lsb-tools-0.12</a> is not installed, the test suite will output some lines complaining the <span class="command"><strong>lsb_release</strong></span> command is not available but it won't affect the test result. The tests do not work in a chroot environment.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`NO_ARLIB=1`*: This make flag disables installing the static library.
</div>

<div class="configuration" lang="en">
## Configuring keyutils {#configuring-keyutils}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/request-key.conf</code> and <code class="filename">/etc/request-key.d/*</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">keyctl, key.dns_resolver, and request-key</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libkeyutils.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/etc/keyutils, /etc/request-key.d, and /usr/share/keyutils</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="keyctl"></a><span class="command"><span class="term"><strong>keyctl</strong></span></span>                       controls the key management facility with a variety of subcommands
  <a id="key.dns_resolver"></a><span class="command"><span class="term"><strong>key.dns_resolver</strong></span></span>   is invoked by <span class="command"><strong>request-key</strong></span> on behalf of the kernel when kernel services (such as NFS, CIFS and AFS) need to perform a hostname lookup and the kernel does not have the key cached. It is not ordinarily intended to be called directly
  <a id="request-key"></a><span class="command"><span class="term"><strong>request-key</strong></span></span>             is invoked by the kernel when the kernel is asked for a key that it doesn't have immediately available. The kernel creates a temporary key and then calls out to this program to instantiate it. It is not intended to be called directly
  <a id="libkeyutils"></a><span class="term"><code class="filename">libkeyutils.so</code></span>             contains the keyutils library API instantiation
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](json-glib.md "JSON-GLib-1.10.8")

    JSON-GLib-1.10.8

-   [Next](libaio.md "libaio-0.3.113")

    libaio-0.3.113

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
