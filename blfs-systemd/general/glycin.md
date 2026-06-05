::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glm.md "GLM-1.0.3"){accesskey="p"}

    GLM-1.0.3

-   [Next](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){accesskey="n"}

    libglycin-gtk4 from glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glycin}glycin-2.1.1 {#glycin-2.1.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to glycin {#introduction-to-glycin .sect2}

The [glycin]{.application} package contains a sandboxed and extendable image loading framework.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz](https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz){.ulink}

-   Download MD5 sum: 411550c5da777a952bb6c811fd882156

-   Download size: 6.8 MB

-   Estimated disk space required: 1.4 GB (with documentation, add 1 GB for tests)

-   Estimated build time: 3.8 SBU (with documentation, add 2.5 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Recommended patch (required if installing Xorg into `/opt`{.filename}): [https://www.linuxfromscratch.org/patches/blfs/svn/glycin-2.1.1-xorg_prefix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/glycin-2.1.1-xorg_prefix-1.patch){.ulink}
:::

### glycin Dependencies

#### Required

[bubblewrap-0.11.2](bubblewrap.md "Bubblewrap-0.11.2"){.xref} (runtime), [Fontconfig-2.18.1](fontconfig.md "Fontconfig-2.18.1"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended), [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libseccomp-2.6.0](libseccomp.md "libseccomp-2.6.0"){.xref}, and [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::

#### Recommended

[libheif-1.23.0](libheif.md "libheif-1.23.0"){.xref}, [libjxl-0.11.2](libjxl.md "libjxl-0.11.2"){.xref}, [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} (for the test suite), and [libopenraw](https://libopenraw.freedesktop.org/){.ulink}
:::::::

::: {.installation lang="en"}
## Installation of glycin {#installation-of-glycin .sect2}

If installing Xorg into `/opt`{.filename}, download the needed Rust crates now and apply a patch to allow accessing `$XORG_PREFIX/lib`{.filename} from the sandbox (note that the patch requires `XORG_PREFIX`{.envar} to be set properly for both the current user and for `root`{.systemitem} following [Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref} before building glycin):

``` userinput
cargo vendor &&
patch -Np1 -i ../glycin-2.1.1-xorg_prefix-1.patch
```

Fix a build error when a system [libglycin]{.application} is not yet installed:

``` userinput
sed -e "s/get_option('libglycin-gtk4')/(& or get_option('glycin-thumbnailer'))/" \
    -i meson.build
```

Install [glycin]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D libglycin-gtk4=false \
            -D tests=false ..       &&
ninja
```

If you have installed [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, you can build the documentation by issuing:

``` userinput
sed "/install_dir:.*doc/s|,$| / 'glycin-' + meson.project_version()&|" \
    -i ../libglycin/meson.build &&

meson configure -D capi_docs=true &&
ninja
```

To test the results, ensure [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} is installed, then issue: [**meson configure -D tests=true && ninja test**]{.command}.

Now as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D glycin_gtk4=false`*: This parameter disables the build of `libglycin-gtk4`{.systemitem}. This library will be built separately as [libglycin-gtk4 from glycin-2.1.1](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){.xref}, to avoid a circular dependency.

`-D glycin-loaders=...`{.option}: Use this option to specify the image loaders to be built. The default is `glycin-heif,glycin-image-rs,glycin-jxl,glycin-svg`{.literal}, covering support for all commonly used image formats. You may remove the `glycin-heif`{.literal}, `glycin-jxl`{.literal}, or `glycin-svg`{.literal} loader if the corresponding recommended dependency is not installed, but doing so will cause test failures and hamper the functionality of this package. There is also a loader for the RAW format but it is not enabled by default.

`-D vapi=false`{.option}: This option allows building this package without [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref} installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [glycin-thumbnailer]{.segbody}
:::

::: seg
**Installed Library:** [libglycin-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/glycin-2, /usr/libexec/glycin-loaders, /usr/share/glycin-loaders, and optionally /usr/share/doc/glycin-2.1.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------
  []{#glycin-thumbnailer}[[**glycin-thumbnailer**]{.command}]{.term}   creates thumbnails for images in a format supported by glycin
  []{#libglycin-2}[`libglycin-2.so`{.filename}]{.term}                 contains image loading functions which work by running glycin loaders in a sandbox environment
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](glm.md "GLM-1.0.3"){accesskey="p"}

    GLM-1.0.3

-   [Next](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){accesskey="n"}

    libglycin-gtk4 from glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
