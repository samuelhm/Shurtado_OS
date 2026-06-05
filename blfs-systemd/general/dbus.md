::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](cups-pk-helper.md "cups-pk-helper-0.2.7"){accesskey="p"}

    cups-pk-helper-0.2.7

-   [Next](fcron.md "Fcron-3.4.0"){accesskey="n"}

    Fcron-3.4.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dbus}dbus-1.16.2 {#dbus-1.16.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to D-Bus {#introduction-to-d-bus .sect2}

Even though [D-Bus]{.application} was built in LFS, there are some features provided by the package that other BLFS packages need, but their dependencies didn't fit into LFS.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://dbus.freedesktop.org/releases/dbus/dbus-1.16.2.tar.xz](https://dbus.freedesktop.org/releases/dbus/dbus-1.16.2.tar.xz){.ulink}

-   Download MD5 sum: 97832e6f0a260936d28536e5349c22e5

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB (add 6 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.4 SBU for tests)
:::

### D-Bus Dependencies

#### Recommended

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref} (for [**dbus-launch**]{.command} program)

#### Optional

[[Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (runtime, for registering services launched by D-Bus session daemon as systemd user services);]{.phrase} For the tests: [D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, and [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}; for documentation: [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, [Ducktype](https://pypi.python.org/pypi/mallard-ducktype){.ulink}, and [Yelp Tools](https://download.gnome.org/sources/yelp-tools/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of D-Bus {#installation-of-d-bus .sect2}

Install [D-Bus]{.application} by running the following commands (you may wish to review the meson_options.txt file first and add any additional desired options to the meson setup line below):

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            .. &&
ninja
```

See below for test instructions.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you are using a DESTDIR install, [**dbus-daemon-launch-helper**]{.command} needs to be fixed afterwards. Issue, as `root`{.systemitem} user:

``` root
chown -v root:messagebus /usr/libexec/dbus-daemon-launch-helper &&
chmod -v      4750       /usr/libexec/dbus-daemon-launch-helper
```

Finally, still as the `root`{.systemitem} user, rename the documentation directory (it only exists if the optional dependencies are satisfied for at least one documentation format) to make it versioned:

``` root
if [ -e /usr/share/doc/dbus ]; then
  rm -rf /usr/share/doc/dbus-1.16.2    &&
  mv -v  /usr/share/doc/dbus{,-1.16.2}
fi
```

Many tests are disabled unless both [D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref} and [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} have been installed. They must be run as an unprivileged user from a local session with bus address. To run the standard tests issue [**ninja test**]{.command}.

If you want to run the unit regression tests, meson requires additional parameters which expose additional functionality in the binaries that are not intended to be used in a production build of [D-Bus]{.application}. If you would like to run the tests, issue the following commands (for the tests, you don't need to build the docs):

``` userinput
meson configure -D asserts=true -D intrusive_tests=true &&
ninja test
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D intrusive_tests=true`*: Builds extra parts of the code to support all tests. Do not use on a production build.

*`-D asserts=true`*: Enables debugging code to run assertions for statements normally assumed to be true. This prevents a warning that '*`-D asserts=true`*' on its own is only useful for profiling and might not give true results for all tests, but adds its own NOTE that this should not be used in a production build.
:::

::::::: {.configuration lang="en"}
## Configuring D-Bus {#configuring-d-bus .sect2}

::: {.sect3 lang="en"}
### []{#dbus-config}Config Files {#config-files .sect3}

`/etc/dbus-1/session.conf`{.filename}, `/etc/dbus-1/system.conf`{.filename} and `/etc/dbus-1/system.d/*`{.filename}
:::

::: {.sect3 lang="en"}
### []{#dbus-session-config}Configuration Information {#configuration-information .sect3}

The configuration files listed above should probably not be modified. If changes are required, you should create `/etc/dbus-1/session-local.conf`{.filename} and/or `/etc/dbus-1/system-local.conf`{.filename} and make any desired changes to these files.

If any package installs a [D-Bus]{.application} `.service`{.filename} file outside of the standard `/usr/share/dbus-1/services`{.filename} directory, that directory should be added to the local session configuration. For instance, `/usr/local/share/dbus-1/services`{.filename} can be added by performing the following commands as the `root`{.systemitem} user:

``` root
cat > /etc/dbus-1/session-local.conf << "EOF"
<!DOCTYPE busconfig PUBLIC
 "-//freedesktop//DTD D-BUS Bus Configuration 1.0//EN"
 "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
<busconfig>

  <!-- Search for .service files in /usr/local -->
  <servicedir>/usr/local/share/dbus-1/services</servicedir>

</busconfig>
EOF
```
:::

:::: {.sect3 lang="en"}
### []{#dbus-session}D-Bus Session Daemon {#d-bus-session-daemon .sect3}

There are many methods you can use to start a session daemon using the [**dbus-launch**]{.command} command. Review the [**dbus-launch**]{.command} man page for details about the available parameters and options. Here are some suggestions and examples:

::: itemizedlist
-   Add [**dbus-launch**]{.command} to the line in the `~/.xinitrc`{.filename} file that starts your graphical desktop environment.

-   If you use [**gdm**]{.command} or some other display manager that calls the `~/.xsession`{.filename} file, you can add [**dbus-launch**]{.command} to the line in your `~/.xsession`{.filename} file that starts your graphical desktop environment. The syntax would be similar to the example in the `~/.xinitrc`{.filename} file.

-   The examples shown previously use [**dbus-launch**]{.command} to specify a program to be run. This has the benefit (when also using the *`--exit-with-x11`* parameter) of stopping the session daemon when the specified program is stopped. You can also start the session daemon in your system or personal startup scripts by adding the following lines:

    ``` userinput
    # Start the D-Bus session daemon
    eval `dbus-launch`
    export DBUS_SESSION_BUS_ADDRESS
    ```

    This method will not stop the session daemon when you exit your shell, therefore you should add the following line to your `~/.bash_logout`{.filename} file:

    ``` userinput
    # Kill the D-Bus session daemon
    kill $DBUS_SESSION_BUS_PID
    ```
:::
::::
:::::::

::: {.content lang="en"}
## Contents {#contents .sect2}

A list of the installed files, along with their short descriptions can be found at [../../../../lfs/view/systemd/chapter08/dbus.md#contents-dbus](../../../../lfs/view/systemd/chapter08/dbus.md#contents-dbus){.ulink}.
:::
::::::::::::::

::: navfooter
-   [Prev](cups-pk-helper.md "cups-pk-helper-0.2.7"){accesskey="p"}

    cups-pk-helper-0.2.7

-   [Next](fcron.md "Fcron-3.4.0"){accesskey="n"}

    Fcron-3.4.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
