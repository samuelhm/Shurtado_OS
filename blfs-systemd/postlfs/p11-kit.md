::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](openssh.md "OpenSSH-10.3p1"){accesskey="p"}

    OpenSSH-10.3p1

-   [Next](polkit.md "Polkit-127"){accesskey="n"}

    Polkit-127

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#p11-kit}p11-kit-0.26.2 {#p11-kit-0.26.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to p11-kit {#introduction-to-p11-kit .sect2}

The [p11-kit]{.application} package provides a way to load and enumerate PKCS #11 (a Cryptographic Token Interface Standard) modules.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/p11-glue/p11-kit/releases/download/0.26.2/p11-kit-0.26.2.tar.xz](https://github.com/p11-glue/p11-kit/releases/download/0.26.2/p11-kit-0.26.2.tar.xz){.ulink}

-   Download MD5 sum: 99edde5f38697ed2d47c55544347be4e

-   Download size: 1.0 MB

-   Estimated disk space required: 110 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
:::

### p11-kit Dependencies

#### Recommended

[libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}

#### Recommended (runtime)

[make-ca-1.16.1](make-ca.md "make-ca-1.16.1"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [nss-3.124](nss.md "NSS-3.124"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of p11-kit {#installation-of-p11-kit .sect2}

Prepare the distribution specific anchor hook:

``` userinput
sed '20,$ d' -i trust/trust-extract-compat &&

cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Update trust stores
/usr/sbin/make-ca -r
EOF
```

Install [p11-kit]{.application} by running the following commands:

``` userinput
mkdir p11-build &&
cd    p11-build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D trust_paths=/etc/pki/anchors &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
ln -sfv /usr/libexec/p11-kit/trust-extract-compat \
        /usr/bin/update-ca-certificates
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D trust_paths=/etc/pki/anchors`*: this switch sets the location of trusted certificates used by libp11-kit.so.

`-D hash_impl=freebl`{.option}: Use this switch if you want to use the Freebl library from [NSS]{.application} for SHA1 and MD5 hashing.

`-D gtk_doc=true`{.option}: Use this switch if you have installed [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} and wish to rebuild the documentation and generate manual pages.
:::

::: {.configuration lang="en"}
## Configuring p11-kit {#configuring-p11-kit .sect2}

The [p11-kit]{.application} trust module (`/usr/lib/pkcs11/p11-kit-trust.so`{.filename}) can be used as a drop-in replacement for `/usr/lib/libnssckbi.so`{.filename} to transparently make the system CAs available to [NSS]{.application} aware applications, rather than the static list provided by `/usr/lib/libnssckbi.so`{.filename}. As the `root`{.systemitem} user, execute the following commands:

``` root
ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [p11-kit, trust, and update-ca-certificates]{.segbody}
:::

::: seg
**Installed Libraries:** [libp11-kit.so and p11-kit-proxy.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/pkcs11, /usr/include/p11-kit-1, /usr/lib/pkcs11, /usr/libexec/p11-kit, /usr/share/gtk-doc/html/p11-kit, and /usr/share/p11-kit]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#p11-kit-prog}[[**p11-kit**]{.command}]{.term}                            is a command line tool that can be used to perform operations on PKCS#11 modules configured on the system
  []{#trust}[[**trust**]{.command}]{.term}                                     is a command line tool to examine and modify the shared trust policy store
  []{#update-ca-certificates}[[**update-ca-certificates**]{.command}]{.term}   is a command line tool to both extract local certificates from an updated anchor store, and regenerate all anchors and certificate stores on the system. This is done unconditionally on BLFS using the *`--force`* and *`--get`* flags to [**make-ca**]{.command} and should likely not be used for automated updates
  []{#libp11-kit}[`libp11-kit.so`{.filename}]{.term}                           contains functions used to coordinate initialization and finalization of any PKCS#11 module
  []{#p11-kit-proxy}[`p11-kit-proxy.so`{.filename}]{.term}                     is the PKCS#11 proxy module
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](openssh.md "OpenSSH-10.3p1"){accesskey="p"}

    OpenSSH-10.3p1

-   [Next](polkit.md "Polkit-127"){accesskey="n"}

    Polkit-127

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
