::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](ldns.md "ldns-1.9.0"){accesskey="p"}

    ldns-1.9.0

-   [Next](libmnl.md "libmnl-1.0.5"){accesskey="n"}

    libmnl-1.0.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libevent}libevent-2.1.12 {#libevent-2.1.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libevent {#introduction-to-libevent .sect2}

[libevent]{.application} is an asynchronous event notification software library. The [libevent]{.application} API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, [libevent]{.application} also supports callbacks due to signals or regular timeouts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz](https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz){.ulink}

-   Download MD5 sum: b5333f021f880fe76490d8a799cd79f4

-   Download size: 1.0 MB

-   Estimated disk space required: 20 MB (add 4 MB for tests and 4 MB for API docs)

-   Estimated build time: 0.3 SBU (add 11 SBU for tests)
:::

### libevent Dependencies

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for API documentation)
:::::

::: {.installation lang="en"}
## Installation of libevent {#installation-of-libevent .sect2}

First, fix an issue that prevents event_rpcgen.py from working:

``` userinput
sed -i 's/python/&3/' event_rpcgen.py
```

Install [libevent]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed and wish to build API documentation, issue :

``` userinput
doxygen Doxyfile
```

To test the results, issue: [**make verify**]{.command}. Seven tests in every suite related to `regress_ssl.c`{.filename} and `regress_http.c`{.filename} are known to fail due to incompatibilities with OpenSSL-3. Some tests that are related to `regress_dns.c`{.filename} are also known to fail intermittently due to insufficient test timeouts.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the API documentation, install it by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/doc/libevent-2.1.12/api &&
cp      -v -R       doxygen/html/* \
                    /usr/share/doc/libevent-2.1.12/api
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [event_rpcgen.py]{.segbody}
:::

::: seg
**Installed Libraries:** [libevent_core.so, libevent_extra.so, libevent_openssl.so, libevent_pthreads.so and libevent.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/event2 and /usr/share/doc/libevent-2.1.12]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](ldns.md "ldns-1.9.0"){accesskey="p"}

    ldns-1.9.0

-   [Next](libmnl.md "libmnl-1.0.5"){accesskey="n"}

    libmnl-1.0.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
