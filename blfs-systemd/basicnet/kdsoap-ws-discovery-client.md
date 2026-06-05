::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](kdsoap.md "kdsoap-2.3.0"){accesskey="p"}

    kdsoap-2.3.0

-   [Next](ldns.md "ldns-1.9.0"){accesskey="n"}

    ldns-1.9.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kdsoap-ws-discovery-client}kdsoap-ws-discovery-client-0.4.0 {#kdsoap-ws-discovery-client-0.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kdsoap-ws-discovery-client {#introduction-to-kdsoap-ws-discovery-client .sect2}

The [kdsoap-ws-discovery-client]{.application} package contains a library that provides support for the WS-Discovery protocol, a recent protocol used to discover services available on a local network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/kdsoap-ws-discovery-client/kdsoap-ws-discovery-client-0.4.0.tar.xz](https://download.kde.org/stable/kdsoap-ws-discovery-client/kdsoap-ws-discovery-client-0.4.0.tar.xz){.ulink}

-   Download MD5 sum: 6d653d927efac8296662bc92784f2fe5

-   Download size: 32 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.2 SBU
:::

### kdsoap-ws-discovery-client Dependencies

#### Required

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, and [kdsoap-2.3.0](kdsoap.md "kdsoap-2.3.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kdsoap-ws-discovery-client {#installation-of-kdsoap-ws-discovery-client .sect2}

Install [kdsoap-ws-discovery-client]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D QT_MAJOR_VERSION=6           \
      -W no-dev .. &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
mv -v /usr/share/doc/KDSoapWSDiscoveryClient{,-0.4.0}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

[**mv -v /usr/share/doc/KDSoapWSDiscoveryClient\[...\]:**]{.command}: This command moves the documentation to a versioned directory.

*`-D QT_MAJOR_VERSION=6`*: This parameter tells the build system to build the Qt6 version of this package instead of the Qt5 version.

`-D BUILD_QCH=ON`{.option}: This option tells the build system to create documentation that can be used with QtCreator, QtAssistant, or KDevelop.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libKDSoapWSDiscoveryClient.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KDSoapWSDiscoveryClient, /usr/lib/cmake/KDSoapWSDiscoveryClient, and /usr/share/doc/KDSoapWSDiscoveryClient-0.4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------------ ----------------------------------------------------------------------
  []{#libKDSoapWSDiscoveryClient}[`libKDSoapWSDiscoveryClient.so`{.filename}]{.term}   provides an implementation of the WS-Discovery protocol using KDSoap
  ------------------------------------------------------------------------------------ ----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kdsoap.md "kdsoap-2.3.0"){accesskey="p"}

    kdsoap-2.3.0

-   [Next](ldns.md "ldns-1.9.0"){accesskey="n"}

    ldns-1.9.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
