::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](c-ares.md "c-ares-1.34.6"){accesskey="p"}

    c-ares-1.34.6

-   [Next](geoclue2.md "GeoClue-2.8.1"){accesskey="n"}

    GeoClue-2.8.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#curl}cURL-8.20.0 {#curl-8.20.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to cURL {#introduction-to-curl .sect2}

The [cURL]{.application} package contains a utility and a library used for transferring files with URL syntax to any of the following protocols: DICT, FILE, FTP, FTPS, GOPHER, GOPHERS, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, MQTT, POP3, POP3S, RTSP, SMB, SMBS, SMTP, SMPTS, TELNET, and TFTP. Its ability to both download and upload files can be incorporated into other programs to support functions like streaming media.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://curl.se/download/curl-8.20.0.tar.xz](https://curl.se/download/curl-8.20.0.tar.xz){.ulink}

-   Download MD5 sum: b91d9edf299e693ced85db203206e1d4

-   Download size: 2.7 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: 0.4 SBU (add 4.5 SBU for tests (without valgrind, add 17 SBU with valgrind) all using parallelism=4)
:::

### cURL Dependencies

#### Recommended

[libpsl-0.21.5](libpsl.md "libpsl-0.21.5"){.xref} and [nghttp2-1.69.0](nghttp2.md "nghttp2-1.69.0"){.xref} (required to use the system cURL in [Rustc]{.application})

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

While there is an option to build the package without libpsl, both the upstream developers and the BLFS editors alike highly recommend not disabling support for libpsl due to severe security implications.
:::

#### Recommended at runtime

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}

#### Optional

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [c-ares-1.34.6](c-ares.md "c-ares-1.34.6"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}, [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [Samba-4.24.0](samba.md "Samba-4.24.0"){.xref} (runtime, for NTLM authentication), [gsasl](https://www.gnu.org/software/gsasl/){.ulink}, [impacket](https://www.secureauth.com/labs/open-source-tools/impacket/){.ulink}, [libmetalink](https://launchpad.net/libmetalink/){.ulink}, [librtmp](https://rtmpdump.mplayerhq.hu/){.ulink}, [ngtcp2](https://github.com/ngtcp2/ngtcp2/){.ulink}, [quiche](https://github.com/cloudflare/quiche){.ulink}, and [SPNEGO](https://spnego.sourceforge.net/){.ulink}

#### Optional if Running the Test Suite

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref} and [stunnel-5.78](../postlfs/stunnel.md "stunnel-5.78"){.xref} (for the HTTPS and FTPS tests), [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (this will slow the tests down and may cause failures)
::::::

::: {.installation lang="en"}
## Installation of cURL {#installation-of-curl .sect2}

Install [cURL]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --with-openssl   \
            --with-ca-path=/etc/ssl/certs &&
make
```

To run the test suite, issue: [**make test**]{.command}. Some tests are flaky, so if some tests have failed it's possible to run a test again with: [**(cd tests; ./runtests.pl *`<test ID>`*)**]{.command} (the ID of failed tests are shown in the [“[`These test cases failed:`{.computeroutput}]{.quote}”]{.quote} message). If you run the tests after the package has been installed, some tests may fail because the man pages were deleted by the 'find' command in the installation instructions below.

Now, as the `root`{.systemitem} user:

``` root
make install &&

rm -rf docs/examples/.deps &&

find docs \( -name Makefile\* -o  \
             -name \*.1       -o  \
             -name \*.3       -o  \
             -name CMakeLists.txt \) -delete &&

cp -v -R docs -T /usr/share/doc/curl-8.20.0
```

To run some simple verification tests on the newly installed [**curl**]{.command}, issue the following commands: [**curl --trace-ascii debugdump.txt https://www.example.com/**]{.command} and [**curl --trace-ascii d.txt --trace-time https://example.com/**]{.command}. Inspect the locally created trace files `debugdump.txt`{.filename} and `d.txt`{.filename}, which contains version information, downloaded files information, etc. One file has the time for each action logged.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-ca-path=/etc/ssl/certs`*: This switch sets the location of the BLFS Certificate Authority store.

*`--with-openssl`*: This parameter chooses [OpenSSL]{.application} as SSL/TLS implementation. This option is not needed if `--with-gnutls`{.option} is selected instead.

`--with-gssapi`{.option}: This parameter adds [Kerberos 5]{.application} support to `libcurl`{.filename}.

`--with-gnutls`{.option}: Use this switch to build with [GnuTLS]{.application} support instead of [OpenSSL]{.application} for SSL/TLS.

`--with-ca-bundle=/etc/pki/tls/certs/ca-bundle.crt`{.option}: Use this switch instead of *`--with-ca-path`* if building with [GnuTLS]{.application} support instead of [OpenSSL]{.application} for SSL/TLS.

`--with-libssh2`{.option}: This parameter adds [SSH]{.application} support to cURL. This is disabled by default.

`--enable-ares`{.option}: This parameter adds support for DNS resolution through the c-ares library.

[**find docs ... -exec rm {} \\;**]{.command}: This command removes `Makefiles`{.filename} and man files from the documentation directory that would otherwise be installed by the commands that follow.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [curl, curl-config, and wcurl]{.segbody}
:::

::: seg
**Installed Library:** [libcurl.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/curl and /usr/share/doc/curl-8.20.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------
  []{#curl-prog}[[**curl**]{.command}]{.term}            is a command line tool for transferring files with URL syntax
  []{#curl-config}[[**curl-config**]{.command}]{.term}   prints information about the last compile, like libraries linked to and prefix setting
  []{#wcurl}[[**wcurl**]{.command}]{.term}               is a simple wrapper around curl to easily download files
  []{#libcurl}[`libcurl.so`{.filename}]{.term}           provides the API functions required by [**curl**]{.command} and other programs
  ------------------------------------------------------ ----------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](c-ares.md "c-ares-1.34.6"){accesskey="p"}

    c-ares-1.34.6

-   [Next](geoclue2.md "GeoClue-2.8.1"){accesskey="n"}

    GeoClue-2.8.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
