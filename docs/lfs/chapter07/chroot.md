::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](kernfs.md "Preparing Virtual Kernel File Systems"){accesskey="p"}

    Preparing Virtual Kernel File Systems

-   [Next](creatingdirs.md "Creating Directories"){accesskey="n"}

    Creating Directories

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-chroot}7.4. Entering the Chroot Environment {#entering-the-chroot-environment .sect1}

:::: {.sect1 lang="en"}
Now that all the packages which are required to build the rest of the needed tools are on the system, it is time to enter the chroot environment and finish installing the temporary tools. This environment will also be used to install the final system. As user `root`{.systemitem}, run the following command to enter the environment that is, at the moment, populated with nothing but temporary tools:

``` userinput
chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    MAKEFLAGS="-j$(nproc)"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    /bin/bash --login
```

If you don\'t want to use all available logical cores, replace *`$(nproc)`* with the number of logical cores you want to use for building packages in this chapter and the following chapters. The test suites of some packages (notably Autoconf, Libtool, and Tar) in [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref} are not affected by `MAKEFLAGS`{.envar}, they use a `TESTSUITEFLAGS`{.envar} environment variable instead. We set that here as well for running these test suites with multiple cores.

The *`-i`* option given to the [**env**]{.command} command will clear all the variables in the chroot environment. After that, only the `HOME`{.envar}, `TERM`{.envar}, `PS1`{.envar}, and `PATH`{.envar} variables are set again. The *`TERM=$TERM`* construct sets the `TERM`{.envar} variable inside chroot to the same value as outside chroot. This variable is needed so programs like [**vim**]{.command} and [**less**]{.command} can operate properly. If other variables are desired, such as `CFLAGS`{.envar} or `CXXFLAGS`{.envar}, this is a good place to set them.

From this point on, there is no need to use the `LFS`{.envar} variable any more because all work will be restricted to the LFS file system; the [**chroot**]{.command} command runs the Bash shell with the root (`/`{.filename}) directory set to `$LFS`{.filename}.

Notice that `/tools/bin`{.filename} is not in the `PATH`{.envar}. This means that the cross toolchain will no longer be used.

Also note that the [**bash**]{.command} prompt will say `I have no name!`{.computeroutput} This is normal because the `/etc/passwd`{.filename} file has not been created yet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

It is important that all the commands throughout the remainder of this chapter and the following chapters are run from within the chroot environment. If you leave this environment for any reason (rebooting for example), ensure that the virtual kernel filesystems are mounted as explained in [Section 7.3.1, "Mounting and Populating /dev"](kernfs.md#ch-tools-bindmount "7.3.1. Mounting and Populating /dev"){.xref} and [Section 7.3.2, "Mounting Virtual Kernel File Systems"](kernfs.md#ch-tools-kernfsmount "7.3.2. Mounting Virtual Kernel File Systems"){.xref} and enter chroot again before continuing with the installation.
:::
::::

::: navfooter
-   [Prev](kernfs.md "Preparing Virtual Kernel File Systems"){accesskey="p"}

    Preparing Virtual Kernel File Systems

-   [Next](creatingdirs.md "Creating Directories"){accesskey="n"}

    Creating Directories

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
