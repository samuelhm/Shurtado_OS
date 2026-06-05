::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](abseil-cpp.md "Abseil-cpp-20260107.1"){accesskey="p"}

    Abseil-cpp-20260107.1

-   [Next](appstream-glib.md "appstream-glib-0.8.3"){accesskey="n"}

    appstream-glib-0.8.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#appstream}AppStream-1.1.2 {#appstream-1.1.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to AppStream {#introduction-to-appstream .sect2}

The [AppStream]{.application} package contains a library and tool that is useful for retrieving software metadata and making it easily accessible to programs which need it.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/appstream/releases/AppStream-1.1.2.tar.xz](https://www.freedesktop.org/software/appstream/releases/AppStream-1.1.2.tar.xz){.ulink}

-   Download MD5 sum: 993cb6e1c6ab57ce59c5c3ba397f2b21

-   Download size: 2.7 MB

-   Estimated disk space required: 40 MB

-   Estimated build time: less than 0.1 SBU (add 0.1 SBU for tests; both using parallelism=4)
:::

### AppStream Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libfyaml-0.9.6](libfyaml.md "libfyaml-0.9.6"){.xref}, [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [libxmlb-0.3.27](libxmlb.md "libxmlb-0.3.27"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Recommended

[docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}

#### Optional

[Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, [DAPS](https://github.com/openSUSE/daps){.ulink}, and [libstemmer](https://github.com/zvelo/libstemmer){.ulink}
:::::

::: {.installation lang="en"}
## Installation of AppStream {#installation-of-appstream .sect2}

Install [AppStream]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D apidocs=false         \
            -D bash-completion=false \
            -D stemming=false   .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
mv -v /usr/share/doc/appstream{,-1.1.2}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D apidocs=false`*: This switch disables building the API documentation. Remove it if you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to regenerate the API documentation. When the API documentation is not regenerated, a pre-built copy is installed anyway.

*`-D bash-completion=false`*: This switch disables bash-completion support which is not in BLFS.

*`-D stemming=false`*: This switch disables stemming support. Remove this switch if you have [libstemmer](https://github.com/zvelo/libstemmer){.ulink} installed and want faster searches.

`-D qt=true`{.option}: Use this option if you have [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} installed and you want to build support for Qt6 applications into this package.

`-D man=false`{.option}: This switch disables building the manpages. Add it if you do not have [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} installed.
:::

::::: {.configuration lang="en"}
## Configuring AppStream {#configuring-appstream .sect2}

::: {.sect3 lang="en"}
### []{#appstream-config}Config Files {#config-files .sect3}

`/usr/share/metainfo/org.linuxfromscratch.lfs.xml`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[AppStream]{.application} expects an operating system metainfo file describing the GNU/Linux distribution. As the `root`{.systemitem} user, create the file describing LFS:

``` root
install -vdm755 /usr/share/metainfo &&
cat > /usr/share/metainfo/org.linuxfromscratch.lfs.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<component type="operating-system">
  <id>org.linuxfromscratch.lfs</id>
  <name>Linux From Scratch</name>
  <summary>A customized Linux system built entirely from source</summary>
  <description>
    <p>
      Linux From Scratch (LFS) is a project that provides you with
      step-by-step instructions for building your own customized Linux
      system entirely from source.
    </p>
  </description>
  <url type="homepage">https://www.linuxfromscratch.org/lfs/</url>
  <metadata_license>MIT</metadata_license>
  <developer id='linuxfromscratch.org'>
    <name>The Linux From Scratch Editors</name>
  </developer>

  <releases>
    <release version="13.0" type="stable" date="2026-03-05">
      <description>
        <p>Now contains Binutils 2.46.0, GCC-15.2.0, Glibc-2.43,
        Linux kernel 6.18, and six security updates.</p>
      </description>
    </release>

    <release version="12.4" type="stable" date="2025-09-01">
      <description>
        <p>Now contains Binutils 2.45, GCC-15.2.0, Glibc-2.42,
        Linux kernel 6.16, and twelve security updates.</p>
      </description>
    </release>

    <release version="12.3" type="stable" date="2025-03-05">
      <description>
        <p>Now contains Binutils 2.44, GCC-14.2.0, Glibc-2.41, and
        Linux Kernel 6.13, and three security updates.</p>
      </description>
    </release>
  </releases>
</component>
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [appstreamcli]{.segbody}
:::

::: seg
**Installed Libraries:** [libappstream.so and libAppStreamQt.so (if Qt6 support is enabled)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/appstream, /usr/include/AppStreamQt (if Qt6 support is enabled), /usr/lib/cmake/AppStreamQt (if Qt6 support is enabled), /usr/share/doc/appstream-1.1.2, and /usr/share/installed-tests/appstream]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#appstreamcli}[[**appstreamcli**]{.command}]{.term}       queries information from AppStream metadata and from the AppStream component index
  []{#libappstream}[`libappstream.so`{.filename}]{.term}       contains functions that handle AppStream metadata queries and request information from the AppStream component index
  []{#libAppStreamQt}[`libAppStreamQt.so`{.filename}]{.term}   contains functions that allow Qt6 applications to handle AppStream metadata queries and allows them to request information from the AppStream component index
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](abseil-cpp.md "Abseil-cpp-20260107.1"){accesskey="p"}

    Abseil-cpp-20260107.1

-   [Next](appstream-glib.md "appstream-glib-0.8.3"){accesskey="n"}

    appstream-glib-0.8.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
