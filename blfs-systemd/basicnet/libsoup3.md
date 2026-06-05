::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libslirp.md "libslirp-4.9.3"){accesskey="p"}

    libslirp-4.9.3

-   [Next](libtirpc.md "libtirpc-1.3.7"){accesskey="n"}

    libtirpc-1.3.7

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsoup3}libsoup-3.6.6 {#libsoup-3.6.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libsoup3 {#introduction-to-libsoup3 .sect2}

The [libsoup3]{.application} is a HTTP client/server library for [GNOME]{.application}. It uses GObject and the GLib main loop to integrate with [GNOME]{.application} applications and it also has an asynchronous API for use in threaded applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libsoup/3.6/libsoup-3.6.6.tar.xz](https://download.gnome.org/sources/libsoup/3.6/libsoup-3.6.6.tar.xz){.ulink}

-   Download MD5 sum: 9e07742595800ecf301eafb52300dd89

-   Download size: 1.5 MB

-   Estimated disk space required: 42 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libsoup-3.6.6-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libsoup-3.6.6-upstream_fixes-1.patch){.ulink}
:::

### libsoup3 Dependencies

#### Required

[glib-networking-2.80.1](glib-networking.md "glib-networking-2.80.1"){.xref}, [libpsl-0.21.5](libpsl.md "libpsl-0.21.5"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [nghttp2-1.69.0](nghttp2.md "nghttp2-1.69.0"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref} (required to run the test suite), [Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [cURL-8.20.0](curl.md "cURL-8.20.0"){.xref} (required to run the test suite), [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} (required to run the test suite), [PHP-8.5.6](../general/php.md "PHP-8.5.6"){.xref} compiled with XMLRPC-EPI support (only used for the XMLRPC regression tests), [Samba-4.24.0](samba.md "Samba-4.24.0"){.xref} (ntlm_auth is required to run the test suite), [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}, and [wstest](https://github.com/posener/wstest){.ulink}
::::::

::: {.installation lang="en"}
## Installation of libsoup3 {#installation-of-libsoup3 .sect2}

First, fix a security vulnerability that could lead to credential leakage:

``` userinput
patch -Np1 -i ../libsoup-3.6.6-upstream_fixes-1.patch
```

Fix the installation path of API documentation:

``` userinput
sed 's/apiversion/soup_version/' -i docs/reference/meson.build
```

Install [libsoup3]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            ..                     &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

`-D docs=enabled`{.option}: If [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} is installed, the API documentation will be built and installed no matter if this option is used or not. This option causes the [**meson**]{.command} command to fail if [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libsoup-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libsoup-3.0, /usr/share/doc/libsoup-3.6.6 (only installed if gi-docgen is available)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  []{#libsoup-3}[`libsoup-3.0.so`{.filename}]{.term}   provides functions for asynchronous HTTP connections
  ---------------------------------------------------- ------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libslirp.md "libslirp-4.9.3"){accesskey="p"}

    libslirp-4.9.3

-   [Next](libtirpc.md "libtirpc-1.3.7"){accesskey="n"}

    libtirpc-1.3.7

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
