<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](profile.md "The Bash Shell Startup Files")

    The Bash Shell Startup Files

-   [Next](logon.md "Customizing your Logon with /etc/issue")

    Customizing your Logon with /etc/issue

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# The /etc/vimrc and \~/.vimrc Files {#the-etcvimrc-and-.vimrc-files}

<div class="sect1" lang="en">
The LFS book installs <span class="application">Vim</span> as its text editor. At this point it should be noted that there are a <span class="emphasis"><em>lot</em></span> of different editing applications out there including <span class="application">Emacs</span>, <span class="application">nano</span>, <span class="application">Joe</span> and many more. Anyone who has been around the Internet (especially usenet) for a short time will certainly have observed at least one flame war, usually involving <span class="application">Vim</span> and <span class="application">Emacs</span> users!

The LFS book creates a basic <code class="filename">vimrc</code> file. In this section you'll find an attempt to enhance this file. At startup, <span class="command"><strong>vim</strong></span> reads the global configuration file (<code class="filename">/etc/vimrc</code>) as well as a user-specific file (<code class="filename">~/.vimrc</code>). Either or both can be tailored to suit the needs of your particular system.

Here is a slightly expanded <code class="filename">.vimrc</code> that you can put in <code class="filename">~/.vimrc</code> to provide user specific effects. Of course, if you put it into <code class="filename">/etc/skel/.vimrc</code> instead, it will be made available to users you add to the system later. You can also copy the file from <code class="filename">/etc/skel/.vimrc</code> to the home directory of users already on the system, such as <code class="systemitem">root</code>. Be sure to set permissions, owner, and group if you do copy anything directly from <code class="filename">/etc/skel</code>.

```console
" Begin .vimrc

set columns=80
set wrapmargin=8
set ruler

" End .vimrc
```

Note that the comment tags are " instead of the more usual \# or //. This is correct, the syntax for <code class="filename">vimrc</code> is slightly unusual.

Below you'll find a quick explanation of what each of the options in this example file means here:

<div class="itemizedlist">
-   <code class="option">set columns=80</code>: This simply sets the number of columns used on the screen.

-   <code class="option">set wrapmargin=8</code>: This is the number of characters from the right window border where wrapping starts.

-   <code class="option">set ruler</code>: This makes <span class="command"><strong>vim</strong></span> show the current row and column at the bottom right of the screen.
</div>

More information on the <span class="emphasis"><em>many</em></span> <span class="command"><strong>vim</strong></span> options can be found by reading the help inside <span class="command"><strong>vim</strong></span> itself. Do this by typing <span class="command"><strong>:</strong></span><code class="option">help</code> in <span class="command"><strong>vim</strong></span> to get the general help, or by typing <span class="command"><strong>:</strong></span><code class="option">help usr_toc.txt</code> to view the User Manual Table of Contents.
</div>

<div class="navfooter">
-   [Prev](profile.md "The Bash Shell Startup Files")

    The Bash Shell Startup Files

-   [Next](logon.md "Customizing your Logon with /etc/issue")

    Customizing your Logon with /etc/issue

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
