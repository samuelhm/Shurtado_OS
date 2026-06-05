<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](vimrc.md "The /etc/vimrc and ~/.vimrc Files")

    The /etc/vimrc and \~/.vimrc Files

-   [Next](security.md "Security")

    Security

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Customizing your Logon with /etc/issue {#customizing-your-logon-with-etcissue}

<div class="sect1" lang="en">
When you first boot up your new LFS system, the logon screen will be nice and plain (as it should be in a bare-bones system). Many people however, will want their system to display some information in the logon message. This can be accomplished using the file <code class="filename">/etc/issue</code>.

The <code class="filename">/etc/issue</code> file is a plain text file which will also accept certain escape sequences (see below) in order to insert information about the system. There is also the file <code class="filename">issue.net</code> which can be used when logging on remotely. <span class="command"><strong>ssh</strong></span> however, will only use it if you set the option in the configuration file and will <span class="emphasis"><em>not</em></span> interpret the escape sequences shown below.

One of the most common things which people want to do is clear the screen at each logon. The easiest way of doing that is to put a "clear" escape sequence into <code class="filename">/etc/issue</code>. A simple way of doing this is to issue the command <span class="command"><strong>clear \> /etc/issue</strong></span>. This will insert the relevant escape code into the start of the <code class="filename">/etc/issue</code> file. Note that if you do this, when you edit the file, you should leave the characters (normally '\^\[\[H\^\[\[2J') on the first line alone.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Terminal escape sequences are special codes recognized by the terminal. The \^\<a class="ulink" href="https://invisible-mirror.net/xterm/ctlseqs/ctlseqs.md"> represents an ASCII ESC character. The sequence ESC \[ H puts the cursor in the upper left hand corner of the screen and ESC 2 J erases the screen. For more information on terminal escape sequences see [https://invisible-mirror.net/xterm/ctlseqs/ctlseqs.html</a>
</div>

The following sequences are recognized by <span class="command"><strong>agetty</strong></span> (the program which usually parses <code class="filename">/etc/issue</code>). This information is from <span class="command"><strong>man agetty</strong></span> where you can find extra information about the logon process.

The <code class="filename">issue</code> file can contain certain character sequences to display various information. All <code class="filename">issue</code> sequences consist of a backslash (\\) immediately followed by one of the letters explained below (so <code class="option">\d</code> in <code class="filename">/etc/issue</code> would insert the current date).

```console
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
</div>

<div class="navfooter">
-   [Prev](vimrc.md "The /etc/vimrc and ~/.vimrc Files")

    The /etc/vimrc and \~/.vimrc Files

-   [Next](security.md "Security")

    Security

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
