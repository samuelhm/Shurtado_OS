::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](gcc-pass1.md "GCC-16.1.0 - Pass 1"){accesskey="p"}

    GCC-16.1.0 - Pass 1

-   [Next](glibc.md "Glibc-2.43"){accesskey="n"}

    Glibc-2.43

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-linux-headers}5.4. Linux-7.0.10 API Headers {#linux-7.0.10-api-headers .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Linux API Headers (in linux-7.0.10.tar.xz) expose the kernel\'s API for use by Glibc.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [1.7 GB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 5.4.1. Installation of Linux API Headers {#installation-of-linux-api-headers .sect2}

The Linux kernel needs to expose an Application Programming Interface (API) for the system\'s C library (Glibc in LFS) to use. This is done by way of sanitizing various C header files that are shipped in the Linux kernel source tarball.

Make sure there are no stale files embedded in the package:

``` userinput
make mrproper
```

Now extract the user-visible kernel headers from the source. The recommended make target ["[headers_install]{.quote}"]{.quote} cannot be used, because it requires [rsync]{.application}, which may not be available. The headers are first placed in `./usr`{.filename}, then copied to the needed location.

``` userinput
make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
```
:::

:::::::: {.content lang="en"}
## []{#contents-linux-headers}5.4.2. Contents of Linux API Headers {#contents-of-linux-api-headers .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed headers:** [/usr/include/asm/\*.h, /usr/include/asm-generic/\*.h, /usr/include/drm/\*.h, /usr/include/linux/\*.h, /usr/include/misc/\*.h, /usr/include/mtd/\*.h, /usr/include/rdma/\*.h, /usr/include/scsi/\*.h, /usr/include/sound/\*.h, /usr/include/video/\*.h, and /usr/include/xen/\*.h]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/asm, /usr/include/asm-generic, /usr/include/drm, /usr/include/linux, /usr/include/misc, /usr/include/mtd, /usr/include/rdma, /usr/include/scsi, /usr/include/sound, /usr/include/video, and /usr/include/xen]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -------------------------------------
  []{#asm}[`/usr/include/asm/*.h`{.filename}]{.term}                   The Linux API ASM Headers
  []{#asm-generic}[`/usr/include/asm-generic/*.h`{.filename}]{.term}   The Linux API ASM Generic Headers
  []{#drm}[`/usr/include/drm/*.h`{.filename}]{.term}                   The Linux API DRM Headers
  []{#linux}[`/usr/include/linux/*.h`{.filename}]{.term}               The Linux API Linux Headers
  []{#misc}[`/usr/include/misc/*.h`{.filename}]{.term}                 The Linux API Miscellaneous Headers
  []{#mtd}[`/usr/include/mtd/*.h`{.filename}]{.term}                   The Linux API MTD Headers
  []{#rdma}[`/usr/include/rdma/*.h`{.filename}]{.term}                 The Linux API RDMA Headers
  []{#scsi}[`/usr/include/scsi/*.h`{.filename}]{.term}                 The Linux API SCSI Headers
  []{#sound}[`/usr/include/sound/*.h`{.filename}]{.term}               The Linux API Sound Headers
  []{#video}[`/usr/include/video/*.h`{.filename}]{.term}               The Linux API Video Headers
  []{#xen}[`/usr/include/xen/*.h`{.filename}]{.term}                   The Linux API Xen Headers
  -------------------------------------------------------------------- -------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gcc-pass1.md "GCC-16.1.0 - Pass 1"){accesskey="p"}

    GCC-16.1.0 - Pass 1

-   [Next](glibc.md "Glibc-2.43"){accesskey="n"}

    Glibc-2.43

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
