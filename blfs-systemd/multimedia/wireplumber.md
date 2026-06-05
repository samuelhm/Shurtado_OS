::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](v4l-utils.md "v4l-utils-1.32.0"){accesskey="p"}

    v4l-utils-1.32.0

-   [Next](x264.md "x264-20250815"){accesskey="n"}

    x264-20250815

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wireplumber}Wireplumber-0.5.14 {#wireplumber-0.5.14 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Wireplumber {#introduction-to-wireplumber .sect2}

The [Wireplumber]{.application} package contains a session and policy manager for [Pipewire]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/pipewire/wireplumber/-/archive/0.5.14/wireplumber-0.5.14.tar.bz2](https://gitlab.freedesktop.org/pipewire/wireplumber/-/archive/0.5.14/wireplumber-0.5.14.tar.bz2){.ulink}

-   Download MD5 sum: 7f56b55fe9add83f8456600d2a030563

-   Download size: 448 KB

-   Estimated disk space required: 101 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### Wireplumber Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [pipewire-1.6.6](pipewire.md "Pipewire-1.6.6"){.xref}[, and [Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (runtime, rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref})]{.phrase}

#### Recommended

[Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [sphinx_rtd_theme-3.1.0](../general/python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}, and [Breathe](https://pypi.org/project/breathe/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Wireplumber {#installation-of-wireplumber .sect2}

Install [Wireplumber]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D system-lua=true .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

Finally, rename the documentation directory to a versioned directory as the `root`{.systemitem} user:

``` root
mv -v /usr/share/doc/wireplumber{,-0.5.14}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D system-lua=true`*: This switch enables using the system version of Lua. Omit this switch if you have not installed Lua, but note that [meson]{.application} will download and install it's own version.
:::

:::: {.configuration lang="en"}
## Configuring Wireplumber {#configuring-wireplumber .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

In order for Wireplumber to be used by Pipewire, Wireplumber and Pipewire must be configured to start when a desktop environment is started.

Pipewire now provides it's own Pulseaudio server implementation, which causes runtime conflicts with the server provided by Pulseaudio itself. This generally presents itself by applications hanging or malfunctioning when trying to play or record audio and video. First, prevent Pulseaudio from starting it's own server implementation by running the following commands as the `root`{.systemitem} user:

``` root
rm -vf /etc/xdg/autostart/pulseaudio.desktop         &&
rm -vf /etc/xdg/Xwayland-session.d/00-pulseaudio-x11 &&
sed -e '$a autospawn = no' -i /etc/pulse/client.conf
```

Next, configure Wireplumber to start when a desktop environment is started. Run the following commands as the `root`{.systemitem} user to enable the systemd user units:

``` root
systemctl enable --global pipewire.socket       &&
systemctl enable --global pipewire-pulse.socket &&
systemctl enable --global wireplumber
```

Now that Wireplumber is configured to start when a desktop environment is started, it is recommended that you log out of your session and log back in again.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [wireplumber, wpctl, and wpexec]{.segbody}
:::

::: seg
**Installed Libraries:** [libwireplumber-0.5.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/wireplumber-0.5, /usr/lib/wireplumber-0.5, /usr/share/wireplumber, and /usr/share/doc/wireplumber-0.5.14]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ---------------------------------------------------------------------
  []{#wireplumber-prog}[[**wireplumber**]{.command}]{.term}        is a session and policy manager for Pipewire
  []{#wpctl}[[**wpctl**]{.command}]{.term}                         controls and queries information from Wireplumber
  []{#wpexec}[[**wpexec**]{.command}]{.term}                       executes Wireplumber scripts, which are often written in Lua
  []{#libwireplumber}[`libwireplumber-0.5.so`{.filename}]{.term}   contains functions that allow other programs to control Wireplumber
  ---------------------------------------------------------------- ---------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](v4l-utils.md "v4l-utils-1.32.0"){accesskey="p"}

    v4l-utils-1.32.0

-   [Next](x264.md "x264-20250815"){accesskey="n"}

    x264-20250815

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
