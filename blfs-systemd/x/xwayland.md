::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xkeyboard-config.md "XKeyboardConfig-2.47"){accesskey="p"}

    XKeyboardConfig-2.47

-   [Next](xorg-server.md "Xorg-Server-21.1.23"){accesskey="n"}

    Xorg-Server-21.1.23

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xwayland}Xwayland-24.1.12 {#xwayland-24.1.12 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xwayland {#introduction-to-xwayland .sect2}

The [Xwayland]{.application} package is an Xorg server running on top of the wayland server. It has been separated from the main Xorg server package. It allows running X clients inside a wayland session.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/xserver/xwayland-24.1.12.tar.xz](https://www.x.org/pub/individual/xserver/xwayland-24.1.12.tar.xz){.ulink}

-   Download MD5 sum: 0b50c13c4bc2a72a39daf322500cae34

-   Download size: 1.2 MB

-   Estimated disk space required: 29 MB (add 357 MB for tests)

-   Estimated build time: 0.2 SBU (with parallelism=4; add 1.7 SBU for tests, not including clone time)
:::

### Xwayland Dependencies

#### Required

[libxcvt-0.1.3](libxcvt.md "libxcvt-0.1.3"){.xref}, [Pixman-0.46.4](../general/pixman.md "Pixman-0.46.4"){.xref}, [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}, [Xorg Applications](x7app.md "Xorg Applications"){.xref} (runtime), and [Xorg Fonts](x7font.md "Xorg Fonts"){.xref} (only font-util)

#### Recommended

[libepoxy-1.5.10](libepoxy.md "libepoxy-1.5.10"){.xref}, [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}, and [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}

#### Optional

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref} (to download packages needed for the tests), [libei-1.6.0](libei.md "libei-1.6.0"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [Nettle-4.0](../postlfs/nettle.md "Nettle-4.0"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, [Xorg Legacy Fonts](x7legacy.md "Xorg Legacy"){.xref} (only bdftopcf, for building fonts required for the tests), [rendercheck](https://gitlab.freedesktop.org/xorg/test/rendercheck){.ulink} (for tests), and [weston](https://wayland.pages.freedesktop.org/weston/){.ulink} (for tests)
:::::

::: {.installation lang="en"}
## Installation of Xwayland {#installation-of-xwayland .sect2}

Install [xwayland]{.application} by running the following commands:

``` userinput
sed -i '/install_man/,$d' meson.build &&

mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -D xkb_output_dir=/var/lib/xkb &&
ninja
```

Building the test framework needs some work. First, [weston](https://wayland.pages.freedesktop.org/weston/){.ulink} brings in several dependencies, but the number can be reduced by disabling unneeded features. The [**meson**]{.command} command for a stripped down build of [weston]{.application} is shown in [Upstream continuous integration build](https://gitlab.freedesktop.org/xorg/xserver/-/blob/xwayland-22.1/.gitlab-ci/debian-install.sh){.ulink}.

Running the tests involves downloading two other frameworks, in addition to the mentioned optional dependencies:

``` userinput
mkdir tools &&
pushd tools &&

git clone https://gitlab.freedesktop.org/mesa/piglit.git --depth 1 &&
cat > piglit/piglit.conf << EOF                                    &&
[xts]
path=$(pwd)/xts
EOF

git clone https://gitlab.freedesktop.org/xorg/test/xts --depth 1   &&

export DISPLAY=:22           &&
../hw/vfb/Xvfb $DISPLAY &
VFB_PID=$!                   &&
cd xts                       &&
CFLAGS=-fcommon ./autogen.sh &&
make                         &&
kill $VFB_PID                &&
unset DISPLAY VFB_PID        &&
popd
```

Then the tests can be run with:

``` userinput
XTEST_DIR=$(pwd)/tools/xts PIGLIT_DIR=$(pwd)/tools/piglit ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref} is not installed and you do not plan to install it later, you can install [**Xvfb**]{.command} from this package. As the `root`{.systemitem} user:

``` userinput
install -vm755 hw/vfb/Xvfb /usr/bin
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i '/install_man/,\$d' meson.build**]{.command}: Prevents installing a manual page for [**Xserver**]{.command}, which is also provided by [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}. Remove this command if [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref} is not installed and you don't plan to install it later.

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D secure-rpc=false`{.option}: This option disables building RPC support if [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref} is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [Xwayland]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------
  []{#Xwayland}[[**Xwayland**]{.command}]{.term}   Allows X clients to run under wayland
  ------------------------------------------------ ---------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xkeyboard-config.md "XKeyboardConfig-2.47"){accesskey="p"}

    XKeyboardConfig-2.47

-   [Next](xorg-server.md "Xorg-Server-21.1.23"){accesskey="n"}

    Xorg-Server-21.1.23

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
