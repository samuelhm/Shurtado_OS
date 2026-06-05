::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](protobuf-c.md "Protobuf-c-1.5.2"){accesskey="p"}

    Protobuf-c-1.5.2

-   [Next](qcoro.md "qcoro-0.13.0"){accesskey="n"}

    qcoro-0.13.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qca}Qca-2.3.10 {#qca-2.3.10 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Qca {#introduction-to-qca .sect2}

[Qca]{.application} aims to provide a straightforward and cross-platform crypto API, using [Qt]{.application} datatypes and conventions. [Qca]{.application} separates the API from the implementation, using plugins known as Providers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/qca/2.3.10/qca-2.3.10.tar.xz](https://download.kde.org/stable/qca/2.3.10/qca-2.3.10.tar.xz){.ulink}

-   Download MD5 sum: c3ed3262c83c43bdeb610836769b1534

-   Download size: 748 KB

-   Estimated disk space required: 56 MB (with tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; with tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/qca-2.3.10-openssl4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/qca-2.3.10-openssl4_fixes-1.patch){.ulink}
:::

### Qca Dependencies

#### Required

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, [CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}

#### Optional

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [libgcrypt-1.12.2](libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libgpg-error-1.61](libgpg-error.md "libgpg-error-1.61"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [NSPR-4.39](nspr.md "NSPR-4.39"){.xref}, [p11-kit-0.26.2](../postlfs/p11-kit.md "p11-kit-0.26.2"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, and [Botan](https://botan.randombit.net/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of Qca {#installation-of-qca .sect2}

First, modify the package to be compatible with OpenSSL4:

``` userinput
patch -Np1 -i ../qca-2.3.10-openssl4_fixes-1.patch
```

Now, fix the location of the CA certificates:

``` userinput
sed -i 's@cert.pem@certs/ca-bundle.crt@' CMakeLists.txt
```

Install [Qca]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR            \
      -D CMAKE_BUILD_TYPE=Release                \
      -D QT6=ON                                  \
      -D QCA_INSTALL_IN_QT_PREFIX=ON             \
      -D QCA_MAN_INSTALL_DIR:PATH=/usr/share/man \
      .. &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.

*`-D QT6=ON`*: This switch ensures that the package is built with [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}.

*`-D QCA_MAN_INSTALL_DIR:PATH=/usr/share/man`*: This switch installs the qca man page in the normal location.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mozcerts-qt6 and qcatool-qt6]{.segbody}
:::

::: seg
**Installed Libraries:** [libqca-qt6.so, libqca-cyrus-sasl.so, libqca-gcrypt.so, libqca-gnupg.so, libqca-logger.so, libqca-nss.so, libqca-ossl.so, and libqca-softstore.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$QT6DIR/include/Qca-qt6, \$QT6DIR/lib/cmake/Qca-qt6, and \$QT6DIR/lib/qca-qt6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------
  []{#mozcerts}[[**mozcerts-qt6**]{.command}]{.term}   is a command line tool for converting certdata.txt into outfile.pem files
  []{#qcatool}[[**qcatool-qt6**]{.command}]{.term}     is a command line tool for performing various cryptographic operations with Qca
  []{#libqca}[`libqca-qt6.so`{.filename}]{.term}       is the Qt Cryptography Architecture (Qca) library
  ---------------------------------------------------- ---------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](protobuf-c.md "Protobuf-c-1.5.2"){accesskey="p"}

    Protobuf-c-1.5.2

-   [Next](qcoro.md "qcoro-0.13.0"){accesskey="n"}

    qcoro-0.13.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
