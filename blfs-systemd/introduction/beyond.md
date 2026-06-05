::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](locale-issues.md "Locale Related Issues"){accesskey="p"}

    Locale Related Issues

-   [Next](../postlfs/postlfs.md "Post LFS Configuration and Extra Software"){accesskey="n"}

    Post LFS Configuration and Extra Software

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#beyond}Going Beyond BLFS {#going-beyond-blfs .sect1}

::::::: {.sect1 lang="en"}
The packages that are installed in this book are only the tip of the iceberg. We hope that the experience you gained with the LFS book and the BLFS book will give you the background needed to compile, install and configure packages that are not included in this book.

When you want to install a package to a location other than `/`{.filename}, or `/usr`{.filename}, you are installing outside the default environment settings on most machines. The following examples should assist you in determining how to correct this situation. The examples cover the complete range of settings that may need updating, but they are not all needed in every situation.

::: itemizedlist
-   Expand the `PATH`{.envar} to include `$PREFIX/bin`{.filename}.

-   Expand the `PATH`{.envar} for `root`{.systemitem} to include `$PREFIX/sbin`{.filename}.

-   Add `$PREFIX/lib`{.filename} to `/etc/ld.so.conf`{.filename} or expand `LD_LIBRARY_PATH`{.envar} to include it. Before using the latter option, check out [http://xahlee.info/UnixResource_dir/\_/ldpath.html](http://xahlee.info/UnixResource_dir/_/ldpath.md){.ulink}. If you modify `/etc/ld.so.conf`{.filename}, remember to update `/etc/ld.so.cache`{.filename} by executing [**ldconfig**]{.command} as the `root`{.systemitem} user.

-   Add `$PREFIX/man`{.filename} to `/etc/man_db.conf`{.filename}.

-   Add `$PREFIX/info`{.filename} to `INFOPATH`{.envar}.

-   Add `$PREFIX/lib/pkgconfig`{.filename} to `PKG_CONFIG_PATH`{.envar}. Some packages are now installing `.pc`{.filename} files in `$PREFIX/share/pkgconfig`{.filename}, so you may have to include this directory also.

-   Add `$PREFIX/include`{.filename} to `CPPFLAGS`{.envar} when compiling packages that depend on the package you installed.

-   Add `$PREFIX/lib`{.filename} to `LDFLAGS`{.envar} when compiling packages that depend on a library installed by the package.
:::

If you are in search of a package that is not in the book, the following are different ways you can search for the desired package.

::: itemizedlist
-   If you know the name of the package, then search SourceForge for it at [https://sourceforge.net/directory/](https://sourceforge.net/directory/){.ulink}, and search GitHub for it at [https://github.com/](https://github.com/){.ulink}. Also search Google at [https://google.com/](https://google.com/){.ulink}. Sometimes a search for the `rpm`{.filename} at [https://rpmfind.net/](https://rpmfind.net/){.ulink} or the `deb`{.filename} at [https://www.debian.org/distrib/packages#search_packages](https://www.debian.org/distrib/packages#search_packages){.ulink} can also lead to a link to the package.

-   If you know the name of the executable, but not the package that the executable belongs to, first try a Google search with the name of the executable. If the results are overwhelming, try searching for the given executable in the Debian repository at [https://www.debian.org/distrib/packages#search_contents](https://www.debian.org/distrib/packages#search_contents){.ulink}.
:::

Some general hints on handling new packages:

::: itemizedlist
-   Many of the newer packages follow the [**./configure && make && make install**]{.command} process. Help on the options accepted by configure can be obtained via the command [**./configure --help**]{.command}.

-   Most of the packages contain documentation on compiling and installing the package. Some of the documents are excellent, some not so excellent. Check out the homepage of the package for any additional and updated hints for compiling and configuring the package.

-   If you are having a problem compiling the package, try searching the LFS archives at [https://www.linuxfromscratch.org/search.html](https://www.linuxfromscratch.org/search.md){.ulink} for the error or if that fails, try searching Google. Often, a distribution will have already solved the problem (many of them use development versions of packages, so they see the changes sooner than those of us who normally use stable released versions). But be cautious - all builders tend to carry patches which are no longer necessary, and to have fixes which are only required because of their particular choices in how they build a package. You may have to search deeply to find a fix for the package version you are trying to use, or even to find the package (names are sometimes not what you might expect, e.g. [ghostscript]{.application} often has a prefix or a suffix in its name), but the following notes might help, particularly for those who, like the editors, are trying to build the latest versions and encountering problems:

    ::: itemizedlist
    -   Arch [https://www.archlinux.org/packages/](https://www.archlinux.org/packages/){.ulink} - enter the package name in the 'Keywords' box, select the package name, select the 'Source Files' field, and then select the `PKGBUILD`{.filename} entry to see how they build this package.

    -   Debian [http://ftp.debian.org/debian/pool](http://ftp.debian.org/debian/pool){.ulink} (use your country's version if there is one) - the source will be in .tar.gz tarballs (either the original upstream `.orig`{.filename} source, or else a `dfsg`{.filename} containing those parts which comply with Debian's free software guidelines) accompanied by versioned .diff.gz or .tar.gz additions. These additions often show how the package is built, and may contain patches. In the .diff.gz versions, any patches create files in `debian/patches`{.filename}.

    -   Fedora package source gets reorganized from time to time. At the moment the package source for rpms is at [https://src.fedoraproject.org/projects/rpms/%2A](https://src.fedoraproject.org/projects/rpms/%2A){.ulink} and from there you can try putting a package name in the search box. If the package is found you can look at the files (specfile to control the build, various patches) or the commits. If that fails, you can download an srpm (source rpm) and using [rpmextract]{.application} (see the Tip at the bottom of the page). For rpms go to [https://dl.fedoraproject.org/pub/fedora/linux/](https://dl.fedoraproject.org/pub/fedora/linux/){.ulink} and then choose which repo you wish to look at - development/rawhide is the latest development, or choose releases for what was shipped in a release, updates for updates to a release, or updates/testing for the latest updates which might work or might have problems.

    -   Gentoo - First use a search engine to find an ebuild which looks as if it will fix the problem, or search at [https://packages.gentoo.org/](https://packages.gentoo.org/){.ulink} - use the search field. Note where the package lives in the portage hierarchy, e.g. `app-something/`{.filename}. In general you can treat the ebuild as a sort of pseudo-code / shell combination with some functions you can hazard a guess at, such as [**dodoc**]{.command}. If the fix is just a [**sed**]{.command}, try it. However, in most cases the fix will use a patch. To find the patch, use a gentoo-portage mirror: Two links to mirrors in the U.S.A. which seem to usually be up to date are [https://mirror.rackspace.com/gentoo-portage/](https://mirror.rackspace.com/gentoo-portage/){.ulink} and [https://mirror.steadfast.net/gentoo-portage/](https://mirror.steadfast.net/gentoo-portage/){.ulink}. Navigate down the tree to the package, then to the `files/`{.filename} directory to look for the patch. Sometimes a portage mirror has not yet been updated, particularly for a recent new patch. In a few cases, gentoo batch the patches into a tarball and the ebuild will have a link in the form https://dev.gentoo.org/\~\${PATCH_DEV}/distfiles/\${P}-patches-\${PATCH_VER}.tar.xz here, look for PATCH_DEV and PATCH_VER in the build and format the full URL in your browser or for wget. Remember the '\~' before the developer's ID and note that trying to search the earlier levels of the URL in a browser may drop you at www.gentoo.org or return 403 (forbidden).

    -   openSUSE provide a rolling release, some package versions are in [https://download.opensuse.org/source/tumbleweed/repo/oss/src/](https://download.opensuse.org/source/tumbleweed/repo/oss/src/){.ulink} but others are in ../update/openSUSE-current/src - the source only seems to be available in source rpms.

    -   Slackware - the official package browser is currently broken. The site at [https://slackbuilds.org/](https://slackbuilds.org/){.ulink} has current and previous versions in their unofficial repository with links to homepages, downloads, and some individual files, particularly the `.SlackBuild`{.filename} files.

    -   Ubuntu [http://ftp.ubuntu.com/ubuntu/pool/](http://ftp.ubuntu.com/ubuntu/pool/){.ulink} - see the Debian notes above.
    :::

    If everything else fails, try the blfs-support mailing-list.
:::

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

If you have found a package that is only available in `.deb`{.filename} or `.rpm`{.filename} format, there are different methods of extracting them.

`.deb`{.filename} files are just archives that are created and extracted by [ar]{.application}. It can be extracted by running: [**ar x \$PACKAGE.deb**]{.command}. It will extract many files; however, the important one is `data.tar.gz`{.filename}. It contains all the files that would typically be installed from it.

For `.rpm`{.filename} files, you can install [rpmextract](https://archlinux.org/packages/extra/any/rpmextract/){.ulink} (see the [PKGBUILD](https://gitlab.archlinux.org/archlinux/packaging/packages/rpmextract/-/blob/main/PKGBUILD?ref_type=heads){.ulink} for how they install the package) and use [**rpmextract.sh**]{.command} from the package to extract the file. It will extract to multiple directories, such as `app`{.filename} and `usr`{.filename}. You can also use [File-Roller-44.6](../gnome/file-roller.md "File-Roller-44.6"){.xref} or [ark-26.04.1](../kde/ark.md "ark-26.04.1"){.xref} for the extraction.
:::
:::::::

::: navfooter
-   [Prev](locale-issues.md "Locale Related Issues"){accesskey="p"}

    Locale Related Issues

-   [Next](../postlfs/postlfs.md "Post LFS Configuration and Extra Software"){accesskey="n"}

    Post LFS Configuration and Extra Software

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
