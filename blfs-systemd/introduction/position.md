::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](notes-on-building.md "Notes on Building Software"){accesskey="p"}

    Notes on Building Software

-   [Next](patches.md "Optional Patches"){accesskey="n"}

    Optional Patches

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#position}The /usr Versus /usr/local Debate {#the-usr-versus-usrlocal-debate .sect1}

:::: {.sect1 lang="en"}
[*Should I install XXX in `/usr`{.filename} or `/usr/local`{.filename}?*]{.emphasis}

This is a question without an obvious answer for an LFS based system.

In traditional Unix systems, `/usr`{.filename} usually contains files that come with the system distribution, and the `/usr/local`{.filename} tree is free for the local administrator to manage. The only really hard and fast rule is that Unix distributions should not touch `/usr/local`{.filename}, except perhaps to create the basic directories within it.

With Linux distributions like Red Hat, Debian, etc., a possible rule is that `/usr`{.filename} is managed by the distribution's package system and `/usr/local`{.filename} is not. This way the package manager's database knows about every file within `/usr`{.filename}.

LFS users build their own system and so deciding where the system ends and local files begin is not straightforward. So the choice should be made in order to make things easier to administer. There are several reasons for dividing files between `/usr`{.filename} and `/usr/local`{.filename}.

::: itemizedlist
-   On a network of several machines all running LFS, or mixed LFS and other Linux distributions, `/usr/local`{.filename} could be used to hold packages that are common between all the computers in the network. It can be NFS mounted or mirrored from a single server. Here local indicates local to the site.

-   On a network of several computers all running an identical LFS system, `/usr/local`{.filename} could hold packages that are different between the machines. In this case local refers to the individual computers.

-   Even on a single computer, `/usr/local`{.filename} can be useful if you have several distributions installed simultaneously, and want a place to put packages that will be the same on all of them.

-   Or you might regularly rebuild your LFS, but want a place to put files that you don't want to rebuild each time. This way you can wipe the LFS file system and start from a clean partition every time without losing everything.
:::

Some people ask why not use your own directory tree, e.g., `/usr/site`{.filename}, rather than `/usr/local`{.filename}?

There is nothing stopping you, many sites do make their own trees, however it makes installing new software more difficult. Automatic installers often look for dependencies in `/usr`{.filename} and `/usr/local`{.filename}, and if the file it is looking for is in `/usr/site`{.filename} instead, the installer will probably fail unless you specifically tell it where to look.

[*What is the BLFS position on this?*]{.emphasis}

All of the BLFS instructions install programs in `/usr`{.filename} with optional instructions to install into `/opt`{.filename} for some specific packages.
::::

::: navfooter
-   [Prev](notes-on-building.md "Notes on Building Software"){accesskey="p"}

    Notes on Building Software

-   [Next](patches.md "Optional Patches"){accesskey="n"}

    Optional Patches

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
