<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](cups-pk-helper.md "cups-pk-helper-0.2.7")

    cups-pk-helper-0.2.7

-   [Next](fcron.md "Fcron-3.4.0")

    Fcron-3.4.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dbus-1.16.2 {#dbus-1.16.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to D-Bus {#introduction-to-d-bus}

Even though <span class="application">D-Bus</span> was built in LFS, there are some features provided by the package that other BLFS packages need, but their dependencies didn't fit into LFS.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dbus.freedesktop.org/releases/dbus/dbus-1.16.2.tar.xz">https://dbus.freedesktop.org/releases/dbus/dbus-1.16.2.tar.xz</a>

-   Download MD5 sum: 97832e6f0a260936d28536e5349c22e5

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB (add 6 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.4 SBU for tests)
</div>

### D-Bus Dependencies

#### Recommended

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a> (for <span class="command"><strong>dbus-launch</strong></span> program)

#### Optional

<a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime, for registering services launched by D-Bus session daemon as systemd user services);</span> For the tests: <a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, and <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>; for documentation: <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, <a class="ulink" href="https://pypi.python.org/pypi/mallard-ducktype">Ducktype</a>, and <a class="ulink" href="https://download.gnome.org/sources/yelp-tools/">Yelp Tools</a>
</div>

<div class="installation" lang="en">
## Installation of D-Bus {#installation-of-d-bus}

Install <span class="application">D-Bus</span> by running the following commands (you may wish to review the meson_options.txt file first and add any additional desired options to the meson setup line below):

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            .. &&
ninja
```

See below for test instructions.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you are using a DESTDIR install, <span class="command"><strong>dbus-daemon-launch-helper</strong></span> needs to be fixed afterwards. Issue, as <code class="systemitem">root</code> user:

```bash
chown -v root:messagebus /usr/libexec/dbus-daemon-launch-helper &&
chmod -v      4750       /usr/libexec/dbus-daemon-launch-helper
```

Finally, still as the <code class="systemitem">root</code> user, rename the documentation directory (it only exists if the optional dependencies are satisfied for at least one documentation format) to make it versioned:

```bash
if [ -e /usr/share/doc/dbus ]; then
  rm -rf /usr/share/doc/dbus-1.16.2    &&
  mv -v  /usr/share/doc/dbus{,-1.16.2}
fi
```

Many tests are disabled unless both <a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a> and <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> have been installed. They must be run as an unprivileged user from a local session with bus address. To run the standard tests issue <span class="command"><strong>ninja test</strong></span>.

If you want to run the unit regression tests, meson requires additional parameters which expose additional functionality in the binaries that are not intended to be used in a production build of <span class="application">D-Bus</span>. If you would like to run the tests, issue the following commands (for the tests, you don't need to build the docs):

```bash
meson configure -D asserts=true -D intrusive_tests=true &&
ninja test
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D intrusive_tests=true`*: Builds extra parts of the code to support all tests. Do not use on a production build.

*`-D asserts=true`*: Enables debugging code to run assertions for statements normally assumed to be true. This prevents a warning that '*`-D asserts=true`*' on its own is only useful for profiling and might not give true results for all tests, but adds its own NOTE that this should not be used in a production build.
</div>

<div class="configuration" lang="en">
## Configuring D-Bus {#configuring-d-bus}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/dbus-1/session.conf</code>, <code class="filename">/etc/dbus-1/system.conf</code> and <code class="filename">/etc/dbus-1/system.d/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The configuration files listed above should probably not be modified. If changes are required, you should create <code class="filename">/etc/dbus-1/session-local.conf</code> and/or <code class="filename">/etc/dbus-1/system-local.conf</code> and make any desired changes to these files.

If any package installs a <span class="application">D-Bus</span> <code class="filename">.service</code> file outside of the standard <code class="filename">/usr/share/dbus-1/services</code> directory, that directory should be added to the local session configuration. For instance, <code class="filename">/usr/local/share/dbus-1/services</code> can be added by performing the following commands as the <code class="systemitem">root</code> user:

```bash
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
</div>

<div class="sect3" lang="en">
### D-Bus Session Daemon {#d-bus-session-daemon}

There are many methods you can use to start a session daemon using the <span class="command"><strong>dbus-launch</strong></span> command. Review the <span class="command"><strong>dbus-launch</strong></span> man page for details about the available parameters and options. Here are some suggestions and examples:

<div class="itemizedlist">
-   Add <span class="command"><strong>dbus-launch</strong></span> to the line in the <code class="filename">~/.xinitrc</code> file that starts your graphical desktop environment.

-   If you use <span class="command"><strong>gdm</strong></span> or some other display manager that calls the <code class="filename">~/.xsession</code> file, you can add <span class="command"><strong>dbus-launch</strong></span> to the line in your <code class="filename">~/.xsession</code> file that starts your graphical desktop environment. The syntax would be similar to the example in the <code class="filename">~/.xinitrc</code> file.

-   The examples shown previously use <span class="command"><strong>dbus-launch</strong></span> to specify a program to be run. This has the benefit (when also using the *`--exit-with-x11`* parameter) of stopping the session daemon when the specified program is stopped. You can also start the session daemon in your system or personal startup scripts by adding the following lines:

    ```bash
    # Start the D-Bus session daemon
    eval `dbus-launch`
    export DBUS_SESSION_BUS_ADDRESS
    ```

    This method will not stop the session daemon when you exit your shell, therefore you should add the following line to your <code class="filename">~/.bash_logout</code> file:

    ```bash
    # Kill the D-Bus session daemon
    kill $DBUS_SESSION_BUS_PID
    ```
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

A list of the installed files, along with their short descriptions can be found at <a class="ulink" href="../../../../lfs/view/systemd/chapter08/dbus.md#contents-dbus">../../../../lfs/view/systemd/chapter08/dbus.md#contents-dbus</a>.
</div>
</div>

<div class="navfooter">
-   [Prev](cups-pk-helper.md "cups-pk-helper-0.2.7")

    cups-pk-helper-0.2.7

-   [Next](fcron.md "Fcron-3.4.0")

    Fcron-3.4.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
