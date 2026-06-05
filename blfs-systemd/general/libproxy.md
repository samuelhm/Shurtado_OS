::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libportal.md "libportal-0.9.1"){accesskey="p"}

    libportal-0.9.1

-   [Next](libptytty.md "libptytty-2.0"){accesskey="n"}

    libptytty-2.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libproxy}libproxy-0.5.12 {#libproxy-0.5.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libproxy {#introduction-to-libproxy .sect2}

The [libproxy]{.application} package is a library that provides automatic proxy configuration management. This is useful in standardizing a way of dealing with proxy settings across all scenarios.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libproxy/libproxy/archive/0.5.12/libproxy-0.5.12.tar.gz](https://github.com/libproxy/libproxy/archive/0.5.12/libproxy-0.5.12.tar.gz){.ulink}

-   Download MD5 sum: db615bbae5c20eb209a2cdbfe62e0fa3

-   Download size: 60 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### libproxy Dependencies

#### Recommended

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [duktape-2.7.0](duktape.md "duktape-2.7.0"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}, [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libproxy {#installation-of-libproxy .sect2}

Install [libproxy]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..        \
      --prefix=/usr   \
      -D release=true &&

ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

Still as the `root`{.systemitem} user, remove the useless static library:

``` root
rm /usr/lib/libproxy.a
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [proxy]{.segbody}
:::

::: seg
**Installed Libraries:** [libproxy.so and libpxbackend-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libproxy, /usr/lib/libproxy, and /usr/share/doc/libproxy-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------
  []{#proxy}[[**proxy**]{.command}]{.term}             displays the proxy server that should be used to reach a given network resource
  []{#libproxy-lib}[`libproxy.so`{.filename}]{.term}   provides a standard method of performing automatic proxy configuration
  ---------------------------------------------------- ---------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libportal.md "libportal-0.9.1"){accesskey="p"}

    libportal-0.9.1

-   [Next](libptytty.md "libptytty-2.0"){accesskey="n"}

    libptytty-2.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
