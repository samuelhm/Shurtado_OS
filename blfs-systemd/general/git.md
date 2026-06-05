::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gdb.md "GDB-17.2"){accesskey="p"}

    GDB-17.2

-   [Next](gitserver.md "Running a Git Server"){accesskey="n"}

    Running a Git Server

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#git}Git-2.54.0 {#git-2.54.0 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Git {#introduction-to-git .sect2}

[Git]{.application} is a free and open source, distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Every [Git]{.application} clone is a full-fledged repository with complete history and full revision tracking capabilities, not dependent on network access or a central server. Branching and merging are fast and easy to do. [Git]{.application} is used for version control of files, much like tools such as [mercurial-7.2.2](mercurial.md "Mercurial-7.2.2"){.xref}, [Bazaar]{.application}, [Subversion-1.14.5](subversion.md "Subversion-1.14.5"){.xref}, [CVS](https://www.nongnu.org/cvs/){.ulink}, [Perforce]{.application}, and [Team Foundation Server]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/software/scm/git/git-2.54.0.tar.xz](https://www.kernel.org/pub/software/scm/git/git-2.54.0.tar.xz){.ulink}

-   Download MD5 sum: eb1137f556bd67cb4cea974275e51297

-   Download size: 7.7 MB

-   Estimated disk space required: 379 MB (with downloaded documentation; add 22 MB for building docs)

-   Estimated build time: 0.4 SBU (add 2.2 SBU (disk speed dependent) for tests and 1.0 SBU for building docs (all with parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   [https://www.kernel.org/pub/software/scm/git/git-manpages-2.54.0.tar.xz](https://www.kernel.org/pub/software/scm/git/git-manpages-2.54.0.tar.xz){.ulink} (not needed if you've installed [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, and prefer to rebuild them)

-   [https://www.kernel.org/pub/software/scm/git/git-htmldocs-2.54.0.tar.xz](https://www.kernel.org/pub/software/scm/git/git-htmldocs-2.54.0.tar.xz){.ulink} and other docs (not needed if you've installed [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} and want to rebuild the documentation).
:::

### Git Dependencies

#### Recommended

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} (needed to use [Git]{.application} over http, https, ftp or ftps)

#### Optional

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref} (for some tests), [Fcron-3.4.0](fcron.md "Fcron-3.4.0"){.xref} (runtime, for scheduling [**git maintenance**]{.command} jobs), [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} (runtime, may be used to sign [Git]{.application} commits or tags, or verify the signatures of them), [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} (runtime, needed to use [Git]{.application} over ssh), [Subversion-1.14.5](subversion.md "Subversion-1.14.5"){.xref} with Perl bindings (runtime, for [**git svn**]{.command}), [Tk-8.6.18](tk.md "Tk-8.6.18"){.xref} (gitk, a simple [Git]{.application} repository viewer, uses [Tk]{.application} at runtime), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, [Authen::SASL](https://metacpan.org/pod/Authen::SASL){.ulink} (runtime, for [**git send-email**]{.command}), [IO-Socket-SSL-2.098](perl-modules.md#perl-io-socket-ssl "IO::Socket::SSL-2.098"){.xref} (runtime, for [**git send-email**]{.command} to connect to a SMTP server with SSL encryption)[, and [Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (runtime, rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, for scheduling [**git maintenance**]{.command} jobs)]{.phrase}

#### Optional (to create the man pages, html docs and other docs)

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} and [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}, and also [dblatex](https://dblatex.sourceforge.net/){.ulink} (for the PDF version of the user manual), and [docbook2x](https://docbook2x.sourceforge.net/){.ulink} to create info pages
::::::

::: {.installation lang="en"}
## Installation of Git {#installation-of-git .sect2}

Install [Git]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                   \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3           \
            --with-libpcre2                 &&
make
```

You can build the man pages and/or html docs, or use downloaded ones. If you choose to build them, use the next two instructions.

If you have installed [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} you can create the html version of the man pages and other docs:

``` userinput
make html
```

If you have installed [asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} and [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} you can create the man pages:

``` userinput
make man
```

The test suite can be run in parallel mode. To run the test suite, issue: [**GIT_UNZIP=nonexist make test -k**]{.command}. The `GIT_UNZIP`{.envar} setting prevents the test suite from using [**unzip**]{.command}, we need it because in BLFS [**unzip**]{.command} is a symlink to [**bsdunzip**]{.command} which does not satisfy the assumption of some tests cases. If any test case fails, the list of failed tests can be shown via [**make -C t aggregate-results**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make perllibdir=/usr/lib/perl5/5.42/site_perl install
```

### If you created the man pages and/or html docs

Install the man pages as the `root`{.systemitem} user:

``` root
make install-man
```

Install the html docs as the `root`{.systemitem} user:

``` root
make htmldir=/usr/share/doc/git-2.54.0 install-html
```

### If you downloaded the man pages and/or html docs

If you downloaded the man pages untar them as the `root`{.systemitem} user:

``` root
tar -xf ../git-manpages-2.54.0.tar.xz \
    -C /usr/share/man --no-same-owner --no-overwrite-dir
```

If you downloaded the html docs untar them as the `root`{.systemitem} user:

``` root
mkdir -vp   /usr/share/doc/git-2.54.0 &&
tar   -xf   ../git-htmldocs-2.54.0.tar.xz \
      -C    /usr/share/doc/git-2.54.0 --no-same-owner --no-overwrite-dir &&

find        /usr/share/doc/git-2.54.0 -type d -exec chmod 755 {} \; &&
find        /usr/share/doc/git-2.54.0 -type f -exec chmod 644 {} \;
```

### Reorganize text and html in the html-docs (both methods)

For both methods, the html-docs include a lot of plain text files. Reorganize the files as the `root`{.systemitem} user:

``` root
mkdir -vp /usr/share/doc/git-2.54.0/man-pages/{html,text}         &&
mv        /usr/share/doc/git-2.54.0/{git*.adoc,man-pages/text}     &&
mv        /usr/share/doc/git-2.54.0/{git*.,index.,man-pages/}html &&

mkdir -vp /usr/share/doc/git-2.54.0/technical/{html,text}         &&
mv        /usr/share/doc/git-2.54.0/technical/{*.adoc,text}        &&
mv        /usr/share/doc/git-2.54.0/technical/{*.,}html           &&

mkdir -vp /usr/share/doc/git-2.54.0/howto/{html,text}             &&
mv        /usr/share/doc/git-2.54.0/howto/{*.adoc,text}            &&
mv        /usr/share/doc/git-2.54.0/howto/{*.,}html               &&

sed -i '/^<a href=/s|howto/|&html/|' /usr/share/doc/git-2.54.0/howto-index.md &&
sed -i '/^\* link:/s|howto/|&html/|' /usr/share/doc/git-2.54.0/howto-index.adoc
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-gitconfig=/etc/gitconfig`*: This sets `/etc/gitconfig`{.filename} as the file that stores the default, system wide, [Git]{.application} settings.

*`--with-python=python3`*: Use this switch to use [Python 3]{.application}, instead of the EOL'ed [Python 2]{.application}. Python is used for the [**git p4**]{.command} interface to Perforce repositories, and also used in some tests.

*`--with-libpcre2`*: This ensures building [**git grep**]{.command} with the [PCRE2]{.application} library installed in LFS, so [**git grep**]{.command} will support the `--perl-regexp`{.option} option.

[**tar -xf ../git-manpages-2.54.0.tar.gz -C /usr/share/man --no-same-owner**]{.command}: This untars `git-manpages-2.54.0.tar.gz`{.filename}. The `-C`{.option} option makes tar change directory to `/usr/share/man`{.filename} before it starts to decompress the docs. The `--no-same-owner`{.option} option stops tar from preserving the user and group details of the files. This is useful as that user or group may not exist on your system; this could (potentially) be a security risk.

[**mv /usr/share/doc/git-2.54.0 ...**]{.command}: These commands move some of the files into subfolders to make it easier to sort through the docs and find what you're looking for.

[**find ... chmod ...**]{.command}: These commands correct the permissions in the shipped documentation tar file.
:::

:::: {.configuration lang="en"}
## Configuring Git {#configuring-git .sect2}

::: {.sect3 lang="en"}
### []{#git-config}Config Files {#config-files .sect3}

`~/.gitconfig`{.filename} and `/etc/gitconfig`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [git, git-receive-pack, git-upload-archive, and git-upload-pack (hardlinked to each other), git-cvsserver, git-shell, gitk, and scalar]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/libexec/git-core, /usr/lib/perl5/5.42/site_perl/Git, and /usr/share/{doc/git-2.54.0,git-core,git-gui,gitk,gitweb}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  []{#git-prog}[[**git**]{.command}]{.term}                            is the stupid content tracker
  []{#git-cvsserver}[[**git-cvsserver**]{.command}]{.term}             is a CVS server emulator for [Git]{.application}
  []{#gitk}[[**gitk**]{.command}]{.term}                               is a graphical [Git]{.application} repository browser (needs [Tk-8.6.18](tk.md "Tk-8.6.18"){.xref})
  []{#git-receive-pack}[[**git-receive-pack**]{.command}]{.term}       is invoked by [**git send-pack**]{.command} and updates the repository with the information fed from the remote end
  []{#git-shell}[[**git-shell**]{.command}]{.term}                     is a login shell for SSH accounts to provide restricted Git access
  []{#git-upload-archive}[[**git-upload-archive**]{.command}]{.term}   is invoked by [**git archive --remote**]{.command} and sends a generated archive to the other end over the git protocol
  []{#git-upload-pack}[[**git-upload-pack**]{.command}]{.term}         is invoked by [**git fetch-pack**]{.command}, it discovers what objects the other side is missing, and sends them after packing
  []{#scalar}[[**scalar**]{.command}]{.term}                           is a repository management tool that optimizes Git for use in large repositories
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](gdb.md "GDB-17.2"){accesskey="p"}

    GDB-17.2

-   [Next](gitserver.md "Running a Git Server"){accesskey="n"}

    Running a Git Server

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
