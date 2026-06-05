::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](linux-pam.md "Linux-PAM-1.7.2"){accesskey="p"}

    Linux-PAM-1.7.2

-   [Next](libpwquality.md "libpwquality-1.4.5"){accesskey="n"}

    libpwquality-1.4.5

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#liboauth}liboauth-1.0.3 {#liboauth-1.0.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to liboauth {#introduction-to-liboauth .sect2}

[liboauth]{.application} is a collection of POSIX-C functions implementing the OAuth Core RFC 5849 standard. Liboauth provides functions to escape and encode parameters according to OAuth specification and offers high-level functionality to sign requests or verify OAuth signatures as well as perform HTTP requests.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/liboauth/liboauth-1.0.3.tar.gz](https://downloads.sourceforge.net/liboauth/liboauth-1.0.3.tar.gz){.ulink}

-   Download MD5 sum: 689b46c2b3ab1a39735ac33f714c4f7f

-   Download size: 496 KB

-   Estimated disk space required: 3.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch for use with openssl: [https://www.linuxfromscratch.org/patches/blfs/svn/liboauth-1.0.3-openssl-1.1.0-3.patch](https://www.linuxfromscratch.org/patches/blfs/svn/liboauth-1.0.3-openssl-1.1.0-3.patch){.ulink}
:::

### liboauth Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}

#### Optional

[nss-3.124](nss.md "NSS-3.124"){.xref} and [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to build documentation)
::::::

::: {.installation lang="en"}
## Installation of liboauth {#installation-of-liboauth .sect2}

Apply a patch for the current version of openssl:

``` userinput
patch -Np1 -i ../liboauth-1.0.3-openssl-1.1.0-3.patch
```

Install [liboauth]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you wish to build the documentation (needs [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}), issue:

``` userinput
make dox
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have previously built the documentation, install it by running the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755 /usr/share/doc/liboauth-1.0.3 &&
cp -rv doc/html/* /usr/share/doc/liboauth-1.0.3
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-nss`{.option}: Use this switch if you want to use Mozilla NSS instead of [OpenSSL]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [liboauth.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/liboauth-1.0.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#liboauth-lib}[`liboauth.so`{.filename}]{.term}   provides functions to escape and encode strings according to OAuth specifications and offers high-level functionality built on top to sign requests or verify signatures using either NSS or OpenSSL for calculating the hash/signatures
  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](linux-pam.md "Linux-PAM-1.7.2"){accesskey="p"}

    Linux-PAM-1.7.2

-   [Next](libpwquality.md "libpwquality-1.4.5"){accesskey="n"}

    libpwquality-1.4.5

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
