<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](git.md "Git-2.54.0")

    Git-2.54.0

-   [Next](guile.md "Guile-3.0.11")

    Guile-3.0.11

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Running a Git Server {#running-a-git-server}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction {#introduction}

This section will describe how to set up, administer and secure a <span class="application">git</span> server. <span class="application">Git</span> has many options available. For more detailed documentation see <a class="ulink" href="https://git-scm.com/book/en/v2">https://git-scm.com/book/en/v2</a>.

### Server Dependencies

#### Required

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>
</div>

<div class="configuration" lang="en">
## Setting up a Git Server {#setting-up-a-git-server}

The following instructions will install a <span class="application">git</span> server. It will be set up to use <span class="application">OpenSSH</span> as the secure remote access method.

Configuration of the server consists of the following steps:

<div class="sect3" lang="en">
### 1. Set Up Users, Groups, and Permissions {#set-up-users-groups-and-permissions}

You will need to be user <code class="systemitem">root</code> for the initial portion of configuration. Create the <code class="systemitem">git</code> user and group and set and unusable password hash with the following commands:

```bash
groupadd -g 58 git &&
useradd -c "git Owner" -d /home/git -m -g git -s /usr/bin/git-shell -u 58 git &&
sed -i '/^git:/s/^git:[^:]:/git:NP:/' /etc/shadow
```

Putting in an unusable password hash (replacing the <code class="literal">!</code> by <code class="literal">NP</code>) unlocks the account but it cannot be used to login via password authentication. That is required by <span class="application">sshd</span> to work properly. Next, create some files and directories in the home directory of the git user allowing access to the git repository using ssh keys.

```bash
install -o git -g git -dm0700 /home/git/.ssh &&
install -o git -g git -m0600 /dev/null /home/git/.ssh/authorized_keys
```

For any developer who should have access to the repository add his/her public ssh key to <code class="filename">/home/git/.ssh/authorized_keys</code>. First, prepend some options to prevent users from using the connection to git for port forwarding to other machines the git server might reach.

```bash
echo -n "no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty " >> /home/git/.ssh/authorized_keys &&
cat <user-ssh-key> >> /home/git/.ssh/authorized_keys
```

It is also useful to set the default name of the initial branch of new repositories by modifying the git configuration. As the <code class="systemitem">root</code> user, run:

```bash
git config --system init.defaultBranch trunk
```

Finally add the <code class="filename">/usr/bin/git-shell</code> entry to the <code class="filename">/etc/shells</code> configuration file. This shell has been set in the <code class="systemitem">git</code> user profile and is to make sure that only git related actions can be executed:

```bash
echo "/usr/bin/git-shell" >> /etc/shells
```
</div>

<div class="sect3" lang="en">
### 2. Create a git repository {#create-a-git-repository}

The repository can be anywhere on the filesystem. It is important that the git user has read/write access to that location. We use <code class="filename">/srv/git</code> as base directory. Create a new <span class="application">git</span> repository with the following commands (as the <code class="systemitem">root</code> user):

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

In all the instructions below, we use <span class="emphasis"><em>project1</em></span> as an example repository name. You should name your repository as a short descriptive name for your specific project.
</div>

```bash
install -o git -g git -m755 -d /srv/git/project1.git &&
cd /srv/git/project1.git                             &&
git init --bare                                      &&
chown -R git:git .
```
</div>

<div class="sect3" lang="en">
### 3. Populate the repository from a client system {#populate-the-repository-from-a-client-system}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

All the instructions in this section and the next should be done on a user system, not the server system.
</div>

Now that the repository is created, it can be used by the developers to put some files into it. Once the ssh key of the user is imported to git's <code class="filename">authorized_keys</code> file, the user can interact with the repository.

A minimal configuration should be available on the developer's system specifying its user name and the email address. Create this minimal config file on client side:

```bash
cat > ~/.gitconfig <<EOF
[user]
        name = <users-name>
        email = <users-email-address>
EOF
```

On the developer's machine, set up some files to be pushed to the repository as the initial content:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="emphasis"><em>gitserver</em></span> term used below should be the host name (or ip address) of the git server.
</div>

```bash
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

The initial content is now pushed to the server and is available for other users. On the current machine, the argument <code class="literal">--set-upstream origin trunk</code> is now no longer required as the local repository is now connected to the remote repository. Subsequent pushes can be performed as

```bash
git push
```

Other developers can now clone the repository and do modifications to the content (as long as their ssh keys has been installed):

```bash
git clone git@gitserver:/srv/git/project1.git
cd project1
vi README
git commit -am 'Fix for README file'
git push
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This is a very basic server setup based on <span class="application">OpenSSH</span> access. All developers are using the <code class="systemitem">git</code> user to perform actions on the repository and the changes users are committing can be distinguished as the local user name (see <code class="filename">~/.gitconfig</code>) is recorded in the changesets.
</div>

Access is restricted by the public keys added to git's <code class="filename">authorized_keys</code> file and there is no option for the public to export/clone the repository. To enable this, continue with step 4 to set up the git server for public read-only access.

In the URL used to clone the project, the absolute path (here <code class="filename">/srv/git/project1.git</code>) has to be specified as the repository is not in git's home directory but in <code class="filename">/srv/git</code>. To get rid of the need to expose the structure of the server installation, a symlink can be added in git's home directory for each project like this:

```bash
ln -svf /srv/git/project1.git /home/git/
```

Now, the repository can be cloned using

```bash
git clone git@gitserver:project1.git
```
</div>

<div class="sect3" lang="en">
### 4. Configure the Server {#configure-the-server}

The setup described above makes a repository available for authenticated users (via providing the ssh public key file). There is also a simple way to publish the repository to unauthenticated users — of course without write access.

The combination of access via ssh (for authenticated users) and the export of repositories to unauthenticated users via the daemon is in most cases enough for a development site.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The daemon will be reachable at port <code class="literal">9418</code> by default. Make sure that your firewall setup allows access to that port.
</div>

To start the server at boot time, install the <code class="filename">git-daemon.service</code> unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-git-daemon
```

In order to allow <span class="application">git</span> to export a repository, a file named <code class="filename">git-daemon-export-ok</code> is required in each repository directory on the server. The file needs no content, just its existence enables, its absence disables the export of that repository.

```bash
touch /srv/git/project1.git/git-daemon-export-ok
```

Along with the <code class="filename">git-daemon.service</code> unit, a configuration file named <code class="filename">/etc/default/git-daemon</code> has been installed. Review this configuration file to match your needs.

There are only three options to set in the configuration file:

<div class="itemizedlist">
-   GIT_BASE_DIR=\<dirname\>

    Specify the location of the git repositories. Relative paths used when accessing the daemon will translated relative to this directory.

-   DFT_REPO_DIR=\<dirname\>

    This directory is added to the white list of allowed directories. This variable can hold multiple directory names but is usually set equal to <code class="literal">GIT_BASE_DIR</code>.

-   GIT_DAEMON_OPTS=\<options\>

    In case special options to the <span class="command"><strong>git daemon</strong></span> command are needed, they have to be specified in this setting. One example might be to adjust the port number where daemon is listening. In this case, add <code class="literal">--port=<port number></code> to this variable. For more information about which options can be set, take a look at the output of <span class="command"><strong>git daemon --help</strong></span>.
</div>

After starting the daemon, unauthenticated users can clone exported repositories by using

```bash
git clone git://gitserver/project1.git
```

As the base directory is <code class="filename">/srv/git</code> by default (or set to a custom value in the configuration), <span class="application">git</span> interprets the incoming path (/project1.git) relative to that base directory so that the repository in <code class="filename">/srv/git/project1.git</code> is served.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](git.md "Git-2.54.0")

    Git-2.54.0

-   [Next](guile.md "Guile-3.0.11")

    Guile-3.0.11

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
