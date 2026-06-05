::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-menus.md "gnome-menus-3.38.1"){accesskey="p"}

    gnome-menus-3.38.1

-   [Next](libgee.md "libgee-0.20.8"){accesskey="n"}

    libgee-0.20.8

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-online-accounts}gnome-online-accounts-3.58.1 {#gnome-online-accounts-3.58.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Online Accounts {#introduction-to-gnome-online-accounts .sect2}

The [GNOME Online Accounts]{.application} package contains a framework used to access the user's online accounts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-online-accounts/3.58/gnome-online-accounts-3.58.1.tar.xz](https://download.gnome.org/sources/gnome-online-accounts/3.58/gnome-online-accounts-3.58.1.tar.xz){.ulink}

-   Download MD5 sum: 9942aa191d657f7c39d3b5ec28b74f61

-   Download size: 488 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
:::

### GNOME Online Accounts Dependencies

#### Required

[Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [librest-0.10.2](librest.md "librest-0.10.2"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of GNOME Online Accounts {#installation-of-gnome-online-accounts .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The Google API Key and OAuth tokens below are specific to LFS. If using these instructions for another distro, or if you intend to distribute binary copies of the software using these instructions, please obtain your own keys following the instructions located at [https://www.chromium.org/developers/how-tos/api-keys](https://www.chromium.org/developers/how-tos/api-keys){.ulink}.
:::

Install [GNOME Online Accounts]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup                                            \
      --prefix=/usr                                    \
      --buildtype=release                              \
      -D documentation=false                           \
      -D kerberos=false                                \
      -D google_client_secret=5ntt6GbbkjnTVXx-MSxbmx5e \
      -D google_client_id=595013732528-llk8trb03f0ldpqq6nprjp1s79596646.apps.googleusercontent.com \
      .. &&
ninja
```

If you've installed [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and you wish to build and install the API documentation of this package, issue:

``` userinput
meson configure -D documentation=true &&
sed "s/project_name()/& + '-' + meson.project_version()/" \
    -i ../doc/meson.build &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D google_*`*: These switches set the BLFS OAuth ID and secret for Google services.

`-D kerberos=true`{.option}: Use this switch if you have installed [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} and wish to use it with [GNOME Online Accounts]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgoa-1.0.so and libgoa-backend-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/goa-1.0, /usr/lib/goa-1.0, and /usr/share/doc/gnome-online-accounts-3.58.1 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------
  []{#libgoa-1}[`libgoa-1.0.so`{.filename}]{.term}                     contains the [GNOME Online Accounts]{.application} API functions
  []{#libgoa-backend-1.0}[`libgoa-backend-1.0.so`{.filename}]{.term}   contains functions used by [GNOME Online Accounts]{.application} backends
  -------------------------------------------------------------------- ---------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnome-menus.md "gnome-menus-3.38.1"){accesskey="p"}

    gnome-menus-3.38.1

-   [Next](libgee.md "libgee-0.20.8"){accesskey="n"}

    libgee-0.20.8

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
