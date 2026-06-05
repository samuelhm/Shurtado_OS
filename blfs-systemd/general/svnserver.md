::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](subversion.md "Subversion-1.14.5"){accesskey="p"}

    Subversion-1.14.5

-   [Next](swig.md "SWIG-4.4.1"){accesskey="n"}

    SWIG-4.4.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#svnserver}Running a Subversion Server {#running-a-subversion-server .sect1}

::::::::::: {.sect1 lang="en"}
::: {.package lang="en"}
## Running a Subversion Server {#running-a-subversion-server-1 .sect2}

This section will describe how to set up, administer and secure a [Subversion]{.application} server.

### Subversion Server Dependencies

#### Required

[Subversion-1.14.5](subversion.md "Subversion-1.14.5"){.xref} and [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}
:::

::::::::: {.configuration lang="en"}
## Setting up a Subversion Server. {#setting-up-a-subversion-server. .sect2}

The following instructions will install a [Subversion]{.application} server, which will be set up to use [OpenSSH]{.application} as the secure remote access method, with [**svnserve**]{.command} available for anonymous access.

Configuration of the [Subversion]{.application} server consists of the following steps:

:::: {.sect3 lang="en"}
### 1. Set Uup Users, Groups, and Permissions {#set-uup-users-groups-and-permissions .sect3}

You'll need to be user `root`{.systemitem} for the initial portion of configuration. Create the `svn`{.systemitem} user and group with the following commands:

``` root
groupadd -g 56 svn &&
useradd -c "SVN Owner" -d /home/svn -m -g svn -s /bin/false -u 56 svn
```

If you plan to have multiple repositories, you should have a group dedicated to each repository for ease of administration. Create the `svntest`{.systemitem} group for the test repository and add the `svn`{.systemitem} user to that group with the following commands:

``` root
groupadd -g 57 svntest &&
usermod -G svntest -a svn
```

Additionally you should set [**umask 002**]{.command} while working with a repository so that all new files will be writable by owner and group. This is made mandatory by creating a wrapper script for [**svn**]{.command} and [**svnserve**]{.command}:

``` root
mv /usr/bin/svn /usr/bin/svn.orig &&
mv /usr/bin/svnserve /usr/bin/svnserve.orig &&
cat >> /usr/bin/svn << "EOF"
#!/bin/sh
umask 002
/usr/bin/svn.orig "$@"
EOF
cat >> /usr/bin/svnserve << "EOF"
#!/bin/sh
umask 002
/usr/bin/svnserve.orig "$@"
EOF
chmod 0755 /usr/bin/svn{,serve}
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you use [Apache]{.application} for working with the repository over HTTP, even for anonymous access, you should wrap [**/usr/sbin/httpd**]{.command} in a similar script.
:::
::::

:::: {.sect3 lang="en"}
### 2. Create a Subversion repository. {#create-a-subversion-repository. .sect3}

There are several ways to set up a subversion repository. It is recommended to have a look at the [SVN Book](https://svnbook.red-bean.com/nightly/en/svn.reposadmin.md){.ulink} corresponding chapter. A basic repository can be set up with the instructions below.

Create a new [Subversion]{.application} repository with the following commands (as the `root`{.systemitem} user):

``` root
install -v -m 0755 -d /srv/svn &&
install -v -m 0755 -o svn -g svn -d /srv/svn/repositories &&
svnadmin create /srv/svn/repositories/svntest
```

Now that the repository is created, it should be populated with something useful. You'll need to have a predefined directory layout set up exactly as you want your repository to look. For example, here is a sample BLFS layout setup with a root of `svntest/`{.filename}. You'll need to set up a directory tree similar to the following:

``` screen
svntest/            # The name of the repository
   trunk/           # Contains the existing source tree
      BOOK/
      bootscripts/
      edguide/
      patches/
      scripts/
   branches/        # Needed for additional branches
   tags/            # Needed for tagging release points
```

Once you've created your directory layout as shown above, you are ready to do the initial import:

``` root
svn import -m "Initial import." \
    </path/to/source/tree>      \
    file:///srv/svn/repositories/svntest
```

Now change owner and group information on the repository, and add an unprivileged user to the `svn`{.systemitem} and `svntest`{.systemitem} groups:

``` root
chown -R svn:svntest /srv/svn/repositories/svntest    &&
chmod -R g+w         /srv/svn/repositories/svntest    &&
chmod g+s            /srv/svn/repositories/svntest/db &&
usermod -G svn,svntest -a <username>
```

`svntest`{.systemitem} is the group assigned to the svntest repository. As mentioned earlier, this eases administration of multiple repositories when using [OpenSSH]{.application} for authentication. Going forward, you'll need to add your unprivileged user, and any additional users that you wish to have write access to the repository, to the `svn`{.systemitem} and `svntest`{.systemitem} groups.

In addition, you'll notice that the new repository's `db`{.filename} directory is set-groupID. If the reasoning is not immediately obvious, when using any external authentication method (such as [**ssh**]{.command}), the sticky bit is set so that all new files will be owned by the user, but group of `svntest`{.systemitem}. Anyone in the `svntest`{.systemitem} group can create files, but still give the entire group write access to those files. This avoids locking out other users from the repository.

Now, return to an unprivileged user account, and take a look at the new repository using [**svnlook**]{.command}:

``` userinput
svnlook tree /srv/svn/repositories/svntest/
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You may need to log out and back in again to refresh your group memberships. [**su *`<username>`***]{.command} should work as well.
:::
::::

::: {.sect3 lang="en"}
### 3. Configure the Server {#configure-the-server .sect3}

As mentioned previously, these instructions will configure the server to use only [**ssh**]{.command} for write access to the repository and to provide anonymous access using [**svnserve**]{.command}. There are several other ways to provide access to the repository. These additional configurations are best explained at [https://svnbook.red-bean.com/](https://svnbook.red-bean.com/){.ulink}.

Access configuration needs to be done for each repository. Create the `svnserve.conf`{.filename} file for the svntest repository using the following commands:

``` root
cp /srv/svn/repositories/svntest/conf/svnserve.conf \
   /srv/svn/repositories/svntest/conf/svnserve.conf.default &&

cat > /srv/svn/repositories/svntest/conf/svnserve.conf << "EOF"
[general]
anon-access = read
auth-access = write
EOF
```

There is not a lot to the configuration file at all. You'll notice that only the general section is required. Take a look at the `svnserve.conf.default`{.filename} file for information on using [**svnserve**]{.command}'s built-in authentication method.
:::

::: {.sect3 lang="en"}
### []{#svnserver-init}4. Starting the Server {#starting-the-server .sect3}

To start the server at boot time, install the `svnserve.service`{.filename} unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-svnserve
```

Additionally, the instructions above require that svn server uses [**umask 002**]{.command} so that all new files will be writable by owner and group. This can be achieved by creating a systemd unit override file by running the following command:

``` root
mkdir -p /etc/systemd/system/svnserve.service.d
echo "UMask=0002" > /etc/systemd/system/svnserve.service.d/99-user.conf
```

Options which are passed to [**svnserve**]{.command} daemon can be changed in `/etc/default/svnserve`{.filename}.
:::
:::::::::
:::::::::::

::: navfooter
-   [Prev](subversion.md "Subversion-1.14.5"){accesskey="p"}

    Subversion-1.14.5

-   [Next](swig.md "SWIG-4.4.1"){accesskey="n"}

    SWIG-4.4.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
