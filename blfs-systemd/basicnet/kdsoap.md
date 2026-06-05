::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](glib-networking.md "glib-networking-2.80.1"){accesskey="p"}

    glib-networking-2.80.1

-   [Next](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0"){accesskey="n"}

    kdsoap-ws-discovery-client-0.4.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kdsoap}kdsoap-2.3.0 {#kdsoap-2.3.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kdsoap {#introduction-to-kdsoap .sect2}

The [kdsoap]{.application} is Qt-based client-side and server-side SOAP component. It can be used to create client applications for web services and also provides the means to create web services without the need for any further component such as a dedicated web server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KDAB/KDSoap/releases/download/kdsoap-2.3.0/kdsoap-2.3.0.tar.gz](https://github.com/KDAB/KDSoap/releases/download/kdsoap-2.3.0/kdsoap-2.3.0.tar.gz){.ulink}

-   Download MD5 sum: fba550a6bd3b7f2e5da606f039e3e470

-   Download size: 1.1 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
:::

### kdsoap Dependencies

#### Required

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kdsoap {#installation-of-kdsoap .sect2}

Install [kdsoap]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/kdsoap-2.3.0 \
      .. &&
make
```

The package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [kdwsdl2cpp-qt6]{.segbody}
:::

::: seg
**Installed Libraries:** [libkdsoap-qt6.so and libkdsoap-server-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/KDSoap-Qt6, /usr/share/doc/kdsoap-2.3.0-qt6, /usr/include/KDSoapClient-Qt6. and /usr/include/KDSoapServer-Qt6]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](glib-networking.md "glib-networking-2.80.1"){accesskey="p"}

    glib-networking-2.80.1

-   [Next](kdsoap-ws-discovery-client.md "kdsoap-ws-discovery-client-0.4.0"){accesskey="n"}

    kdsoap-ws-discovery-client-0.4.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
