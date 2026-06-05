::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){accesskey="p"}

    The /etc/vimrc and \~/.vimrc Files

-   [Next](security.md "Security"){accesskey="n"}

    Security

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-config-logon}Customizing your Logon with /etc/issue {#customizing-your-logon-with-etcissue .sect1}

:::: {.sect1 lang="en"}
When you first boot up your new LFS system, the logon screen will be nice and plain (as it should be in a bare-bones system). Many people however, will want their system to display some information in the logon message. This can be accomplished using the file `/etc/issue`{.filename}.

The `/etc/issue`{.filename} file is a plain text file which will also accept certain escape sequences (see below) in order to insert information about the system. There is also the file `issue.net`{.filename} which can be used when logging on remotely. [**ssh**]{.command} however, will only use it if you set the option in the configuration file and will [*not*]{.emphasis} interpret the escape sequences shown below.

One of the most common things which people want to do is clear the screen at each logon. The easiest way of doing that is to put a "clear" escape sequence into `/etc/issue`{.filename}. A simple way of doing this is to issue the command [**clear \> /etc/issue**]{.command}. This will insert the relevant escape code into the start of the `/etc/issue`{.filename} file. Note that if you do this, when you edit the file, you should leave the characters (normally '\^\[\[H\^\[\[2J') on the first line alone.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Terminal escape sequences are special codes recognized by the terminal. The \^\[ represents an ASCII ESC character. The sequence ESC \[ H puts the cursor in the upper left hand corner of the screen and ESC 2 J erases the screen. For more information on terminal escape sequences see [https://invisible-mirror.net/xterm/ctlseqs/ctlseqs.html](https://invisible-mirror.net/xterm/ctlseqs/ctlseqs.md){.ulink}
:::

The following sequences are recognized by [**agetty**]{.command} (the program which usually parses `/etc/issue`{.filename}). This information is from [**man agetty**]{.command} where you can find extra information about the logon process.

The `issue`{.filename} file can contain certain character sequences to display various information. All `issue`{.filename} sequences consist of a backslash (\\) immediately followed by one of the letters explained below (so `\d`{.option} in `/etc/issue`{.filename} would insert the current date).

``` screen
b   Insert the baudrate of the current line.
d   Insert the current date.
s   Insert the system name, the name of the operating system.
l   Insert the name of the current tty line.
m   Insert the architecture identifier of the machine, e.g., i686.
n   Insert the nodename of the machine, also known as the hostname.
o   Insert the domainname of the machine.
r   Insert the release number of the kernel, e.g., 2.6.11.12.
t   Insert the current time.
u   Insert the number of current users logged in.
U   Insert the string "1 user" or "<n> users" where <n> is the
    number of current users logged in.
v   Insert the version of the OS, e.g., the build-date etc.
```
::::

::: navfooter
-   [Prev](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){accesskey="p"}

    The /etc/vimrc and \~/.vimrc Files

-   [Next](security.md "Security"){accesskey="n"}

    Security

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
