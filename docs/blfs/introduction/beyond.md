<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](locale-issues.md "Locale Related Issues")

    Locale Related Issues

-   [Next](../postlfs/postlfs.md "Post LFS Configuration and Extra Software")

    Post LFS Configuration and Extra Software

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Going Beyond BLFS {#going-beyond-blfs}

<div class="sect1" lang="en">
The packages that are installed in this book are only the tip of the iceberg. We hope that the experience you gained with the LFS book and the BLFS book will give you the background needed to compile, install and configure packages that are not included in this book.

When you want to install a package to a location other than <code class="filename">/</code>, or <code class="filename">/usr</code>, you are installing outside the default environment settings on most machines. The following examples should assist you in determining how to correct this situation. The examples cover the complete range of settings that may need updating, but they are not all needed in every situation.

<div class="itemizedlist">
-   Expand the <code class="envar">PATH</code> to include <code class="filename">$PREFIX/bin</code>.

-   Expand the <code class="envar">PATH</code> for <code class="systemitem">root</code> to include <code class="filename">$PREFIX/sbin</code>.

-   Add <code class="filename">$PREFIX/lib</code> to <code class="filename">/etc/ld.so.conf</code> or expand <code class="envar">LD_LIBRARY_PATH</code> to include it. Before using the latter option, check out <a class="ulink" href="http://xahlee.info/UnixResource_dir/_/ldpath.md">http://xahlee.info/UnixResource_dir/\_/ldpath.html</a>. If you modify <code class="filename">/etc/ld.so.conf</code>, remember to update <code class="filename">/etc/ld.so.cache</code> by executing <span class="command"><strong>ldconfig</strong></span> as the <code class="systemitem">root</code> user.

-   Add <code class="filename">$PREFIX/man</code> to <code class="filename">/etc/man_db.conf</code>.

-   Add <code class="filename">$PREFIX/info</code> to <code class="envar">INFOPATH</code>.

-   Add <code class="filename">$PREFIX/lib/pkgconfig</code> to <code class="envar">PKG_CONFIG_PATH</code>. Some packages are now installing <code class="filename">.pc</code> files in <code class="filename">$PREFIX/share/pkgconfig</code>, so you may have to include this directory also.

-   Add <code class="filename">$PREFIX/include</code> to <code class="envar">CPPFLAGS</code> when compiling packages that depend on the package you installed.

-   Add <code class="filename">$PREFIX/lib</code> to <code class="envar">LDFLAGS</code> when compiling packages that depend on a library installed by the package.
</div>

If you are in search of a package that is not in the book, the following are different ways you can search for the desired package.

<div class="itemizedlist">
-   If you know the name of the package, then search SourceForge for it at <a class="ulink" href="https://sourceforge.net/directory/">https://sourceforge.net/directory/</a>, and search GitHub for it at <a class="ulink" href="https://github.com/">https://github.com/</a>. Also search Google at <a class="ulink" href="https://google.com/">https://google.com/</a>. Sometimes a search for the <code class="filename">rpm</code> at <a class="ulink" href="https://rpmfind.net/">https://rpmfind.net/</a> or the <code class="filename">deb</code> at <a class="ulink" href="https://www.debian.org/distrib/packages#search_packages">https://www.debian.org/distrib/packages#search_packages</a> can also lead to a link to the package.

-   If you know the name of the executable, but not the package that the executable belongs to, first try a Google search with the name of the executable. If the results are overwhelming, try searching for the given executable in the Debian repository at <a class="ulink" href="https://www.debian.org/distrib/packages#search_contents">https://www.debian.org/distrib/packages#search_contents</a>.
</div>

Some general hints on handling new packages:

<div class="itemizedlist">
-   Many of the newer packages follow the <span class="command"><strong>./configure && make && make install</strong></span> process. Help on the options accepted by configure can be obtained via the command <span class="command"><strong>./configure --help</strong></span>.

-   Most of the packages contain documentation on compiling and installing the package. Some of the documents are excellent, some not so excellent. Check out the homepage of the package for any additional and updated hints for compiling and configuring the package.

-   If you are having a problem compiling the package, try searching the LFS archives at <a class="ulink" href="https://www.linuxfromscratch.org/search.md">https://www.linuxfromscratch.org/search.html</a> for the error or if that fails, try searching Google. Often, a distribution will have already solved the problem (many of them use development versions of packages, so they see the changes sooner than those of us who normally use stable released versions). But be cautious - all builders tend to carry patches which are no longer necessary, and to have fixes which are only required because of their particular choices in how they build a package. You may have to search deeply to find a fix for the package version you are trying to use, or even to find the package (names are sometimes not what you might expect, e.g. <span class="application">ghostscript</span> often has a prefix or a suffix in its name), but the following notes might help, particularly for those who, like the editors, are trying to build the latest versions and encountering problems:

    ::: itemizedlist
    -   Arch <a class="ulink" href="https://www.archlinux.org/packages/">https://www.archlinux.org/packages/</a> - enter the package name in the 'Keywords' box, select the package name, select the 'Source Files' field, and then select the <code class="filename">PKGBUILD</code> entry to see how they build this package.

    -   Debian <a class="ulink" href="http://ftp.debian.org/debian/pool">http://ftp.debian.org/debian/pool</a> (use your country's version if there is one) - the source will be in .tar.gz tarballs (either the original upstream <code class="filename">.orig</code> source, or else a <code class="filename">dfsg</code> containing those parts which comply with Debian's free software guidelines) accompanied by versioned .diff.gz or .tar.gz additions. These additions often show how the package is built, and may contain patches. In the .diff.gz versions, any patches create files in <code class="filename">debian/patches</code>.

    -   Fedora package source gets reorganized from time to time. At the moment the package source for rpms is at <a class="ulink" href="https://src.fedoraproject.org/projects/rpms/%2A">https://src.fedoraproject.org/projects/rpms/%2A</a> and from there you can try putting a package name in the search box. If the package is found you can look at the files (specfile to control the build, various patches) or the commits. If that fails, you can download an srpm (source rpm) and using <span class="application">rpmextract</span> (see the Tip at the bottom of the page). For rpms go to <a class="ulink" href="https://dl.fedoraproject.org/pub/fedora/linux/">https://dl.fedoraproject.org/pub/fedora/linux/</a> and then choose which repo you wish to look at - development/rawhide is the latest development, or choose releases for what was shipped in a release, updates for updates to a release, or updates/testing for the latest updates which might work or might have problems.

    -   Gentoo - First use a search engine to find an ebuild which looks as if it will fix the problem, or search at <a class="ulink" href="https://packages.gentoo.org/">https://packages.gentoo.org/</a> - use the search field. Note where the package lives in the portage hierarchy, e.g. <code class="filename">app-something/</code>. In general you can treat the ebuild as a sort of pseudo-code / shell combination with some functions you can hazard a guess at, such as <span class="command"><strong>dodoc</strong></span>. If the fix is just a <span class="command"><strong>sed</strong></span>, try it. However, in most cases the fix will use a patch. To find the patch, use a gentoo-portage mirror: Two links to mirrors in the U.S.A. which seem to usually be up to date are <a class="ulink" href="https://mirror.rackspace.com/gentoo-portage/">https://mirror.rackspace.com/gentoo-portage/</a> and <a class="ulink" href="https://mirror.steadfast.net/gentoo-portage/">https://mirror.steadfast.net/gentoo-portage/</a>. Navigate down the tree to the package, then to the <code class="filename">files/</code> directory to look for the patch. Sometimes a portage mirror has not yet been updated, particularly for a recent new patch. In a few cases, gentoo batch the patches into a tarball and the ebuild will have a link in the form https://dev.gentoo.org/\~\${PATCH_DEV}/distfiles/\${P}-patches-\${PATCH_VER}.tar.xz here, look for PATCH_DEV and PATCH_VER in the build and format the full URL in your browser or for wget. Remember the '\~' before the developer's ID and note that trying to search the earlier levels of the URL in a browser may drop you at www.gentoo.org or return 403 (forbidden).

    -   openSUSE provide a rolling release, some package versions are in <a class="ulink" href="https://download.opensuse.org/source/tumbleweed/repo/oss/src/">https://download.opensuse.org/source/tumbleweed/repo/oss/src/</a> but others are in ../update/openSUSE-current/src - the source only seems to be available in source rpms.

    -   Slackware - the official package browser is currently broken. The site at <a class="ulink" href="https://slackbuilds.org/">https://slackbuilds.org/</a> has current and previous versions in their unofficial repository with links to homepages, downloads, and some individual files, particularly the <code class="filename">.SlackBuild</code> files.

    -   Ubuntu <a class="ulink" href="http://ftp.ubuntu.com/ubuntu/pool/">http://ftp.ubuntu.com/ubuntu/pool/</a> - see the Debian notes above.
    :::

    If everything else fails, try the blfs-support mailing-list.
</div>

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

If you have found a package that is only available in <code class="filename">.deb</code> or <code class="filename">.rpm</code> format, there are different methods of extracting them.

<code class="filename">.deb</code> files are just archives that are created and extracted by <span class="application">ar</span>. It can be extracted by running: <span class="command"><strong>ar x \$PACKAGE.deb</strong></span>. It will extract many files; however, the important one is <code class="filename">data.tar.gz</code>. It contains all the files that would typically be installed from it.

For <code class="filename">.rpm</code> files, you can install <a class="ulink" href="https://archlinux.org/packages/extra/any/rpmextract/">rpmextract</a> (see the <a class="ulink" href="https://gitlab.archlinux.org/archlinux/packaging/packages/rpmextract/-/blob/main/PKGBUILD?ref_type=heads">PKGBUILD</a> for how they install the package) and use <span class="command"><strong>rpmextract.sh</strong></span> from the package to extract the file. It will extract to multiple directories, such as <code class="filename">app</code> and <code class="filename">usr</code>. You can also use <a class="xref" href="../gnome/file-roller.md" title="File-Roller-44.6">File-Roller-44.6</a> or <a class="xref" href="../kde/ark.md" title="ark-26.04.1">ark-26.04.1</a> for the extraction.
</div>
</div>

<div class="navfooter">
-   [Prev](locale-issues.md "Locale Related Issues")

    Locale Related Issues

-   [Next](../postlfs/postlfs.md "Post LFS Configuration and Extra Software")

    Post LFS Configuration and Extra Software

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
