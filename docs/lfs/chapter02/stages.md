::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](hostreqs.md "Host System Requirements"){accesskey="p"}

    Host System Requirements

-   [Next](creatingpartition.md "Creating a New Partition"){accesskey="n"}

    Creating a New Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-stages}2.3. Building LFS in Stages {#building-lfs-in-stages .sect1}

::::::::: {.sect1 lang="en"}
LFS is designed to be built in one session. That is, the instructions assume that the system will not be shut down during the process. This does not mean that the system has to be built in one sitting. The issue is that certain procedures must be repeated after a reboot when resuming LFS at different points.

:::: {.sect2 lang="en"}
## 2.3.1. Chapters 1--4 {#chapters-14 .sect2}

These chapters run commands on the host system. When restarting, be certain of one thing:

::: itemizedlist
-   Procedures performed as the `root`{.systemitem} user after Section 2.4 must have the LFS environment variable set [*FOR THE ROOT USER*]{.emphasis}.
:::
::::

:::: {.sect2 lang="en"}
## 2.3.2. Chapters 5--6 {#chapters-56 .sect2}

::: itemizedlist
-   The /mnt/lfs partition must be mounted.

-   These two chapters [*must*]{.emphasis} be done as user `lfs`{.systemitem}. A [**su - lfs**]{.command} command must be issued before performing any task in these chapters. If you don\'t do that, you are at risk of installing packages to the host, and potentially rendering it unusable.

-   The procedures in [General Compilation Instructions](../partintro/generalinstructions.md "General Compilation Instructions"){.xref} are critical. If there is any doubt a package has been installed correctly, ensure the previously expanded tarball has been removed, then re-extract the package, and complete all the instructions in that section.
:::
::::

:::: {.sect2 lang="en"}
## 2.3.3. Chapters 7--10 {#chapters-710 .sect2}

::: itemizedlist
-   The /mnt/lfs partition must be mounted.

-   A few operations, from ["[Preparing Virtual Kernel File Systems]{.quote}"]{.quote} to ["[Entering the Chroot Environment,]{.quote}"]{.quote} must be done as the `root`{.systemitem} user, with the LFS environment variable set for the `root`{.systemitem} user.

-   When entering chroot, the LFS environment variable must be set for `root`{.systemitem}. The LFS variable is not used after the chroot environment has been entered.

-   The virtual file systems must be mounted. This can be done before or after entering chroot by changing to a host virtual terminal and, as `root`{.systemitem}, running the commands in [Section 7.3.1, "Mounting and Populating /dev"](../chapter07/kernfs.md#ch-tools-bindmount "7.3.1. Mounting and Populating /dev"){.xref} and [Section 7.3.2, "Mounting Virtual Kernel File Systems."](../chapter07/kernfs.md#ch-tools-kernfsmount "7.3.2. Mounting Virtual Kernel File Systems"){.xref}
:::
::::
:::::::::

::: navfooter
-   [Prev](hostreqs.md "Host System Requirements"){accesskey="p"}

    Host System Requirements

-   [Next](creatingpartition.md "Creating a New Partition"){accesskey="n"}

    Creating a New Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
