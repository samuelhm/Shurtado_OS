::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](systemd.md "Systemd-260.2"){accesskey="p"}

    Systemd-260.2

-   [Next](man-db.md "Man-DB-2.13.1"){accesskey="n"}

    Man-DB-2.13.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-dbus}8.77. D-Bus-1.16.2 {#d-bus-1.16.2 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
D-Bus is a message bus system, a simple way for applications to talk to one another. D-Bus supplies both a system daemon (for events such as \"new hardware device added\" or \"printer queue changed\") and a per-user-login-session daemon (for general IPC needs among user applications). Also, the message bus is built on top of a general one-to-one message passing framework, which can be used by any two applications to communicate directly (without going through the message bus daemon).

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [17 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.77.1. Installation of D-Bus {#installation-of-d-bus .sect2}

Prepare D-Bus for compilation:

``` userinput
mkdir build
cd    build

meson setup --prefix=/usr --buildtype=release --wrap-mode=nofallback ..
```

::: variablelist
**The meaning of the meson options:**

[*`--wrap-mode=nofallback`*]{.term}

:   This switch prevents meson from attempting to download a copy of the Glib package for the tests.
:::

Compile the package:

``` userinput
ninja
```

To test the results, issue:

``` userinput
ninja test
```

Many tests are disabled because they require additional packages that are not included in LFS. Instructions for running the comprehensive test suite can be found in [the BLFS book](https://www.linuxfromscratch.org/blfs/view/systemd/general/dbus.html){.ulink}.

Install the package:

``` userinput
ninja install
```

Create a symlink so that D-Bus and systemd can use the same `machine-id`{.filename} file:

``` userinput
ln -sfv /etc/machine-id /var/lib/dbus
```
::::

::::::::: {.content lang="en"}
## []{#contents-dbus}8.77.2. Contents of D-Bus {#contents-of-d-bus .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [dbus-cleanup-sockets, dbus-daemon, dbus-launch, dbus-monitor, dbus-run-session, dbus-send, dbus-test-tool, dbus-update-activation-environment, and dbus-uuidgen]{.segbody}
:::

::: seg
**Installed libraries:** [libdbus-1.so]{.segbody}
:::

::: seg
**Installed directories:** [/etc/dbus-1, /usr/include/dbus-1.0, /usr/lib/dbus-1.0, /usr/share/dbus-1, /usr/share/doc/dbus-1.16.2, and /var/lib/dbus]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  []{#dbus-cleanup-sockets}[[**dbus-cleanup-sockets**]{.command}]{.term}                               is used to remove leftover sockets in a directory
  []{#dbus-daemon}[[**dbus-daemon**]{.command}]{.term}                                                 is the D-Bus message bus daemon
  []{#dbus-launch}[[**dbus-launch**]{.command}]{.term}                                                 starts [**dbus-daemon**]{.command} from a shell script
  []{#dbus-monitor}[[**dbus-monitor**]{.command}]{.term}                                               monitors messages passing through a D-Bus message bus
  []{#dbus-run-session}[[**dbus-run-session**]{.command}]{.term}                                       starts a session bus instance of [**dbus-daemon**]{.command} from a shell script and starts a specified program in that session
  []{#dbus-send}[[**dbus-send**]{.command}]{.term}                                                     sends a message to a D-Bus message bus
  []{#dbus-test-tool}[[**dbus-test-tool**]{.command}]{.term}                                           is a tool to help packages test [D-Bus]{.application}
  []{#dbus-update-activation-environment}[[**dbus-update-activation-environment**]{.command}]{.term}   updates environment variables that will be set for [D-Bus]{.application} session services
  []{#dbus-uuidgen}[[**dbus-uuidgen**]{.command}]{.term}                                               Generates a universally unique ID
  []{#libdbus-1}[`libdbus-1`{.filename}]{.term}                                                        Contains API functions used to communicate with the D-Bus message bus
  ---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](systemd.md "Systemd-260.2"){accesskey="p"}

    Systemd-260.2

-   [Next](man-db.md "Man-DB-2.13.1"){accesskey="n"}

    Man-DB-2.13.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
