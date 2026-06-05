::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](avahi.md "Avahi-0.8"){accesskey="p"}

    Avahi-0.8

-   [Next](networkmanager.md "NetworkManager-1.56.1"){accesskey="n"}

    NetworkManager-1.56.1

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bind-utils}BIND Utilities-9.20.20 {#bind-utilities-9.20.20 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to BIND Utilities {#introduction-to-bind-utilities .sect2}

[BIND Utilities]{.application} is not a separate package, it is a collection of the client side programs that are included with [BIND-9.20.20](../server/bind.md "BIND-9.20.20"){.xref}. The [BIND]{.application} package includes the client side programs [**nslookup**]{.command}, [**dig**]{.command} and [**host**]{.command}. If you install [BIND]{.application} server, these programs will be installed automatically. This section is for those users who don't need the complete [BIND]{.application} server, but need these client side applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz](https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz){.ulink}

-   Download MD5 sum: f27aa3bf9eac4e2b805b3d1f4aecef90

-   Download size: 5.5 MB

-   Estimated disk space required: 118 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
:::

### BIND Utilities Dependencies

#### Required

[liburcu-0.15.6](../general/liburcu.md "liburcu-0.15.6"){.xref} and [libuv-1.52.1](../general/libuv.md "libuv-1.52.1"){.xref}

#### Recommended

[JSON-C-0.18](../general/json-c.md "JSON-C-0.18"){.xref} and [nghttp2-1.69.0](nghttp2.md "nghttp2-1.69.0"){.xref}

#### Optional

[libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of BIND Utilities {#installation-of-bind-utilities .sect2}

Install [BIND Utilities]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
make -C lib/isc      &&
make -C lib/dns      &&
make -C lib/ns       &&
make -C lib/isccfg   &&
make -C lib/isccc    &&
make -C bin/dig      &&
make -C bin/nsupdate &&
make -C bin/rndc     &&
make -C doc
```

This portion of the package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make -C lib/isc      install &&
make -C lib/dns      install &&
make -C lib/ns       install &&
make -C lib/isccfg   install &&
make -C lib/isccc    install &&
make -C bin/dig      install &&
make -C bin/nsupdate install &&
make -C bin/rndc     install &&
cp -v doc/man/{dig.1,host.1,nslookup.1,nsupdate.1} /usr/share/man/man1 &&
cp -v doc/man/rndc.8 /usr/share/man/man8
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--sysconfdir=/etc`{.option}: Use this option to ensure installed packages look in `/etc`{.filename} for configuration files.

`--disable-doh`{.option}: Use this option if you have not installed [nghttp2-1.69.0](nghttp2.md "nghttp2-1.69.0"){.xref} and you don't need DNS over HTTPS support.

[**make -C lib/...**]{.command}: These commands build the libraries that are needed for the client programs.

[**make -C bin/...**]{.command}: This command builds the client programs.

[**make -C doc**]{.command}: This command builds the manual pages if the optional Python module [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} is installed.

Use [**cp -v doc/man/... /usr/share/man/man...**]{.command} to install the manual pages if they have been built.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dig, host, nslookup, nsupdate and rndc]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

### Short Descriptions

See the program descriptions in the [BIND-9.20.20](../server/bind.md "BIND-9.20.20"){.xref} section.
::::::::
::::::::::::::

::: navfooter
-   [Prev](avahi.md "Avahi-0.8"){accesskey="p"}

    Avahi-0.8

-   [Next](networkmanager.md "NetworkManager-1.56.1"){accesskey="n"}

    NetworkManager-1.56.1

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
