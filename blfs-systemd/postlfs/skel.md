::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](devices.md "About Devices"){accesskey="p"}

    About Devices

-   [Next](users.md "About System Users and Groups"){accesskey="n"}

    About System Users and Groups

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-config-skel}Configuring for Adding Users {#configuring-for-adding-users .sect1}

::: {.sect1 lang="en"}
Together, the [**/usr/sbin/useradd**]{.command} command and `/etc/skel`{.filename} directory (both are easy to set up and use) provide a way to assure new users are added to your LFS system with the same beginning settings for things such as the `PATH`{.envar}, keyboard processing and other environmental variables. Using these two facilities makes it easier to assure this initial state for each new user added to the system.

The `/etc/skel`{.filename} directory holds copies of various initialization and other files that may be copied to the new user's home directory when the [**/usr/sbin/useradd**]{.command} program adds the new user.

##### Useradd

The [**useradd**]{.command} program uses a collection of default values kept in `/etc/default/useradd`{.filename}. This file is created in a base LFS installation by the [Shadow]{.application} package. If it has been removed or renamed, the [**useradd**]{.command} program uses some internal defaults. You can see the default values by running [**/usr/sbin/useradd -D**]{.command}.

To change these values, simply modify the `/etc/default/useradd`{.filename} file as the `root`{.systemitem} user. An alternative to directly modifying the file is to run [**useradd**]{.command} as the `root`{.systemitem} user while supplying the desired modifications on the command line. Information on how to do this can be found in the [**useradd**]{.command} man page.

##### /etc/skel

To get started, create an `/etc/skel`{.filename} directory and make sure it is writable only by the system administrator, usually `root`{.systemitem}. Creating the directory as `root`{.systemitem} is the best way to go.

The mode of any files from this part of the book that you put in `/etc/skel`{.filename} should be writable only by the owner. Also, since there is no telling what kind of sensitive information a user may eventually place in their copy of these files, you should make them unreadable by "group" and "other".

You can also put other files in `/etc/skel`{.filename} and different permissions may be needed for them.

Decide which initialization files should be provided in every (or most) new user's home directory. The decisions you make will affect what you do in the next two sections, [The Bash Shell Startup Files](profile.md "The Bash Shell Startup Files"){.xref} and [The vimrc Files](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){.xref}. Some or all of those files will be useful for `root`{.systemitem}, any already-existing users, and new users.

The files from those sections that you might want to place in `/etc/skel`{.filename} include `.inputrc`{.filename}, `.bash_profile`{.filename}, `.bashrc`{.filename}, `.bash_logout`{.filename}, `.dircolors`{.filename}, and `.vimrc`{.filename}. If you are unsure which of these should be placed there, just continue to the following sections, read each section and any references provided, and then make your decision.

You will run a slightly modified set of commands for files which are placed in `/etc/skel`{.filename}. Each section will remind you of this. In brief, the book's commands have been written for files [*not*]{.emphasis} added to `/etc/skel`{.filename} and instead just sends the results to the user's home directory. If the file is going to be in `/etc/skel`{.filename}, change the book's command(s) to send output there instead and then just copy the file from `/etc/skel`{.filename} to the appropriate directories, like `/etc`{.filename}, `~`{.filename} or the home directory of any other user already in the system.

##### When Adding a User

When adding a new user with [**useradd**]{.command}, use the `-m`{.option} parameter, which tells [**useradd**]{.command} to create the user's home directory and copy files from `/etc/skel`{.filename} (can be overridden) to the new user's home directory. For example (perform as the `root`{.systemitem} user):

``` root
useradd -m <newuser>
```

If you are sharing a `/home`{.filename} or `/usr/src`{.filename} with another Linux distro (for example, the host distro used for building LFS), you can create a user with the same UID (and, same primary group GID) to keep the file ownership consistent across the systems. First, on [*the other distro*]{.emphasis}, get the UID of the user and the GID of the user's primary group:

``` userinput
getent passwd <username> | cut -d ':' -f 3,4
```

The command should output the UID and GID, separated by a colon. Now on the BLFS system, create the primary group and the user:

``` root
groupadd -g <GID> <username> &&
useradd -u <UID> -g <username> <username>
```
:::

::: navfooter
-   [Prev](devices.md "About Devices"){accesskey="p"}

    About Devices

-   [Next](users.md "About System Users and Groups"){accesskey="n"}

    About System Users and Groups

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
