::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 11. The End

-   [Prev](getcounted.md "Get Counted"){accesskey="p"}

    Get Counted

-   [Next](whatnow.md "Additional Resources"){accesskey="n"}

    Additional Resources

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-finish-reboot}11.3. Rebooting the System {#rebooting-the-system .sect1}

:::: {.sect1 lang="en"}
Now that all of the software has been installed, it is time to reboot your computer. However, there are still a few things to check. Here are some suggestions:

::: itemizedlist
-   Install any [firmware](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/firmware.html){.ulink} needed if the kernel driver for your hardware requires some firmware files to function properly.

-   Ensure a password is set for the `root`{.systemitem} user.

-   A review of the following configuration files is also appropriate at this point.

    ::: itemizedlist
    -   /etc/fstab

    -   /etc/hosts

    -   /etc/inputrc

    -   /etc/profile

    -   /etc/resolv.conf [(optional)]{.phrase}

    -   /etc/vimrc
    :::
:::

Now that we have said that, let\'s move on to booting our shiny new LFS installation for the first time! [*First exit from the chroot environment*]{.emphasis}:

``` userinput
logout
```

Then unmount the virtual file systems:

``` userinput
umount -v $LFS/dev/pts
mountpoint -q $LFS/dev/shm && umount -v $LFS/dev/shm
umount -v $LFS/dev
umount -v $LFS/run
umount -v $LFS/proc
umount -v $LFS/sys
```

If multiple partitions were created, unmount the other partitions before unmounting the main one, like this:

``` userinput
umount -v $LFS/home
umount -v $LFS
```

Unmount the LFS file system itself:

``` userinput
umount -v $LFS
```

Now, reboot the system.

Assuming the GRUB boot loader was set up as outlined earlier, the menu is set to boot [*LFS r13.0-131-systemd*]{.emphasis} automatically.

When the reboot is complete, the LFS system is ready for use. What you will see is a simple ["[login:]{.quote} "]{.quote} prompt. At this point, you can proceed to [the BLFS Book](https://www.linuxfromscratch.org/blfs/view/systemd/){.ulink} where you can add more software to suit your needs.

If your reboot is [**not**]{.bold} successful, it is time to troubleshoot. For hints on solving initial booting problems, see [https://www.linuxfromscratch.org/lfs/troubleshooting.html](https://www.linuxfromscratch.org/lfs/troubleshooting.html){.ulink}.
::::

::: navfooter
-   [Prev](getcounted.md "Get Counted"){accesskey="p"}

    Get Counted

-   [Next](whatnow.md "Additional Resources"){accesskey="n"}

    Additional Resources

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
