::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](stripping.md "Stripping"){accesskey="p"}

    Stripping

-   [Next](../chapter09/chapter09.md "System Configuration"){accesskey="n"}

    System Configuration

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-cleanup}8.84. Cleaning Up {#cleaning-up .sect1}

::: {.sect1 lang="en"}
Finally, clean up some extra files left over from running tests:

``` userinput
rm -rf /tmp/{*,.*}
```

There are also several files in the /usr/lib and /usr/libexec directories with a file name extension of .la. These are \"libtool archive\" files. On a modern Linux system the libtool .la files are only useful for libltdl. No libraries in LFS are expected to be loaded by libltdl, and it\'s known that some .la files can break BLFS package builds. Remove those files now:

``` userinput
find /usr/lib /usr/libexec -name \*.la -delete
```

For more information about libtool archive files, see the [BLFS section \"About Libtool Archive (.la) files\"](https://www.linuxfromscratch.org/blfs/view/systemd/introduction/la-files.html){.ulink}.

The compiler built in [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref} and [Chapter 7](../chapter07/chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){.xref} is still partially installed and not needed anymore. Remove it with:

``` userinput
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
```

Finally, remove the temporary \'tester\' user account created at the beginning of the previous chapter.

``` userinput
userdel -r tester
```
:::

::: navfooter
-   [Prev](stripping.md "Stripping"){accesskey="p"}

    Stripping

-   [Next](../chapter09/chapter09.md "System Configuration"){accesskey="n"}

    System Configuration

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
