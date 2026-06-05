::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 11. The End

-   [Prev](chapter11.md "The End"){accesskey="p"}

    The End

-   [Next](getcounted.md "Get Counted"){accesskey="n"}

    Get Counted

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-finish-theend}11.1. The End {#the-end .sect1}

::: {.sect1 lang="en"}
Well done! The new LFS system is installed! We wish you much success with your shiny new custom-built Linux system.

It may be a good idea to create an `/etc/lfs-release`{.filename} file. By having this file, it is very easy for you (and for us if you need to ask for help at some point) to find out which LFS version is installed on the system. Create this file by running:

``` userinput
echo r13.0-131-systemd > /etc/lfs-release
```

Two files describing the installed system may be used by packages that can be installed on the system later, either in binary form or by building them.

The first one shows the status of your new system with respect to the Linux Standards Base (LSB). To create this file, run:

``` userinput
cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="r13.0-131-systemd"
DISTRIB_CODENAME="<your name here>"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF
```

The second one contains roughly the same information, and is used by systemd and some graphical desktop environments. To create this file, run:

``` userinput
cat > /etc/os-release << "EOF"
NAME="Linux From Scratch"
VERSION="r13.0-131-systemd"
ID=lfs
PRETTY_NAME="Linux From Scratch r13.0-131-systemd"
VERSION_CODENAME="<your name here>"
HOME_URL="https://www.linuxfromscratch.org/lfs/"
RELEASE_TYPE="development"
EOF
```

Be sure to customize the fields \'DISTRIB_CODENAME\' and \'VERSION_CODENAME\' to make the system uniquely yours.
:::

::: navfooter
-   [Prev](chapter11.md "The End"){accesskey="p"}

    The End

-   [Next](getcounted.md "Get Counted"){accesskey="n"}

    Get Counted

-   [Up](chapter11.md "Chapter 11. The End"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
