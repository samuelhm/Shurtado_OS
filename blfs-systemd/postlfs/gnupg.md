::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cyrus-sasl.md "Cyrus SASL-2.1.28"){accesskey="p"}

    Cyrus SASL-2.1.28

-   [Next](gnutls.md "GnuTLS-3.8.13"){accesskey="n"}

    GnuTLS-3.8.13

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnupg2}GnuPG-2.5.20 {#gnupg-2.5.20 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GnuPG {#introduction-to-gnupg .sect2}

The [GnuPG]{.application} package is GNU's tool for secure communication and data storage. It can be used to encrypt data and to create digital signatures. It includes an advanced key management facility and is compliant with the proposed OpenPGP Internet standard as described in RFC2440 and the S/MIME standard as described by several RFCs. GnuPG 2 is the stable version of GnuPG integrating support for OpenPGP and S/MIME.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.5.20.tar.bz2](https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.5.20.tar.bz2){.ulink}

-   Download MD5 sum: 93d6d891254b43138bb9a2a777dc2de7

-   Download size: 8.0 MB

-   Estimated disk space required: 180 MB (with tests)

-   Estimated build time: 0.7 SBU (with tests; both using parallelism=4)
:::

### GnuPG 2 Dependencies

#### Required

[libassuan-3.0.2](../general/libassuan.md "libassuan-3.0.2"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libksba-1.8.0](../general/libksba.md "libksba-1.8.0"){.xref}, [npth-1.8](../general/npth.md "npth-1.8"){.xref}, and [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}

#### Recommended

[GnuTLS-3.8.13](gnutls.md "GnuTLS-3.8.13"){.xref} (required to communicate with keyservers using https or hkps protocol) and [pinentry-1.3.2](../general/pinentry.md "pinentry-1.3.2"){.xref} (Run-time requirement for most of the package's functionality)

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [Fuse-3.18.2](fuse.md "Fuse-3.18.2"){.xref}, [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} (for the [**convert**]{.command} utility, used for generating the documentation), [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), [fig2dev](https://mcj.sourceforge.net/){.ulink} (for generating documentation), and [GNU adns](https://www.chiark.greenend.org.uk/~ian/adns/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GnuPG {#installation-of-gnupg .sect2}

Install [GnuPG]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

../configure --prefix=/usr        \
             --localstatedir=/var \
             --sysconfdir=/etc    \
             --docdir=/usr/share/doc/gnupg-2.5.20 &&
make &&

makeinfo --html --no-split -I doc -o doc/gnupg_nochunks.md ../doc/gnupg.texi &&
makeinfo --plaintext       -I doc -o doc/gnupg.txt           ../doc/gnupg.texi &&
make -C doc html
```

If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed and you wish to create documentation in the pdf format, issue the following command:

``` userinput
make -C doc pdf
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755 -d /usr/share/doc/gnupg-2.5.20/html            &&
install -v -m644    doc/gnupg_nochunks.md \
                    /usr/share/doc/gnupg-2.5.20/html/gnupg.md &&
install -v -m644    ../doc/*.texi doc/gnupg.txt \
                    /usr/share/doc/gnupg-2.5.20 &&
install -v -m644    doc/gnupg.html/* \
                    /usr/share/doc/gnupg-2.5.20/html
```

If you created the pdf format of the documentation, install them using the following command as the `root`{.systemitem} user:

``` root
install -v -m644 doc/gnupg.pdf \
                 /usr/share/doc/gnupg-2.5.20
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**mkdir build && cd build**]{.command}: the GnuPG developers recommend building the package in a dedicated directory.

*`--docdir=/usr/share/doc/gnupg-2.5.20`*: This switch changes the default docdir to `/usr/share/doc/gnupg-2.5.20`{.filename}.

`--enable-all-tests`{.option}: This switch allows more tests to be run with [**make check**]{.command}.

`--enable-g13`{.option}: This switch enables building the g13 program.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [addgnupghome, applygnupgdefaults, dirmngr, dirmngr-client, g13 (optional), gpg-agent, gpg-card, gpg-connect-agent, gpg, gpgconf, gpgparsemail, gpgscm, gpgsm, gpgsplit, gpgtar, gpgv, gpg-wks-client, gpg-wks-server, kbxutil, and watchgnupg]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/gnupg-2.5.20 and /usr/share/gnupg]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#addgnupghome}[[**addgnupghome**]{.command}]{.term}               is used to create and populate a user's `~/.gnupg`{.filename} directories
  []{#applygnupgdefaults}[[**applygnupgdefaults**]{.command}]{.term}   is a wrapper script used to run [**gpgconf**]{.command} with the *`--apply-defaults`* parameter on all user's GnuPG home directories
  []{#dirmngr}[[**dirmngr**]{.command}]{.term}                         is a tool that takes care of accessing the OpenPGP keyservers
  []{#dirmngr-client}[[**dirmngr-client**]{.command}]{.term}           is a tool to contact a running dirmngr and test whether a certificate has been revoked
  []{#g13}[[**g13**]{.command}]{.term}                                 is a tool to create, mount or unmount an encrypted file system container (optional)
  []{#gpg-agent}[[**gpg-agent**]{.command}]{.term}                     is a daemon used to manage secret (private) keys independently from any protocol. It is used as a backend for [**gpg**]{.command} and [**gpgsm**]{.command} as well as for a couple of other utilities
  []{#gpg-card}[[**gpg-card**]{.command}]{.term}                       is a tool to manage smart cards and tokens
  []{#gpg-connect-agent}[[**gpg-connect-agent**]{.command}]{.term}     is a utility used to communicate with a running [**gpg-agent**]{.command}
  []{#gpg}[[**gpg**]{.command}]{.term}                                 is the OpenPGP part of the GNU Privacy Guard (GnuPG). It is a tool used to provide digital encryption and signing services using the OpenPGP standard
  []{#gpgconf}[[**gpgconf**]{.command}]{.term}                         is a utility used to automatically and reasonably safely query and modify configuration files in the `~/.gnupg`{.filename} home directory. It is designed not to be invoked manually by the user, but automatically by graphical user interfaces
  []{#gpgparsemail}[[**gpgparsemail**]{.command}]{.term}               is a utility currently only useful for debugging. Run it with *`--help`* for usage information
  []{#gpgscm}[[**gpgscm**]{.command}]{.term}                           executes the given scheme program or spawns an interactive shell
  []{#gpgsm}[[**gpgsm**]{.command}]{.term}                             is a tool similar to [**gpg**]{.command} used to provide digital encryption and signing services on X.509 certificates and the CMS protocol. It is mainly used as a backend for S/MIME mail processing
  []{#gpgsplit}[[**gpgsplit**]{.command}]{.term}                       splits an OpenPGP message into packets
  []{#gpgtar}[[**gpgtar**]{.command}]{.term}                           is a tool to encrypt or sign files into an archive
  []{#gpgv}[[**gpgv**]{.command}]{.term}                               is a verify only version of [**gpg**]{.command}
  []{#gpg-wks-client}[[**gpg-wks-client**]{.command}]{.term}           is a client for the [Web Key Service]{.application} protocol
  []{#gpg-wks-server}[[**gpg-wks-server**]{.command}]{.term}           provides a server for the [Web Key Service]{.application} protocol
  []{#kbxutil}[[**kbxutil**]{.command}]{.term}                         is used to list, export and import Keybox data
  []{#watchgnupg}[[**watchgnupg**]{.command}]{.term}                   is used to listen to a Unix Domain socket created by any of the GnuPG tools
  -------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](cyrus-sasl.md "Cyrus SASL-2.1.28"){accesskey="p"}

    Cyrus SASL-2.1.28

-   [Next](gnutls.md "GnuTLS-3.8.13"){accesskey="n"}

    GnuTLS-3.8.13

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
