::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](chapter07.md "Entering Chroot and Building Additional Temporary Tools"){accesskey="p"}

    Entering Chroot and Building Additional Temporary Tools

-   [Next](changingowner.md "Changing Ownership"){accesskey="n"}

    Changing Ownership

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-introduction-chroot}7.1. Introduction {#introduction .sect1}

::: {.sect1 lang="en"}
This chapter shows how to build the last missing bits of the temporary system: the tools needed to build the various packages. Now that all circular dependencies have been resolved, a ["[chroot]{.quote}"]{.quote} environment, completely isolated from the host operating system (except for the running kernel), can be used for the build.

For proper operation of the isolated environment, some communication with the running kernel must be established. This is done via the so-called [*Virtual Kernel File Systems*]{.emphasis}, which will be mounted before entering the chroot environment. You may want to verify that they are mounted by issuing the [**findmnt**]{.command} command.

Until [Section 7.4, "Entering the Chroot Environment"](chroot.md "7.4. Entering the Chroot Environment"){.xref}, the commands must be run as `root`{.systemitem}, with the `LFS`{.envar} variable set. After entering chroot, all commands are run as `root`{.systemitem}, fortunately without access to the OS of the computer you built LFS on. Be careful anyway, as it is easy to destroy the whole LFS system with bad commands.
:::

::: navfooter
-   [Prev](chapter07.md "Entering Chroot and Building Additional Temporary Tools"){accesskey="p"}

    Entering Chroot and Building Additional Temporary Tools

-   [Next](changingowner.md "Changing Ownership"){accesskey="n"}

    Changing Ownership

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
