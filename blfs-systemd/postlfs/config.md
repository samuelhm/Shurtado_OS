::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Part II. Post LFS Configuration and Extra Software

-   [Prev](postlfs.md "Post LFS Configuration and Extra Software"){accesskey="p"}

    Post LFS Configuration and Extra Software

-   [Next](bootdisk.md "Creating a Custom Boot Device"){accesskey="n"}

    Creating a Custom Boot Device

-   [Up](postlfs.md "Part II. Post LFS Configuration and Extra Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-config}After LFS Configuration Issues {#after-lfs-configuration-issues .chapter}

:::: {.chapter lang="en"}
The intention of LFS is to provide a basic system which you can build upon. There are several things about tidying up the system which many people wonder about once they have done the base install. We hope to cover these issues in this chapter.

Most people coming from non-Unix like backgrounds to Linux find the concept of text-only configuration files slightly strange. In Linux, just about all configuration is done via the manipulation of text files. The majority of these files can be found in the `/etc`{.filename} hierarchy. There are often graphical configuration programs available for different subsystems but most are simply pretty front ends to the process of editing a text file. The advantage of text-only configuration is that you can edit parameters using your favorite text editor, whether that be [**vim**]{.command}, [**emacs**]{.command}, or any other editor.

The first task is making a recovery boot device in [Creating a Custom Boot Device](bootdisk.md "Creating a Custom Boot Device"){.xref} because it's the most critical need. Hardware issues relevant to firmware and other devices is addressed next. The system is then configured to ease addition of new users, because this can affect the choices you make in the two subsequent topics—[The Bash Shell Startup Files](profile.md "The Bash Shell Startup Files"){.xref} and [The vimrc Files](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){.xref}.

There is one remaining topic: [Customizing your Logon with /etc/issue](logon.md "Customizing your Logon with /etc/issue"){.xref}. It doesn't have much interaction with the other topics in this chapter.

::: toc
### Table of Contents

-   [Creating a Custom Boot Device](bootdisk.md)
-   [About Console Fonts](console-fonts.md)
-   [About Firmware](firmware.md)
-   [About Devices](devices.md)
-   [Configuring for Adding Users](skel.md)
-   [About System Users and Groups](users.md)
-   [The Bash Shell Startup Files](profile.md)
-   [The /etc/vimrc and \~/.vimrc Files](vimrc.md)
-   [Customizing your Logon with /etc/issue](logon.md)
:::
::::

::: navfooter
-   [Prev](postlfs.md "Post LFS Configuration and Extra Software"){accesskey="p"}

    Post LFS Configuration and Extra Software

-   [Next](bootdisk.md "Creating a Custom Boot Device"){accesskey="n"}

    Creating a Custom Boot Device

-   [Up](postlfs.md "Part II. Post LFS Configuration and Extra Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
