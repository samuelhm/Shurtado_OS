<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](devices.md "About Devices")

    About Devices

-   [Next](users.md "About System Users and Groups")

    About System Users and Groups

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Configuring for Adding Users {#configuring-for-adding-users}

<div class="sect1" lang="en">
Together, the <span class="command"><strong>/usr/sbin/useradd</strong></span> command and <code class="filename">/etc/skel</code> directory (both are easy to set up and use) provide a way to assure new users are added to your LFS system with the same beginning settings for things such as the <code class="envar">PATH</code>, keyboard processing and other environmental variables. Using these two facilities makes it easier to assure this initial state for each new user added to the system.

The <code class="filename">/etc/skel</code> directory holds copies of various initialization and other files that may be copied to the new user's home directory when the <span class="command"><strong>/usr/sbin/useradd</strong></span> program adds the new user.

##### Useradd

The <span class="command"><strong>useradd</strong></span> program uses a collection of default values kept in <code class="filename">/etc/default/useradd</code>. This file is created in a base LFS installation by the <span class="application">Shadow</span> package. If it has been removed or renamed, the <span class="command"><strong>useradd</strong></span> program uses some internal defaults. You can see the default values by running <span class="command"><strong>/usr/sbin/useradd -D</strong></span>.

To change these values, simply modify the <code class="filename">/etc/default/useradd</code> file as the <code class="systemitem">root</code> user. An alternative to directly modifying the file is to run <span class="command"><strong>useradd</strong></span> as the <code class="systemitem">root</code> user while supplying the desired modifications on the command line. Information on how to do this can be found in the <span class="command"><strong>useradd</strong></span> man page.

##### /etc/skel

To get started, create an <code class="filename">/etc/skel</code> directory and make sure it is writable only by the system administrator, usually <code class="systemitem">root</code>. Creating the directory as <code class="systemitem">root</code> is the best way to go.

The mode of any files from this part of the book that you put in <code class="filename">/etc/skel</code> should be writable only by the owner. Also, since there is no telling what kind of sensitive information a user may eventually place in their copy of these files, you should make them unreadable by "group" and "other".

You can also put other files in <code class="filename">/etc/skel</code> and different permissions may be needed for them.

Decide which initialization files should be provided in every (or most) new user's home directory. The decisions you make will affect what you do in the next two sections, <a class="xref" href="profile.md" title="The Bash Shell Startup Files">The Bash Shell Startup Files</a> and <a class="xref" href="vimrc.md" title="The /etc/vimrc and ~/.vimrc Files">The vimrc Files</a>. Some or all of those files will be useful for <code class="systemitem">root</code>, any already-existing users, and new users.

The files from those sections that you might want to place in <code class="filename">/etc/skel</code> include <code class="filename">.inputrc</code>, <code class="filename">.bash_profile</code>, <code class="filename">.bashrc</code>, <code class="filename">.bash_logout</code>, <code class="filename">.dircolors</code>, and <code class="filename">.vimrc</code>. If you are unsure which of these should be placed there, just continue to the following sections, read each section and any references provided, and then make your decision.

You will run a slightly modified set of commands for files which are placed in <code class="filename">/etc/skel</code>. Each section will remind you of this. In brief, the book's commands have been written for files <span class="emphasis"><em>not</em></span> added to <code class="filename">/etc/skel</code> and instead just sends the results to the user's home directory. If the file is going to be in <code class="filename">/etc/skel</code>, change the book's command(s) to send output there instead and then just copy the file from <code class="filename">/etc/skel</code> to the appropriate directories, like <code class="filename">/etc</code>, <code class="filename">~</code> or the home directory of any other user already in the system.

##### When Adding a User

When adding a new user with <span class="command"><strong>useradd</strong></span>, use the <code class="option">-m</code> parameter, which tells <span class="command"><strong>useradd</strong></span> to create the user's home directory and copy files from <code class="filename">/etc/skel</code> (can be overridden) to the new user's home directory. For example (perform as the <code class="systemitem">root</code> user):

```bash
useradd -m <newuser>
```

If you are sharing a <code class="filename">/home</code> or <code class="filename">/usr/src</code> with another Linux distro (for example, the host distro used for building LFS), you can create a user with the same UID (and, same primary group GID) to keep the file ownership consistent across the systems. First, on <span class="emphasis"><em>the other distro</em></span>, get the UID of the user and the GID of the user's primary group:

```bash
getent passwd <username> | cut -d ':' -f 3,4
```

The command should output the UID and GID, separated by a colon. Now on the BLFS system, create the primary group and the user:

```bash
groupadd -g <GID> <username> &&
useradd -u <UID> -g <username> <username>
```
</div>

<div class="navfooter">
-   [Prev](devices.md "About Devices")

    About Devices

-   [Next](users.md "About System Users and Groups")

    About System Users and Groups

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
