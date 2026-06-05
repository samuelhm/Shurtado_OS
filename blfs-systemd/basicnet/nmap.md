::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](network-manager-applet.md "network-manager-applet-1.34.0"){accesskey="p"}

    network-manager-applet-1.34.0

-   [Next](traceroute.md "Traceroute-2.1.6"){accesskey="n"}

    Traceroute-2.1.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nmap}Nmap-7.99 {#nmap-7.99 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Nmap {#introduction-to-nmap .sect2}

[Nmap]{.application} is a utility for network exploration and security auditing. It supports ping scanning, port scanning and TCP/IP fingerprinting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://nmap.org/dist/nmap-7.99.tar.bz2](https://nmap.org/dist/nmap-7.99.tar.bz2){.ulink}

-   Download MD5 sum: 187db52073c5a1bcbc579e0efbc2c0bd

-   Download size: 13 MB

-   Estimated disk space required: 190 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
:::

### Additional Downloads

::: itemizedlist
-   Recommended patch: [https://www.linuxfromscratch.org/patches/blfs/svn/nmap-7.99-openssl4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/nmap-7.99-openssl4_fixes-1.patch){.ulink}
:::

### Nmap Dependencies

#### Required

[build-1.5.0](../general/python-modules.md#pypa-build "build-1.5.0"){.xref}

#### Recommended

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the [PyGObject3]{.application} module is not installed, you'd have to skip the command making the build system use the LFS [Setuptools]{.application} installation and then an Internet connection would be needed. The other packages are recommended because if they're not installed, the build process will compile and link against its own (often older) version.
:::

[liblinear-250](../general/liblinear.md "liblinear-250"){.xref}, [libpcap-1.10.6](libpcap.md "libpcap-1.10.6"){.xref}, [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, and [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

#### Optional

[libdnet](http://code.google.com/p/libdnet/){.ulink} and [setuptools-gettext](https://pypi.org/project/setuptools-gettext/){.ulink} (currently [useless](https://github.com/pypa/build/issues/729){.ulink})
:::::::

::: {.installation lang="en"}
## Installation of Nmap {#installation-of-nmap .sect2}

Make the build system use the [Setuptools]{.application} Python module from LFS instead of downloading a copy from the Internet, and install the Python wheels already created when running the [**make**]{.command} instead of rebuilding them again on [**make install**]{.command}:

``` userinput
sed -ri Makefile.in \
    -e 's#-m build#& --no-isolation#'  \
    -e '/pip install/s#(ZENMAP|NDIFF)DIR\)/#&dist/*.whl#'
```

Remove a useless dependency on setuptools-gettext:

``` userinput
sed 's/, "setuptools-gettext"//' -i zenmap/pyproject.toml
```

Fix a packaging error that makes the build fail:

``` userinput
sed '/py-modules/s/f"/&, "Version"/' -i ndiff/pyproject.toml
```

Fix compiling this package against OpenSSL-4:

``` userinput
patch -Np1 -i ../nmap-7.99-openssl4_fixes-1.patch
```

Install [Nmap]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

If you wish to run the test suite, run the following command:

``` userinput
sed -e '/import imp/d'                \
    -e 's/^ndiff = .*$/import ndiff/' \
    -i ndiff/ndifftest.py
```

Tests need a graphical session and to be run as the `root`{.systemitem} user. To test the results, issue:

``` root
make check
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ncat, ndiff, nmap, nping, zenmap, and 2 symlinks to zenmap: nmapfe and xnmap]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/{radialnet,zenmapCore,zenmapGUI,zenmap-7.99.dist-info}, and /usr/share/{ncat,nmap,zenmap}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  []{#ncat}[[**ncat**]{.command}]{.term}                           is a utility for reading and writing data across networks from the command line
  []{#ndiff}[[**ndiff**]{.command}]{.term}                         is a tool to aid in the comparison of Nmap scans
  []{#nmap-prog}[[**nmap**]{.command}]{.term}                      is a utility for network exploration and security auditing. It supports ping scanning, port scanning and TCP/IP fingerprinting
  []{#nping}[[**nping**]{.command}]{.term}                         is an open-source tool for network packet generation, response analysis and response time measurement
  []{#uninstall_ndiff}[[**uninstall_ndiff**]{.command}]{.term}     is a Python script to uninstall [**ndiff**]{.command}
  []{#uninstall_zenmap}[[**uninstall_zenmap**]{.command}]{.term}   is a Python script to uninstall [**zenmap**]{.command}
  []{#zenmap}[[**zenmap**]{.command}]{.term}                       is a Python based graphical nmap frontend viewer
  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](network-manager-applet.md "network-manager-applet-1.34.0"){accesskey="p"}

    network-manager-applet-1.34.0

-   [Next](traceroute.md "Traceroute-2.1.6"){accesskey="n"}

    Traceroute-2.1.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
