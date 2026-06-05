::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](p11-kit.md "p11-kit-0.26.2"){accesskey="p"}

    p11-kit-0.26.2

-   [Next](polkit-gnome.md "polkit-gnome-0.105"){accesskey="n"}

    polkit-gnome-0.105

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#polkit}Polkit-127 {#polkit-127 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Polkit {#introduction-to-polkit .sect2}

[Polkit]{.application} is a toolkit for defining and handling authorizations. It is used for allowing unprivileged processes to communicate with privileged processes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/polkit-org/polkit/archive/127/polkit-127.tar.gz](https://github.com/polkit-org/polkit/archive/127/polkit-127.tar.gz){.ulink}

-   Download MD5 sum: 2cc95f1b02fc1de6c9e52db986642ec4

-   Download size: 484 KB

-   Estimated disk space required: 7.8 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; using parallelism=4)
:::

### Polkit Dependencies

#### Required

[duktape-2.7.0](../general/duktape.md "duktape-2.7.0"){.xref} and [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended)

#### Recommended

[libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [and]{.phrase} [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Since [[**systemd-logind**]{.command}]{.phrase} uses PAM to register user sessions, it is a good idea to build [Polkit]{.application} with PAM support so [[**systemd-logind**]{.command}]{.phrase} can track [Polkit]{.application} sessions.
:::

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} (required for tests)

#### Required Runtime Dependencies

[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}

#### []{#polkit-agent} Optional Runtime Dependencies

One polkit authentication agent for using polkit in the graphical environment: [polkit-kde-agent]{.application} in [Plasma-6.6.5](../kde/plasma-all.md "Building Plasma"){.xref} for KDE, the agent built in [gnome-shell-50.2](../gnome/gnome-shell.md "gnome-shell-50.2"){.xref} for GNOME, [polkit-gnome-0.105](polkit-gnome.md "polkit-gnome-0.105"){.xref} for XFCE, and [lxqt-policykit-2.4.0](../lxqt/lxqt-policykit.md "lxqt-policykit-2.4.0"){.xref} for LXQt

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} is installed, then [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref} and [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} are required. If you have installed [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, but you do not want to install any of the DocBook packages mentioned, you will need to use `-D man=false`{.option} in the instructions below.
:::
:::::::

::: {.kernel lang="en"}
## []{#polkit-test-kernel}Kernel Configuration {#kernel-configuration .sect2}

Some tests need user namespace support. If you are going to run the test suite, enable the support and recompile the kernel if necessary:

``` screen
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
:::

::: {.installation lang="en"}
## Installation of Polkit {#installation-of-polkit .sect2}

There should be a dedicated user and group to take control of the [**polkitd**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -fg 27 polkitd &&
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
        -g polkitd -s /bin/false polkitd
```

Install [Polkit]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                   \
      --prefix=/usr              \
      --buildtype=release        \
      -D man=true                \
      -D session_tracking=logind \
      -D tests=true
```

Build the package:

``` userinput
ninja
```

To test the results, first ensure that the system [D-Bus]{.application} daemon is running, and both [D-Bus Python-1.4.0](../general/python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref} and [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} are installed. Then run [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=true`*: This switch allows to run the test suite of this package. As [Polkit]{.application} is used for authorizations, its integrity can affect system security. So it's recommended to run the test suite building this package.

`-D os_type=lfs`{.option}: Use this switch if you did not create the `/etc/lfs-release`{.filename} file or distribution auto detection will fail and you will be unable to use [Polkit]{.application}.

`-D authfw=shadow`{.option}: This switch enables the package to use the [Shadow]{.application} rather than the [Linux PAM]{.application} Authentication framework. Use it if you have not installed [Linux PAM]{.application}.

`-D introspection=false`{.option}: Use this option if you are certain that you do not need gobject-introspection files for polkit, or do not have installed [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} with GObject Introspection.

`-D man=false`{.option}: Use this option to disable generating and installing manual pages. This is useful if libxslt is not installed.

`-D examples=true`{.option}: Use this option to build the example programs.

`-D gtk_doc=true`{.option}: Use this option to enable building and installing the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pkaction, pkcheck, pkexec, pkttyagent, and polkitd]{.segbody}
:::

::: seg
**Installed Libraries:** [libpolkit-agent-1.so and libpolkit-gobject-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/polkit-1, /usr/include/polkit-1, /usr/lib/polkit-1, /usr/share/gtk-doc/html/polkit-1, and /usr/share/polkit-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------
  []{#pkaction}[[**pkaction**]{.command}]{.term}                         is used to obtain information about registered PolicyKit actions
  []{#pkcheck}[[**pkcheck**]{.command}]{.term}                           is used to check whether a process is authorized for action
  []{#pkexec}[[**pkexec**]{.command}]{.term}                             allows an authorized user to execute a command as another user
  []{#pkttyagent}[[**pkttyagent**]{.command}]{.term}                     is used to start a textual authentication agent for the subject
  []{#polkitd}[[**polkitd**]{.command}]{.term}                           provides the org.freedesktop.PolicyKit1 [D-Bus]{.application} service on the system message bus
  []{#libpolkit-agent-1}[`libpolkit-agent-1.so`{.filename}]{.term}       contains the [Polkit]{.application} authentication agent API functions
  []{#libpolkit-gobject-1}[`libpolkit-gobject-1.so`{.filename}]{.term}   contains the [Polkit]{.application} authorization API functions
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](p11-kit.md "p11-kit-0.26.2"){accesskey="p"}

    p11-kit-0.26.2

-   [Next](polkit-gnome.md "polkit-gnome-0.105"){accesskey="n"}

    polkit-gnome-0.105

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
