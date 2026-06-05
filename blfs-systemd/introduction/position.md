<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](notes-on-building.md "Notes on Building Software")

    Notes on Building Software

-   [Next](patches.md "Optional Patches")

    Optional Patches

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# The /usr Versus /usr/local Debate {#the-usr-versus-usrlocal-debate}

<div class="sect1" lang="en">
<span class="emphasis"><em>Should I install XXX in <code class="filename">/usr</code> or <code class="filename">/usr/local</code>?</em></span>

This is a question without an obvious answer for an LFS based system.

In traditional Unix systems, <code class="filename">/usr</code> usually contains files that come with the system distribution, and the <code class="filename">/usr/local</code> tree is free for the local administrator to manage. The only really hard and fast rule is that Unix distributions should not touch <code class="filename">/usr/local</code>, except perhaps to create the basic directories within it.

With Linux distributions like Red Hat, Debian, etc., a possible rule is that <code class="filename">/usr</code> is managed by the distribution's package system and <code class="filename">/usr/local</code> is not. This way the package manager's database knows about every file within <code class="filename">/usr</code>.

LFS users build their own system and so deciding where the system ends and local files begin is not straightforward. So the choice should be made in order to make things easier to administer. There are several reasons for dividing files between <code class="filename">/usr</code> and <code class="filename">/usr/local</code>.

<div class="itemizedlist">
-   On a network of several machines all running LFS, or mixed LFS and other Linux distributions, <code class="filename">/usr/local</code> could be used to hold packages that are common between all the computers in the network. It can be NFS mounted or mirrored from a single server. Here local indicates local to the site.

-   On a network of several computers all running an identical LFS system, <code class="filename">/usr/local</code> could hold packages that are different between the machines. In this case local refers to the individual computers.

-   Even on a single computer, <code class="filename">/usr/local</code> can be useful if you have several distributions installed simultaneously, and want a place to put packages that will be the same on all of them.

-   Or you might regularly rebuild your LFS, but want a place to put files that you don't want to rebuild each time. This way you can wipe the LFS file system and start from a clean partition every time without losing everything.
</div>

Some people ask why not use your own directory tree, e.g., <code class="filename">/usr/site</code>, rather than <code class="filename">/usr/local</code>?

There is nothing stopping you, many sites do make their own trees, however it makes installing new software more difficult. Automatic installers often look for dependencies in <code class="filename">/usr</code> and <code class="filename">/usr/local</code>, and if the file it is looking for is in <code class="filename">/usr/site</code> instead, the installer will probably fail unless you specifically tell it where to look.

<span class="emphasis"><em>What is the BLFS position on this?</em></span>

All of the BLFS instructions install programs in <code class="filename">/usr</code> with optional instructions to install into <code class="filename">/opt</code> for some specific packages.
</div>

<div class="navfooter">
-   [Prev](notes-on-building.md "Notes on Building Software")

    Notes on Building Software

-   [Next](patches.md "Optional Patches")

    Optional Patches

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
