::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](bubblewrap.md "Bubblewrap-0.11.2"){accesskey="p"}

    Bubblewrap-0.11.2

-   [Next](cpio.md "cpio-2.15"){accesskey="n"}

    cpio-2.15

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#colord}Colord-1.4.8 {#colord-1.4.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Colord {#introduction-to-colord .sect2}

[Colord]{.application} is a system service that makes it easy to manage, install, and generate color profiles. It is used mainly by [GNOME Color Manager]{.application} for system integration and use when no users are logged in.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/colord/releases/colord-1.4.8.tar.xz](https://www.freedesktop.org/software/colord/releases/colord-1.4.8.tar.xz){.ulink}

-   Download MD5 sum: 4d17dea7fe5460c2ea16aee64dca2ecb

-   Download size: 1.8 MB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### Colord Dependencies

#### Required

[dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended), [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libgudev-238](libgudev.md "libgudev-238"){.xref}, [libgusb-0.4.9](libgusb.md "libgusb-0.4.9"){.xref}, and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}

#### Recommended

[[Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (runtime)]{.phrase} and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[gnome-desktop-44.5](../gnome/gnome-desktop.md "gnome-desktop-44.5"){.xref} and [colord-gtk-0.3.1](../x/colord-gtk.md "colord-gtk-0.3.1"){.xref} (to build the example tools), [docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (to build the man pages), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [SANE-1.4.0](../pst/sane.md "SANE-1.4.0"){.xref}, [ArgyllCMS](https://www.argyllcms.com/){.ulink}, and [Bash Completion](https://github.com/scop/bash-completion/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Colord {#installation-of-colord .sect2}

There should be a dedicated user and group to take control of the colord daemon after it has started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 71 colord &&
useradd -c "Color Daemon Owner" -d /var/lib/colord -u 71 \
        -g colord -s /bin/false colord
```

Install [Colord]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D daemon_user=colord     \
      -D vapi=true              \
      -D systemd=true           \
      -D libcolordcompat=true   \
      -D argyllcms_sensor=false \
      -D bash_completion=false  \
      -D docs=false             \
      -D man=false              &&
ninja
```

If [docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} are installed, build the man pages:

``` userinput
meson configure -D man=true &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**ninja test**]{.command}. One test, `colord-self-test-daemon`{.filename}, will fail if the package is already installed. The test suite must be run with the system-wide D-Bus Daemon running.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D daemon_user=colord`*: This switch is used so the colord daemon will run as an unprivileged user instead of the `root`{.systemitem} user.

*`-D vapi=true`*: This switch enables building the [Vala]{.application} bindings. Remove if you don't have [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref} installed.

*`-D systemd=true`*: This switch enables installation of the [systemd]{.application} service.

*`-D libcolordcompat=true`*: This switch enables building a compatibility library for older packages that use [Colord]{.application}.

*`-D argyllcms_sensor=false`*: This switch disables the ArgLLCMS sensor driver. Omit if you have [ArgyllCMS](https://www.argyllcms.com/){.ulink} installed and wish to use it.

*`-D bash_completion=false`*: This switch disables Bash Completion support for Colord applications.

*`-D docs=false`*: This switch disables building of documentation. Omit if you have [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} available.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cd-create-profile, cd-fix-profile, cd-iccdump, cd-it8, and colormgr]{.segbody}
:::

::: seg
**Installed Libraries:** [libcolord.so, libcolordcompat.so, libcolordprivate.so, and libcolorhug.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/colord-1, /usr/lib/colord-{plugins,sensors}, /usr/share/color{d}, /usr/share/gtk-doc/html/colord, and /var/lib/colord]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------
  []{#cd-create-profile}[[**cd-create-profile**]{.command}]{.term}    is the Color Manager Profile Creation Tool
  []{#cd-fix-profile}[[**cd-fix-profile**]{.command}]{.term}          is a tool used to fix metadata in ICC profiles
  []{#cd-iccdump}[[**cd-iccdump**]{.command}]{.term}                  dumps the contents of an ICC profile as human readable text
  []{#cd-it8}[[**cd-it8**]{.command}]{.term}                          is the Color Manager Testing Tool
  []{#colormgr}[[**colormgr**]{.command}]{.term}                      is a text-mode program that allows you to interact with colord on the command line
  []{#libcolord.so}[`libcolord.so`{.filename}]{.term}                 contains the [Colord]{.application} API functions
  []{#libcolordcompat.so}[`libcolordcompat.so`{.filename}]{.term}     contains legacy API functions for compatibility with older applications
  []{#libcolordprivate.so}[`libcolordprivate.so`{.filename}]{.term}   contains internal API functions for the programs included with [Colord]{.application}
  []{#libcolorhug.so}[`libcolorhug.so`{.filename}]{.term}             contains a simple display hardware colorimiter
  ------------------------------------------------------------------- ---------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](bubblewrap.md "Bubblewrap-0.11.2"){accesskey="p"}

    Bubblewrap-0.11.2

-   [Next](cpio.md "cpio-2.15"){accesskey="n"}

    cpio-2.15

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
