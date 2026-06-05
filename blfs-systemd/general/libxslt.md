::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxmlb.md "libxmlb-0.3.27"){accesskey="p"}

    libxmlb-0.3.27

-   [Next](libwacom.md "libwacom-2.19.0"){accesskey="n"}

    libwacom-2.19.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxslt}libxslt-1.1.45 {#libxslt-1.1.45 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libxslt {#introduction-to-libxslt .sect2}

The [libxslt]{.application} package contains XSLT libraries used for extending `libxml2`{.filename} libraries to support XSLT files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.45.tar.xz](https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.45.tar.xz){.ulink}

-   Download MD5 sum: 84bb3f6ba7f5ee98af5dcd72e828c73e

-   Download size: 1.5 MB

-   Estimated disk space required: 33 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libxslt Dependencies

#### Required

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Recommended (at runtime)

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref} and [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although it is not a direct dependency, many applications using [libxslt]{.application} will expect [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref} and [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} to be present.
:::

#### Optional

[libgcrypt-1.12.2](libgcrypt.md "libgcrypt-1.12.2"){.xref} (only needed for the deprecated EXSLT crypto extension, see Command Explanations)
::::::

::: {.installation lang="en"}
## Installation of libxslt {#installation-of-libxslt .sect2}

Install [libxslt]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --without-python \
            --docdir=/usr/share/doc/libxslt-1.1.45 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--without-python`*: Disable the Python binding of this package. The binding only works if the Python binding of [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref} is installed, but we've not enabled the deprecated Python binding when we built [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}.

`--with-crypto`{.option}: Enable the non-standard and deprecated EXSLT crypto extension feature. It needs [libgcrypt-1.12.2](libgcrypt.md "libgcrypt-1.12.2"){.xref} and the upstream will remove it in the future.

`--with-debug`{.option}: Enables thorough diagnostics with the `-v, --verbose`{.option} of [**xsltproc**]{.command}. Use it if you plan to debug XSLT stylesheets.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xslt-config and xsltproc]{.segbody}
:::

::: seg
**Installed Libraries:** [libexslt.so, libxslt.so and optionally, libxsltmod.so [Python]{.application} module]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libexslt, /usr/include/libxslt, /usr/lib/cmake/libxslt, /usr/lib/libxslt-plugins, /usr/share/gtk-doc/lib{xslt,exslt}, /usr/share/doc/libxslt-1.1.45, and /usr/share/doc/libxslt-python-1.1.45]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xslt-config}[[**xslt-config**]{.command}]{.term}   is used to find out the pre-processor, linking and compiling flags necessary to use the [libxslt]{.application} libraries in 3rd-party programs
  []{#xsltproc}[[**xsltproc**]{.command}]{.term}         is used to apply XSLT stylesheets to XML documents
  []{#libexslt}[`libexslt.so`{.filename}]{.term}         is used to provide extensions to XSLT functions
  []{#libxslt-lib}[`libxslt.so`{.filename}]{.term}       provides extensions to the `libxml2`{.filename} libraries to parse files that use the XSLT format
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libxmlb.md "libxmlb-0.3.27"){accesskey="p"}

    libxmlb-0.3.27

-   [Next](libwacom.md "libwacom-2.19.0"){accesskey="n"}

    libwacom-2.19.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
