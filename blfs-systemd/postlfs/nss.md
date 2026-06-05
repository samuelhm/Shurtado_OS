::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](nettle.md "Nettle-4.0"){accesskey="p"}

    Nettle-4.0

-   [Next](openssh.md "OpenSSH-10.3p1"){accesskey="n"}

    OpenSSH-10.3p1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nss}NSS-3.124 {#nss-3.124 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to NSS {#introduction-to-nss .sect2}

The Network Security Services ([NSS]{.application}) package is a set of libraries designed to support cross-platform development of security-enabled client and server applications. Applications built with NSS can support SSL v2 and v3, TLS, PKCS #5, PKCS #7, PKCS #11, PKCS #12, S/MIME, X.509 v3 certificates, and other security standards. This is useful for implementing SSL and S/MIME or other Internet security standards into an application.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.mozilla.org/pub/security/nss/releases/NSS_3_124_RTM/src/nss-3.124.tar.gz](https://archive.mozilla.org/pub/security/nss/releases/NSS_3_124_RTM/src/nss-3.124.tar.gz){.ulink}

-   Download MD5 sum: 7b6b89b1271721b3694d1a2646a4e69c

-   Download size: 75 MB

-   Estimated disk space required: 319 MB (sdd 72 MB for tests)

-   Estimated build time: 0.8 SBU (with parallelism=4, add 8.4 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch){.ulink}
:::

### NSS Dependencies

#### Required

[NSPR-4.39](../general/nspr.md "NSPR-4.39"){.xref}

#### Recommended

[p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} (runtime)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/nss](https://wiki.linuxfromscratch.org/blfs/wiki/nss){.ulink}
:::::::

::::: {.installation lang="en"}
## Installation of NSS {#installation-of-nss .sect2}

Install [NSS]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../nss-standalone-1.patch &&

cd nss &&

make BUILD_OPT=1                      \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  USE_SYSTEM_ZLIB=1                   \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
  NSS_USE_SYSTEM_SQLITE=1             \
  $([ $(uname -m) = x86_64 ] && echo USE_64=1)
```

To run the tests, execute the following commands:

``` userinput
cd tests &&
HOST=localhost DOMSUF=localdomain ./all.sh
cd ../
```

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some information about the tests:

::: itemizedlist
-   HOST=localhost and DOMSUF=localdomain are required. Without these variables, a FQDN is required to be specified and this generic way should work for everyone, provided `localhost.localdomain`{.systemitem} is defined [by the `myhostname`{.systemitem} Name Service Switch module, as specified in [the LFS book](../../../../lfs/view/systemd/chapter08/glibc.md#conf-glibc){.ulink}.]{.phrase}

-   The tests take a long time to run. If desired there is information in the all.sh script about running subsets of the total test suite.

-   When interrupting the tests, the test suite fails to spin down test servers that are run. This leads to an infinite loop in the tests where the test suite tries to kill a server that doesn't exist anymore because it pulls the wrong PID.

-   Test suite results (in HTML format!) can be found at ../../test_results/security/localhost.1/results.md

-   A few tests might fail on some Intel machines for unknown reasons.
:::
::::

Now, as the `root`{.systemitem} user:

``` root
cd ../dist                                         &&

install -v -m755 Linux*/lib/*.so  /usr/lib         &&
install -v -m644 Linux*/lib/*.chk /usr/lib         &&

install -v -m755 -d               /usr/include/nss &&
cp -v -RL {public,private}/nss/*  /usr/include/nss &&

install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin &&

install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`BUILD_OPT=1`*: This option is passed to [**make**]{.command} so that the build is performed with no debugging symbols built into the binaries and the default compiler optimizations are used.

*`NSPR_INCLUDE_DIR=/usr/include/nspr`*: This option sets the location of the nspr headers.

*`USE_SYSTEM_ZLIB=1`*: This option is passed to [**make**]{.command} to ensure that the `libssl3.so`{.filename} library is linked to the system installed [zlib]{.application} instead of the in-tree version.

*`ZLIB_LIBS=-lz`*: This option provides the linker flags needed to link to the system [zlib]{.application}.

[**\$(\[ \$(uname -m) = x86_64 \] && echo USE_64=1)**]{.command}: The *`USE_64=1`* option is [*required on x86_64*]{.emphasis}, otherwise [**make**]{.command} will try (and fail) to create 32-bit objects. The \[ \$(uname -m) = x86_64 \] test ensures it has no effect on a 32 bit system.

`NSS_DISABLE_GTESTS=1`{.option}: If you don't need to run NSS test suite, append this option to [**make**]{.command} command, to prevent the compilation of tests and save some build time.
:::

::: {.configuration lang="en"}
## Configuring NSS {#configuring-nss .sect2}

If [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} is installed, the [p11-kit]{.application} trust module (`/usr/lib/pkcs11/p11-kit-trust.so`{.filename}) can be used as a drop-in replacement for `/usr/lib/libnssckbi.so`{.filename} to transparently make the system CAs available to [NSS]{.application} aware applications, rather than the static library provided by `/usr/lib/libnssckbi.so`{.filename}. As the `root`{.systemitem} user, execute the following command:

``` root
ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
```

Additionally, for dependent applications that do not use the internal database (`/usr/lib/libnssckbi.so`{.filename}), the `/usr/sbin/make-ca`{.filename} script included on the [make-ca-1.16.1](make-ca.md "make-ca-1.16.1"){.xref} page can generate a system wide NSS DB with the *`-n`* switch, or by modifying the `/etc/make-ca/make-ca.conf`{.filename} file.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [certutil, nss-config, and pk12util]{.segbody}
:::

::: seg
**Installed Libraries:** [libfreebl3.so, libfreeblpriv3.so, libnss3.so, libnssckbi.so, libnssckbi-testlib.so, libnssdbm3.so, libnsssysinit.so, libnssutil3.so, libpkcs11testmodule.so, libsmime3.so, libsoftokn3.so, and libssl3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/nss]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#certutil}[[**certutil**]{.command}]{.term}       is the Mozilla Certificate Database Tool. It is a command-line utility that can create and modify the Netscape Communicator cert8.db and key3.db database files. It can also list, generate, modify, or delete certificates within the cert8.db file and create or change the password, generate new public and private key pairs, display the contents of the key database, or delete key pairs within the key3.db file
  []{#nss-config}[[**nss-config**]{.command}]{.term}   is used to determine the NSS library settings of the installed NSS libraries
  []{#pk12util}[[**pk12util**]{.command}]{.term}       is a tool for importing certificates and keys from pkcs #12 files into NSS or exporting them. It can also list certificates and keys in such files
  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](nettle.md "Nettle-4.0"){accesskey="p"}

    Nettle-4.0

-   [Next](openssh.md "OpenSSH-10.3p1"){accesskey="n"}

    OpenSSH-10.3p1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
