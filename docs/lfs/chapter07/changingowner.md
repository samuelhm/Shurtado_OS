::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](kernfs.md "Preparing Virtual Kernel File Systems"){accesskey="n"}

    Preparing Virtual Kernel File Systems

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-changingowner}7.2. Changing Ownership {#changing-ownership .sect1}

:::: {.sect1 lang="en"}
::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The commands in the remainder of this book must be performed while logged in as user `root`{.systemitem} and no longer as user `lfs`{.systemitem}. Also, double check that `$LFS`{.envar} is set in `root`{.systemitem}\'s environment.
:::

Currently, the whole directory hierarchy in `$LFS`{.filename} is owned by the user `lfs`{.systemitem}, a user that exists only on the host system. If the directories and files under `$LFS`{.filename} are kept as they are, they will be owned by a user ID without a corresponding account. This is dangerous because a user account created later could get this same user ID and would own all the files under `$LFS`{.filename}, thus exposing these files to possible malicious manipulation.

To address this issue, change the ownership of the `$LFS/*`{.filename} directories to user `root`{.systemitem} by running the following command:

``` userinput
chown --from lfs -R root:root $LFS/{usr,var,etc,tools}
case $(uname -m) in
  x86_64) chown --from lfs -R root:root $LFS/lib64 ;;
esac
```
::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](kernfs.md "Preparing Virtual Kernel File Systems"){accesskey="n"}

    Preparing Virtual Kernel File Systems

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
