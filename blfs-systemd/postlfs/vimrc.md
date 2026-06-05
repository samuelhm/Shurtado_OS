::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](profile.md "The Bash Shell Startup Files"){accesskey="p"}

    The Bash Shell Startup Files

-   [Next](logon.md "Customizing your Logon with /etc/issue"){accesskey="n"}

    Customizing your Logon with /etc/issue

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-config-vimrc}The /etc/vimrc and \~/.vimrc Files {#the-etcvimrc-and-.vimrc-files .sect1}

:::: {.sect1 lang="en"}
The LFS book installs [Vim]{.application} as its text editor. At this point it should be noted that there are a [*lot*]{.emphasis} of different editing applications out there including [Emacs]{.application}, [nano]{.application}, [Joe]{.application} and many more. Anyone who has been around the Internet (especially usenet) for a short time will certainly have observed at least one flame war, usually involving [Vim]{.application} and [Emacs]{.application} users!

The LFS book creates a basic `vimrc`{.filename} file. In this section you'll find an attempt to enhance this file. At startup, [**vim**]{.command} reads the global configuration file (`/etc/vimrc`{.filename}) as well as a user-specific file (`~/.vimrc`{.filename}). Either or both can be tailored to suit the needs of your particular system.

Here is a slightly expanded `.vimrc`{.filename} that you can put in `~/.vimrc`{.filename} to provide user specific effects. Of course, if you put it into `/etc/skel/.vimrc`{.filename} instead, it will be made available to users you add to the system later. You can also copy the file from `/etc/skel/.vimrc`{.filename} to the home directory of users already on the system, such as `root`{.systemitem}. Be sure to set permissions, owner, and group if you do copy anything directly from `/etc/skel`{.filename}.

``` screen
" Begin .vimrc

set columns=80
set wrapmargin=8
set ruler

" End .vimrc
```

Note that the comment tags are " instead of the more usual \# or //. This is correct, the syntax for `vimrc`{.filename} is slightly unusual.

Below you'll find a quick explanation of what each of the options in this example file means here:

::: itemizedlist
-   `set columns=80`{.option}: This simply sets the number of columns used on the screen.

-   `set wrapmargin=8`{.option}: This is the number of characters from the right window border where wrapping starts.

-   `set ruler`{.option}: This makes [**vim**]{.command} show the current row and column at the bottom right of the screen.
:::

More information on the [*many*]{.emphasis} [**vim**]{.command} options can be found by reading the help inside [**vim**]{.command} itself. Do this by typing [**:**]{.command}`help`{.option} in [**vim**]{.command} to get the general help, or by typing [**:**]{.command}`help usr_toc.txt`{.option} to view the User Manual Table of Contents.
::::

::: navfooter
-   [Prev](profile.md "The Bash Shell Startup Files"){accesskey="p"}

    The Bash Shell Startup Files

-   [Next](logon.md "Customizing your Logon with /etc/issue"){accesskey="n"}

    Customizing your Logon with /etc/issue

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
