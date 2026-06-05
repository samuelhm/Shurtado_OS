::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](la-files.md "About Libtool Archive (.la) files"){accesskey="p"}

    About Libtool Archive (.la) files

-   [Next](locale-issues.md "Locale Related Issues"){accesskey="n"}

    Locale Related Issues

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libraries}Libraries: Static or shared? {#libraries-static-or-shared .sect1}

:::: {.sect1 lang="en"}
::: {.package lang="en"}
## Libraries: Static or shared? {#libraries-static-or-shared-1 .sect2}

The original libraries were simply an archive of routines from which the required routines were extracted and linked into the executable program. These are described as static libraries, with names of the form `libfoo.a`{.filename} on UNIX-like operating systems. On some old operating systems they are the only type available.

On almost all Linux platforms there are also [“[shared]{.quote}”]{.quote} (or equivalently [“[dynamic]{.quote}”]{.quote}) libraries (with names of the form `libfoo.so`{.filename}) – one copy of the library is loaded into virtual memory, and shared by all the programs which call any of its functions. This is space efficient.

In the past, essential programs such as a shell were often linked statically so that some form of minimal recovery system would exist even if shared libraries, such as `libc.so`{.filename}, became damaged (e.g. moved to `lost+found`{.filename} after [**fsck**]{.command} following an unclean shutdown). Nowadays, most people use an alternative system install or a USB stick if they have to recover. Journaling filesystems also reduce the likelihood of this sort of problem.

Within the book, there are various places where configure switches such as *`--disable-static`* are employed, and other places where the possibility of using system versions of libraries instead of the versions included within another package is discussed. The main reason for this is to simplify updates of libraries.

If a package is linked to a dynamic library, updating to a newer library version is automatic once the newer library is installed and the program is (re)started (provided the library major version is unchanged, e.g. going from `libfoo.so.2.0`{.filename} to `libfoo.so.2.1`{.filename}. Going to `libfoo.so.3`{.filename} will require recompilation – [**ldd**]{.command} can be used to find which programs use the old version). If a program is linked to a static library, the program always has to be recompiled. If you know which programs are linked to a particular static library, this is merely an annoyance. But usually you will [*not*]{.emphasis} know which programs to recompile.

One way to identify when a static library is used, is to deal with it at the end of the installation of every package. Write a script to find all the static libraries in `/usr/lib`{.filename} or wherever you are installing to, and either move them to another directory so that they are no longer found by the linker, or rename them so that `libfoo.a`{.filename} becomes e.g. `libfoo.a.hidden`{.filename}. The static library can then be temporarily restored if it is ever needed, and the package needing it can be identified. This shouldn't be done blindly since many libraries only exist in a static version. For example, some libraries from the [glibc]{.application} and [gcc]{.application} packages should always be present on the system (`libc_nonshared.a, libg.a, libpthread_nonshared.a, libssp_nonshared.a, libsupc++.a`{.filename} as of glibc-2.36 and gcc-12.2).

If you use this approach, you may discover that more packages than you were expecting use a static library. That was the case with [nettle-2.4]{.application} in its default static-only configuration: It was required by [GnuTLS-3.0.19]{.application}, but also linked into package(s) which used [GnuTLS]{.application}, such as [glib-networking-2.32.3]{.application}.

Many packages put some of their common functions into a static library which is only used by the programs within the package and, crucially, the library is [*not*]{.emphasis} installed as a standalone library. These internal libraries are not a problem – if the package has to be rebuilt to fix a bug or vulnerability, nothing else is linked to them.

When BLFS mentions system libraries, it means shared versions of libraries. Some packages such as [Firefox-140.11.0](../xsoft/firefox.md "Firefox-140.11.0esr"){.xref} and [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref} bundle many other libraries in their build tree. The version they ship is often older than the version used in the system, so it may contain bugs – sometimes developers go to the trouble of fixing bugs in their included libraries, other times they do not.

Sometimes, deciding to use system libraries is an easy decision. Other times it may require you to alter the system version (e.g. for [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref} if used for [Firefox-140.11.0](../xsoft/firefox.md "Firefox-140.11.0esr"){.xref}). Occasionally, a package ships an old library and can no longer link to the current version, but can link to an older version. In this case, BLFS will usually just use the shipped version. Sometimes the included library is no longer developed separately, or its upstream is now the same as the package's upstream and you have no other packages which will use it. In those cases, you'll be lead to use the included library even if you usually prefer to use system libraries.
:::
::::

::: navfooter
-   [Prev](la-files.md "About Libtool Archive (.la) files"){accesskey="p"}

    About Libtool Archive (.la) files

-   [Next](locale-issues.md "Locale Related Issues"){accesskey="n"}

    Locale Related Issues

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
