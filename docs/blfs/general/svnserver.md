<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](subversion.md "Subversion-1.14.5")

    Subversion-1.14.5

-   [Next](swig.md "SWIG-4.4.1")

    SWIG-4.4.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Running a Subversion Server {#running-a-subversion-server}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Running a Subversion Server {#running-a-subversion-server-1}

This section will describe how to set up, administer and secure a <span class="application">Subversion</span> server.

### Subversion Server Dependencies

#### Required

<a class="xref" href="subversion.md" title="Subversion-1.14.5">Subversion-1.14.5</a> and <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>
</div>

<div class="configuration" lang="en">
## Setting up a Subversion Server. {#setting-up-a-subversion-server.}

The following instructions will install a <span class="application">Subversion</span> server, which will be set up to use <span class="application">OpenSSH</span> as the secure remote access method, with <span class="command"><strong>svnserve</strong></span> available for anonymous access.

Configuration of the <span class="application">Subversion</span> server consists of the following steps:

<div class="sect3" lang="en">
### 1. Set Uup Users, Groups, and Permissions {#set-uup-users-groups-and-permissions}

You'll need to be user <code class="systemitem">root</code> for the initial portion of configuration. Create the <code class="systemitem">svn</code> user and group with the following commands:

```bash
groupadd -g 56 svn &&
useradd -c "SVN Owner" -d /home/svn -m -g svn -s /bin/false -u 56 svn
```

If you plan to have multiple repositories, you should have a group dedicated to each repository for ease of administration. Create the <code class="systemitem">svntest</code> group for the test repository and add the <code class="systemitem">svn</code> user to that group with the following commands:

```bash
groupadd -g 57 svntest &&
usermod -G svntest -a svn
```

Additionally you should set <span class="command"><strong>umask 002</strong></span> while working with a repository so that all new files will be writable by owner and group. This is made mandatory by creating a wrapper script for <span class="command"><strong>svn</strong></span> and <span class="command"><strong>svnserve</strong></span>:

```bash
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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you use <span class="application">Apache</span> for working with the repository over HTTP, even for anonymous access, you should wrap <span class="command"><strong>/usr/sbin/httpd</strong></span> in a similar script.
</div>
</div>

<div class="sect3" lang="en">
### 2. Create a Subversion repository. {#create-a-subversion-repository.}

There are several ways to set up a subversion repository. It is recommended to have a look at the <a class="ulink" href="https://svnbook.red-bean.com/nightly/en/svn.reposadmin.md">SVN Book</a> corresponding chapter. A basic repository can be set up with the instructions below.

Create a new <span class="application">Subversion</span> repository with the following commands (as the <code class="systemitem">root</code> user):

```bash
install -v -m 0755 -d /srv/svn &&
install -v -m 0755 -o svn -g svn -d /srv/svn/repositories &&
svnadmin create /srv/svn/repositories/svntest
```

Now that the repository is created, it should be populated with something useful. You'll need to have a predefined directory layout set up exactly as you want your repository to look. For example, here is a sample BLFS layout setup with a root of <code class="filename">svntest/</code>. You'll need to set up a directory tree similar to the following:

```console
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

```bash
svn import -m "Initial import." \
    </path/to/source/tree>      \
    file:///srv/svn/repositories/svntest
```

Now change owner and group information on the repository, and add an unprivileged user to the <code class="systemitem">svn</code> and <code class="systemitem">svntest</code> groups:

```bash
chown -R svn:svntest /srv/svn/repositories/svntest    &&
chmod -R g+w         /srv/svn/repositories/svntest    &&
chmod g+s            /srv/svn/repositories/svntest/db &&
usermod -G svn,svntest -a <username>
```

<code class="systemitem">svntest</code> is the group assigned to the svntest repository. As mentioned earlier, this eases administration of multiple repositories when using <span class="application">OpenSSH</span> for authentication. Going forward, you'll need to add your unprivileged user, and any additional users that you wish to have write access to the repository, to the <code class="systemitem">svn</code> and <code class="systemitem">svntest</code> groups.

In addition, you'll notice that the new repository's <code class="filename">db</code> directory is set-groupID. If the reasoning is not immediately obvious, when using any external authentication method (such as <span class="command"><strong>ssh</strong></span>), the sticky bit is set so that all new files will be owned by the user, but group of <code class="systemitem">svntest</code>. Anyone in the <code class="systemitem">svntest</code> group can create files, but still give the entire group write access to those files. This avoids locking out other users from the repository.

Now, return to an unprivileged user account, and take a look at the new repository using <span class="command"><strong>svnlook</strong></span>:

```bash
svnlook tree /srv/svn/repositories/svntest/
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You may need to log out and back in again to refresh your group memberships. <span class="command"><strong>su <em>`<username>`</strong></em></span> should work as well.
</div>
</div>

<div class="sect3" lang="en">
### 3. Configure the Server {#configure-the-server}

As mentioned previously, these instructions will configure the server to use only <span class="command"><strong>ssh</strong></span> for write access to the repository and to provide anonymous access using <span class="command"><strong>svnserve</strong></span>. There are several other ways to provide access to the repository. These additional configurations are best explained at <a class="ulink" href="https://svnbook.red-bean.com/">https://svnbook.red-bean.com/</a>.

Access configuration needs to be done for each repository. Create the <code class="filename">svnserve.conf</code> file for the svntest repository using the following commands:

```bash
cp /srv/svn/repositories/svntest/conf/svnserve.conf \
   /srv/svn/repositories/svntest/conf/svnserve.conf.default &&

cat > /srv/svn/repositories/svntest/conf/svnserve.conf << "EOF"
[general]
anon-access = read
auth-access = write
EOF
```

There is not a lot to the configuration file at all. You'll notice that only the general section is required. Take a look at the <code class="filename">svnserve.conf.default</code> file for information on using <span class="command"><strong>svnserve</strong></span>'s built-in authentication method.
</div>

<div class="sect3" lang="en">
### 4. Starting the Server {#starting-the-server}

To start the server at boot time, install the <code class="filename">svnserve.service</code> unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-svnserve
```

Additionally, the instructions above require that svn server uses <span class="command"><strong>umask 002</strong></span> so that all new files will be writable by owner and group. This can be achieved by creating a systemd unit override file by running the following command:

```bash
mkdir -p /etc/systemd/system/svnserve.service.d
echo "UMask=0002" > /etc/systemd/system/svnserve.service.d/99-user.conf
```

Options which are passed to <span class="command"><strong>svnserve</strong></span> daemon can be changed in <code class="filename">/etc/default/svnserve</code>.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](subversion.md "Subversion-1.14.5")

    Subversion-1.14.5

-   [Next](swig.md "SWIG-4.4.1")

    SWIG-4.4.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
