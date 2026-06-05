::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 11. The End

-   [Prev](whatnow.md "Additional Resources"){accesskey="p"}

    Additional Resources

-   [Next](../part5.md "Appendices"){accesskey="n"}

    Appendices

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#afterlfs}11.5. Getting Started After LFS {#getting-started-after-lfs .sect1}

::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## 11.5.1. Deciding what to do next {#deciding-what-to-do-next .sect2}

Now that LFS is complete and you have a bootable system, what do you do? The next step is to decide how to use it. Generally, there are two broad categories to consider: workstation or server. Indeed, these categories are not mutually exclusive. The applications needed for each category can be combined onto a single system, but let\'s look at them separately for now.

A server is the simpler category. Generally this consists of a web server such as the [Apache HTTP Server](https://www.linuxfromscratch.org/blfs/view/systemd/server/apache.html){.ulink} and a database server such as [MariaDB](https://www.linuxfromscratch.org/blfs/view/systemd/server/mariadb.html){.ulink}. However other services are possible. The operating system embedded in a single use device falls into this category.

On the other hand, a workstation is much more complex. It generally requires a graphical user environment such as [LXDE](https://www.linuxfromscratch.org/blfs/view/systemd/lxde/lxde.html){.ulink}, [XFCE](https://www.linuxfromscratch.org/blfs/view/systemd/xfce/xfce.html){.ulink}, [KDE](https://www.linuxfromscratch.org/blfs/view/systemd/kde/kde.html){.ulink}, or [Gnome](https://www.linuxfromscratch.org/blfs/view/systemd/gnome/gnome.html){.ulink} based on a basic [graphical environment](https://www.linuxfromscratch.org/blfs/view/systemd/x/installing.html){.ulink} and several graphical based applications such as the [Firefox web browser](https://www.linuxfromscratch.org/blfs/view/systemd/xsoft/firefox.html){.ulink}, [Thunderbird email client](https://www.linuxfromscratch.org/blfs/view/systemd/xsoft/thunderbird.html){.ulink}, or [LibreOffice office suite](https://www.linuxfromscratch.org/blfs/view/systemd/xsoft/libreoffice.html){.ulink}. These applications require many (several hundred depending on desired capabilities) more packages of support applications and libraries.

In addition to the above, there is a set of applications for system management for all kinds of systems. These applications are all in the BLFS book. Not all packages are needed in every environment. For example [dhcpcd](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/dhcpcd.html){.ulink}, is not normally appropriate for a server and [wireless_tools](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/wireless_tools.html){.ulink}, are normally only useful for a laptop system.
:::

::::::: {.sect2 lang="en"}
## 11.5.2. Working in a basic LFS environment {#working-in-a-basic-lfs-environment .sect2}

When you initially boot into LFS, you have all the internal tools to build additional packages. Unfortunately, the user environment is quite sparse. There are a couple of ways to improve this:

::: sect3
### 11.5.2.1. Work from the LFS host in chroot {#work-from-the-lfs-host-in-chroot .sect3}

This method provides a complete graphical environment where a full featured browser and copy/paste capabilities are available. This method allows using applications like the host\'s version of wget to download package sources to a location available when working in the chroot environment.

In order to properly build packages in chroot, you will also need to remember to mount the virtual file systems if they are not already mounted. One way to do this is to create a script on the [**HOST**]{.bold} system:

``` screen
cat > ~/mount-virt.sh << "EOF"
#!/bin/bash

function mountbind
{
   if ! mountpoint $LFS/$1 >/dev/null; then
     $SUDO mount --bind /$1 $LFS/$1
     echo $LFS/$1 mounted
   else
     echo $LFS/$1 already mounted
   fi
}

function mounttype
{
   if ! mountpoint $LFS/$1 >/dev/null; then
     $SUDO mount -t $2 $3 $4 $5 $LFS/$1
     echo $LFS/$1 mounted
   else
     echo $LFS/$1 already mounted
   fi
}

if [ $EUID -ne 0 ]; then
  SUDO=sudo
else
  SUDO=""
fi

if [ x$LFS == x ]; then
  echo "LFS not set"
  exit 1
fi

mountbind dev
mounttype dev/pts devpts devpts -o gid=5,mode=620
mounttype proc    proc   proc
mounttype sys     sysfs  sysfs
mounttype run     tmpfs  run
if [ -h $LFS/dev/shm ]; then
  install -v -d -m 1777 $LFS$(realpath /dev/shm)
else
  mounttype dev/shm tmpfs tmpfs -o nosuid,nodev
fi 

#mountbind usr/src
#mountbind boot
#mountbind home
EOF
```

Note that the last three commands in the script are commented out. These are useful if those directories are mounted as separate partitions on the host system and will be mounted when booting the completed LFS/BLFS system.

The script can be run with [**bash \~/mount-virt.sh**]{.command} as either a regular user (recommended) or as `root`{.systemitem}. If run as a regular user, sudo is required on the host system.

Another issue pointed out by the script is where to store downloaded package files. This location is arbitrary. It can be in a regular user\'s home directory such as \~/sources or in a global location like /usr/src. Our recommendation is not to mix BLFS sources and LFS sources in (from the chroot environment) /sources. In any case, the packages must be accessible inside the chroot environment.

A last convenience feature presented here is to streamline the process of entering the chroot environment. This can be done with an alias placed in a user\'s \~/.bashrc file on the host system:

``` screen
alias lfs='sudo /usr/sbin/chroot /mnt/lfs /usr/bin/env -i HOME=/root TERM="$TERM" PS1="\u:\w\\\\$ "
PATH=/usr/bin:/usr/sbin /bin/bash --login'
```

This alias is a little tricky because of the quoting and levels of backslash characters. It must be all on a single line. The above command has been split in two for presentation purposes.
:::

::: sect3
### 11.5.2.2. Work remotely via ssh {#work-remotely-via-ssh .sect3}

This method also provides a full graphical environment, but first requires installing [sshd](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/openssh.html){.ulink} on the LFS system, usually in chroot. It also requires a second computer. This method has the advantage of being simple by not requiring the complexity of the chroot environment. It also uses your LFS built kernel for all additional packages and still provides a complete system for installing packages.

You may use the [**scp**]{.command} command to upload the package sources to be built onto the LFS system. If you want to download the sources onto the LFS system directly instead, install [libtasn1](https://www.linuxfromscratch.org/blfs/view/systemd/general/libtasn1.html){.ulink}, [p11-kit](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/p11-kit.html){.ulink}, [make-ca](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/make-ca.html){.ulink}, and [wget](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/wget.html){.ulink} in chroot (or upload their sources using [**scp**]{.command} after booting the LFS system).
:::

:::: sect3
### 11.5.2.3. Work from the LFS command line {#work-from-the-lfs-command-line .sect3}

This method requires installing [libtasn1](https://www.linuxfromscratch.org/blfs/view/systemd/general/libtasn1.html){.ulink}, [p11-kit](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/p11-kit.html){.ulink}, [make-ca](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/make-ca.html){.ulink}, [wget](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/wget.html){.ulink}, [gpm](https://www.linuxfromscratch.org/blfs/view/systemd/general/gpm.html){.ulink}, and [links](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/links.html){.ulink} (or [lynx](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/lynx.html){.ulink}) in chroot and then rebooting into the new LFS system. At this point the default system has six virtual consoles. Switching consoles is as easy as using the [**Alt**]{.keycap}+[**Fx**]{.keycap} key combinations where [**Fx**]{.keycap} is between [**F1**]{.keycap} and [**F6**]{.keycap}. The [**Alt**]{.keycap}+[**←**]{.keycap} and [**Alt**]{.keycap}+[**→**]{.keycap} combinations also will change the console.

At this point you can log into two different virtual consoles and run the links or lynx browser in one console and bash in the other. GPM then allows copying commands from the browser with the left mouse button, switching consoles, and pasting into the other console.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

As a side note, switching of virtual consoles can also be done from an X Window instance with the [**Ctrl**]{.keycap}+[**Alt**]{.keycap}+[**Fx**]{.keycap} key combination, but the mouse copy operation does not work between the graphical interface and a virtual console. You can return to the X Window display with the [**Ctrl**]{.keycap}+[**Alt**]{.keycap}+[**Fx**]{.keycap} combination, where [**Fx**]{.keycap} is usually [**F1**]{.keycap} but may be [**F7**]{.keycap}.
:::
::::
:::::::
:::::::::

::: navfooter
-   [Prev](whatnow.md "Additional Resources"){accesskey="p"}

    Additional Resources

-   [Next](../part5.md "Appendices"){accesskey="n"}

    Appendices

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
