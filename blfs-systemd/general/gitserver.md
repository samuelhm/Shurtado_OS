::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](git.md "Git-2.54.0"){accesskey="p"}

    Git-2.54.0

-   [Next](guile.md "Guile-3.0.11"){accesskey="n"}

    Guile-3.0.11

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gitserver}Running a Git Server {#running-a-git-server .sect1}

::::::::::::::: {.sect1 lang="en"}
::: {.package lang="en"}
## Introduction {#introduction .sect2}

This section will describe how to set up, administer and secure a [git]{.application} server. [Git]{.application} has many options available. For more detailed documentation see [https://git-scm.com/book/en/v2](https://git-scm.com/book/en/v2){.ulink}.

### Server Dependencies

#### Required

[git-2.54.0](git.md "Git-2.54.0"){.xref} and [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}
:::

::::::::::::: {.configuration lang="en"}
## Setting up a Git Server {#setting-up-a-git-server .sect2}

The following instructions will install a [git]{.application} server. It will be set up to use [OpenSSH]{.application} as the secure remote access method.

Configuration of the server consists of the following steps:

::: {.sect3 lang="en"}
### 1. Set Up Users, Groups, and Permissions {#set-up-users-groups-and-permissions .sect3}

You will need to be user `root`{.systemitem} for the initial portion of configuration. Create the `git`{.systemitem} user and group and set and unusable password hash with the following commands:

``` root
groupadd -g 58 git &&
useradd -c "git Owner" -d /home/git -m -g git -s /usr/bin/git-shell -u 58 git &&
sed -i '/^git:/s/^git:[^:]:/git:NP:/' /etc/shadow
```

Putting in an unusable password hash (replacing the `!`{.literal} by `NP`{.literal}) unlocks the account but it cannot be used to login via password authentication. That is required by [sshd]{.application} to work properly. Next, create some files and directories in the home directory of the git user allowing access to the git repository using ssh keys.

``` root
install -o git -g git -dm0700 /home/git/.ssh &&
install -o git -g git -m0600 /dev/null /home/git/.ssh/authorized_keys
```

For any developer who should have access to the repository add his/her public ssh key to `/home/git/.ssh/authorized_keys`{.filename}. First, prepend some options to prevent users from using the connection to git for port forwarding to other machines the git server might reach.

``` userinput
echo -n "no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty " >> /home/git/.ssh/authorized_keys &&
cat <user-ssh-key> >> /home/git/.ssh/authorized_keys
```

It is also useful to set the default name of the initial branch of new repositories by modifying the git configuration. As the `root`{.systemitem} user, run:

``` userinput
git config --system init.defaultBranch trunk
```

Finally add the `/usr/bin/git-shell`{.filename} entry to the `/etc/shells`{.filename} configuration file. This shell has been set in the `git`{.systemitem} user profile and is to make sure that only git related actions can be executed:

``` root
echo "/usr/bin/git-shell" >> /etc/shells
```
:::

:::: {.sect3 lang="en"}
### 2. Create a git repository {#create-a-git-repository .sect3}

The repository can be anywhere on the filesystem. It is important that the git user has read/write access to that location. We use `/srv/git`{.filename} as base directory. Create a new [git]{.application} repository with the following commands (as the `root`{.systemitem} user):

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In all the instructions below, we use [*project1*]{.emphasis} as an example repository name. You should name your repository as a short descriptive name for your specific project.
:::

``` root
install -o git -g git -m755 -d /srv/git/project1.git &&
cd /srv/git/project1.git                             &&
git init --bare                                      &&
chown -R git:git .
```
::::

:::::: {.sect3 lang="en"}
### 3. Populate the repository from a client system {#populate-the-repository-from-a-client-system .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

All the instructions in this section and the next should be done on a user system, not the server system.
:::

Now that the repository is created, it can be used by the developers to put some files into it. Once the ssh key of the user is imported to git's `authorized_keys`{.filename} file, the user can interact with the repository.

A minimal configuration should be available on the developer's system specifying its user name and the email address. Create this minimal config file on client side:

``` userinput
cat > ~/.gitconfig <<EOF
[user]
        name = <users-name>
        email = <users-email-address>
EOF
```

On the developer's machine, set up some files to be pushed to the repository as the initial content:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [*gitserver*]{.emphasis} term used below should be the host name (or ip address) of the git server.
:::

``` userinput
mkdir myproject
cd myproject
git init --initial-branch=trunk
git remote add origin git@gitserver:/srv/git/project1.git
cat >README <<EOF
This is the README file
EOF
git add README
git commit -m 'Initial creation of README'
git push --set-upstream origin trunk
```

The initial content is now pushed to the server and is available for other users. On the current machine, the argument `--set-upstream origin trunk`{.literal} is now no longer required as the local repository is now connected to the remote repository. Subsequent pushes can be performed as

``` userinput
git push
```

Other developers can now clone the repository and do modifications to the content (as long as their ssh keys has been installed):

``` userinput
git clone git@gitserver:/srv/git/project1.git
cd project1
vi README
git commit -am 'Fix for README file'
git push
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This is a very basic server setup based on [OpenSSH]{.application} access. All developers are using the `git`{.systemitem} user to perform actions on the repository and the changes users are committing can be distinguished as the local user name (see `~/.gitconfig`{.filename}) is recorded in the changesets.
:::

Access is restricted by the public keys added to git's `authorized_keys`{.filename} file and there is no option for the public to export/clone the repository. To enable this, continue with step 4 to set up the git server for public read-only access.

In the URL used to clone the project, the absolute path (here `/srv/git/project1.git`{.filename}) has to be specified as the repository is not in git's home directory but in `/srv/git`{.filename}. To get rid of the need to expose the structure of the server installation, a symlink can be added in git's home directory for each project like this:

``` userinput
ln -svf /srv/git/project1.git /home/git/
```

Now, the repository can be cloned using

``` userinput
git clone git@gitserver:project1.git
```
::::::

::::: {.sect3 lang="en"}
### []{#gitserver-init}4. Configure the Server {#configure-the-server .sect3}

The setup described above makes a repository available for authenticated users (via providing the ssh public key file). There is also a simple way to publish the repository to unauthenticated users — of course without write access.

The combination of access via ssh (for authenticated users) and the export of repositories to unauthenticated users via the daemon is in most cases enough for a development site.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The daemon will be reachable at port `9418`{.literal} by default. Make sure that your firewall setup allows access to that port.
:::

To start the server at boot time, install the `git-daemon.service`{.filename} unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-git-daemon
```

In order to allow [git]{.application} to export a repository, a file named `git-daemon-export-ok`{.filename} is required in each repository directory on the server. The file needs no content, just its existence enables, its absence disables the export of that repository.

``` root
touch /srv/git/project1.git/git-daemon-export-ok
```

Along with the `git-daemon.service`{.filename} unit, a configuration file named `/etc/default/git-daemon`{.filename} has been installed. Review this configuration file to match your needs.

There are only three options to set in the configuration file:

::: itemizedlist
-   GIT_BASE_DIR=\<dirname\>

    Specify the location of the git repositories. Relative paths used when accessing the daemon will translated relative to this directory.

-   DFT_REPO_DIR=\<dirname\>

    This directory is added to the white list of allowed directories. This variable can hold multiple directory names but is usually set equal to `GIT_BASE_DIR`{.literal}.

-   GIT_DAEMON_OPTS=\<options\>

    In case special options to the [**git daemon**]{.command} command are needed, they have to be specified in this setting. One example might be to adjust the port number where daemon is listening. In this case, add `--port=<port number>`{.literal} to this variable. For more information about which options can be set, take a look at the output of [**git daemon --help**]{.command}.
:::

After starting the daemon, unauthenticated users can clone exported repositories by using

``` userinput
git clone git://gitserver/project1.git
```

As the base directory is `/srv/git`{.filename} by default (or set to a custom value in the configuration), [git]{.application} interprets the incoming path (/project1.git) relative to that base directory so that the repository in `/srv/git/project1.git`{.filename} is served.
:::::
:::::::::::::
:::::::::::::::

::: navfooter
-   [Prev](git.md "Git-2.54.0"){accesskey="p"}

    Git-2.54.0

-   [Next](guile.md "Guile-3.0.11"){accesskey="n"}

    Guile-3.0.11

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
