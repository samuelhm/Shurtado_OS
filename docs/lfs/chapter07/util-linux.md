::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](texinfo.md "Texinfo-7.3"){accesskey="p"}

    Texinfo-7.3

-   [Next](cleanup.md "Cleaning up and Saving the Temporary System"){accesskey="n"}

    Cleaning up and Saving the Temporary System

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-util-linux}7.12. Util-linux-2.42.1 {#util-linux-2.42.1 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Util-linux package contains miscellaneous utility programs.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [192 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 7.12.1. Installation of Util-linux {#installation-of-util-linux .sect2}

The FHS recommends using the `/var/lib/hwclock`{.filename} directory instead of the usual `/etc`{.filename} directory as the location for the `adjtime`{.filename} file. Create this directory with:

``` userinput
mkdir -pv /var/lib/hwclock
```

Prepare Util-linux for compilation:

``` userinput
./configure --libdir=/usr/lib     \
            --runstatedir=/run    \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-static      \
            --disable-liblastlog2 \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.42.1
```

::: variablelist
**The meaning of the configure options:**

[*`ADJTIME_PATH=/var/lib/hwclock/adjtime`*]{.term}

:   This sets the location of the file recording information about the hardware clock in accordance to the FHS. This is not strictly needed for this temporary tool, but it prevents creating a file at another location, which would not be overwritten or removed when building the final util-linux package.

[*`--libdir=/usr/lib`*]{.term}

:   This switch ensures the `.so`{.filename} symlinks targeting the shared library file in the same directory (`/usr/lib`{.filename}) directly.

[*`--disable-*`*]{.term}

:   These switches prevent warnings about building components that require packages not in LFS or not installed yet.

[*`--without-python`*]{.term}

:   This switch disables using [Python]{.application}. It avoids trying to build unneeded bindings.

[*`runstatedir=/run`*]{.term}

:   This switch sets the location of the socket used by [**uuidd**]{.command} and `libuuid`{.filename} correctly.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.80.2, "Contents of Util-linux."](../chapter08/util-linux.md#contents-utillinux "8.80.2. Contents of Util-linux"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](texinfo.md "Texinfo-7.3"){accesskey="p"}

    Texinfo-7.3

-   [Next](cleanup.md "Cleaning up and Saving the Temporary System"){accesskey="n"}

    Cleaning up and Saving the Temporary System

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
