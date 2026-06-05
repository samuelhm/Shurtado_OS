::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](7zip.md "7zip-26.01"){accesskey="p"}

    7zip-26.01

-   [Next](acpid.md "acpid-2.0.34"){accesskey="n"}

    acpid-2.0.34

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#accountsservice}AccountsService-23.13.9 {#accountsservice-23.13.9 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to AccountsService {#introduction-to-accountsservice .sect2}

The [AccountsService]{.application} package provides a set of [D-Bus]{.application} interfaces for querying and manipulating user account information and an implementation of those interfaces based on the [usermod(8)](https://man.archlinux.org/man/usermod.8){.ulink}, [useradd(8)](https://man.archlinux.org/man/useradd.8){.ulink}, and [userdel(8)](https://man.archlinux.org/man/userdel.8){.ulink} commands.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/accountsservice/accountsservice-23.13.9.tar.xz](https://www.freedesktop.org/software/accountsservice/accountsservice-23.13.9.tar.xz){.ulink}

-   Download MD5 sum: 03dccfe1b306b7ca19743e86d118e64d

-   Download size: 621 KB

-   Estimated disk space required: 9.8 MB (add 0.5 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### AccountsService Dependencies

#### Required

[Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (runtime),]{.phrase} and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}

#### Optional (for tests)

[dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} and [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of AccountsService {#installation-of-accountsservice .sect2}

First, rename a directory whose presence prevents the build system from running if [dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} is not installed:

``` userinput
mv tests/dbusmock{,-tests}
```

Then fix a test script so that the new directory is found, and adapt it for Python 3.12.0 or later:

``` userinput
sed -e '/accounts_service\.py/s/dbusmock/dbusmock-tests/' \
    -e 's/assertEquals/assertEqual/'                      \
    -i tests/test-libaccountsservice.py
```

Fix one test that fails if the `en_IE.UTF-8`{.option} locale is not installed:

``` userinput
sed -i '/^SIMULATED_SYSTEM_LOCALE/s/en_IE.UTF-8/en_HK.iso88591/' tests/test-daemon.py
```

Install [AccountsService]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D admin_group=adm
```

Now adapt the shipped mocklibc copy to allow building the test suite with GCC 14 or later:

``` userinput
grep 'print_indent'     ../subprojects/mocklibc-1.0/src/netgroup.c \
     | sed 's/ {/;/' >> ../subprojects/mocklibc-1.0/src/netgroup.h &&
sed -i '1i#include <stdio.h>'                                      \
    ../subprojects/mocklibc-1.0/src/netgroup.h
```

Build the package:

``` userinput
ninja
```

To test the package, issue [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D admin_group=adm`*: This switch sets the group for administrator accounts.

`-D docbook=true`{.option}: This switch enables building the D-Bus interface API documentation (needs [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}).

`-D gtk_doc=true`{.option}: This switch enables building the libaccountsservice API documentation (needs [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}).

`-D vapi=false`{.option}: This switch disables building the vala bindings. Use it if you have not installed [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}.
:::

::: {.configuration lang="en"}
## Configuring AccountsService {#configuring-accountsservice .sect2}

To allow users in the adm group to be listed as Administrators, execute the following commands as the `root`{.systemitem} user:

``` root
cat > /etc/polkit-1/rules.d/40-adm.rules << "EOF"
polkit.addAdminRule(function(action, subject) {
   return ["unix-group:adm"];
   });
EOF
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [accounts-daemon (in `/usr/libexec`{.filename})]{.segbody}
:::

::: seg
**Installed Libraries:** [libaccountsservice.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/accountsservice-1.0, /usr/share/accountsservice, /usr/share/gtk-doc/html/libaccountsservice (optional), and /var/lib/AccountsService]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------
  []{#accounts-daemon}[[**accounts-daemon**]{.command}]{.term}         is the [AccountsService]{.application} daemon
  []{#libaccountsservice}[`libaccountsservice.so`{.filename}]{.term}   contains the [AccountsService]{.application} API functions
  -------------------------------------------------------------------- ------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](7zip.md "7zip-26.01"){accesskey="p"}

    7zip-26.01

-   [Next](acpid.md "acpid-2.0.34"){accesskey="n"}

    acpid-2.0.34

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
