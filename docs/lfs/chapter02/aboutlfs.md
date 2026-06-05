::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](creatingfilesystem.md "Creating a File System on the Partition"){accesskey="p"}

    Creating a File System on the Partition

-   [Next](mounting.md "Mounting the New Partition"){accesskey="n"}

    Mounting the New Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-aboutlfs}2.6. Setting the \$LFS Variable and the Umask {#setting-the-lfs-variable-and-the-umask .sect1}

::::: {.sect1 lang="en"}
Throughout this book, the environment variable `LFS`{.envar} will be used several times. You should ensure that this variable is always defined throughout the LFS build process. It should be set to the name of the directory where you will be building your LFS system - we will use `/mnt/lfs`{.filename} as an example, but you may choose any directory name you want. If you are building LFS on a separate partition, this directory will be the mount point for the partition. Choose a directory location and set the variable with the following command:

``` userinput
export LFS=/mnt/lfs
```

Having this variable set is beneficial in that commands such as [**mkdir -v \$LFS/tools**]{.command} can be typed literally. The shell will automatically replace ["[\$LFS]{.quote}"]{.quote} with ["[/mnt/lfs]{.quote}"]{.quote} (or whatever value the variable was set to) when it processes the command line.

Now set the file mode creation mask (umask) to `022`{.literal} in case the host distro uses a different default:

``` userinput
umask 022
```

Setting the umask to 022 ensures that newly created files and directories are only writable by their owner, but are readable and searchable (only for directories) by anyone (assuming default modes are used by the [open(2)](https://man.archlinux.org/man/open.2){.ulink} system call, new files will end up with permission mode 644 and directories with mode 755). An overly-permissive default can leave security holes in the LFS system, and an overly-restrictive default can cause strange issues building or using the LFS system.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

Do not forget to check that `LFS`{.envar} is set and the umask is set to `022`{.literal} whenever you leave and reenter the current working environment (such as when doing a [**su**]{.command} to `root`{.systemitem} or another user). Check that the `LFS`{.envar} variable is set up properly with:

``` userinput
echo $LFS
```

Make sure the output shows the path to your LFS system\'s build location, which is `/mnt/lfs`{.filename} if the provided example was followed.

Check that the umask is set up properly with:

``` userinput
umask
```

The output may be `0022`{.computeroutput} or `022`{.computeroutput} (the number of leading zeros depends on the host distro).

If any output of these two commands is incorrect, use the command given earlier on this page to set `$LFS`{.envar} to the correct directory name and set umask to `022`{.literal}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

One way to ensure that the `LFS`{.envar} variable and the umask are always set properly is to edit the `.bash_profile`{.filename} file in both your personal home directory and in `/root/.bash_profile`{.filename} and enter the [**export**]{.command} and [**umask**]{.command} commands above. In addition, the shell specified in the `/etc/passwd`{.filename} file for all users that need the `LFS`{.envar} variable must be bash to ensure that the `.bash_profile`{.filename} file is incorporated as a part of the login process.

Another consideration is the method that is used to log into the host system. If logging in through a graphical display manager, the user\'s `.bash_profile`{.filename} is not normally used when a virtual terminal is started. In this case, add the commands to the `.bashrc`{.filename} file for the user and `root`{.systemitem}. In addition, some distributions use an \"if\" test, and do not run the remaining `.bashrc`{.filename} instructions for a non-interactive bash invocation. Be sure to place the commands ahead of the test for non-interactive use.
:::
:::::

::: navfooter
-   [Prev](creatingfilesystem.md "Creating a File System on the Partition"){accesskey="p"}

    Creating a File System on the Partition

-   [Next](mounting.md "Mounting the New Partition"){accesskey="n"}

    Mounting the New Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
