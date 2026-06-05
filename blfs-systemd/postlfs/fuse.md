::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](dosfstools.md "dosfstools-4.2"){accesskey="p"}

    dosfstools-4.2

-   [Next](jfsutils.md "jfsutils-1.1.15"){accesskey="n"}

    jfsutils-1.1.15

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fuse3}Fuse-3.18.2 {#fuse-3.18.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Fuse {#introduction-to-fuse .sect2}

[FUSE]{.application} (Filesystem in Userspace) is a simple interface for userspace programs to export a virtual filesystem to the Linux kernel. [Fuse]{.application} also aims to provide a secure method for non privileged users to create and mount their own filesystem implementations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libfuse/libfuse/releases/download/fuse-3.18.2/fuse-3.18.2.tar.gz](https://github.com/libfuse/libfuse/releases/download/fuse-3.18.2/fuse-3.18.2.tar.gz){.ulink}

-   Download MD5 sum: 43c6f6cd2c1368d916f6fb080eb39cbb

-   Download size: 4.8 MB

-   Estimated disk space required: 97 MB (with tests and documentation)

-   Estimated build time: 0.1 SBU (add 1.0 SBU for tests)
:::

### Fuse Dependencies

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to rebuild the API documentation), [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} (required for tests), [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref} (required for tests), and [looseversion](https://pypi.org/project/looseversion/){.ulink} (for tests)
:::::

::: {.kernel lang="en"}
## []{#fuse-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
```

Character devices in userspace should be enabled too for running the tests:

``` screen
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
  <*/M>   Character device in Userspace support                           [CUSE]
```
:::

::: {.installation lang="en"}
## Installation of Fuse {#installation-of-fuse .sect2}

Install [Fuse]{.application} by running the following commands:

``` userinput
sed -i '/^udev/,$ s/^/#/' util/meson.build &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

The API documentation is included in the package, but if you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed and wish to rebuild it, issue:

``` userinput
pushd .. &&
  doxygen doc/Doxyfile &&
popd
```

To test the results, issue the following commands (as the `root`{.systemitem} user):

``` root
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install looseversion                      &&
python3 -m pytest
deactivate
```

The [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} Python module is required for the tests. One test named `test_cuse`{.filename} will fail if the *`CONFIG_CUSE`* configuration item was not enabled when the kernel was built. One test, `test/util.py`{.filename}, will output a warning due to the usage of an unknown mark in pytest.

Now, as the `root`{.systemitem} user:

``` root
ninja install                  &&
chmod u+s /usr/bin/fusermount3 &&

cd ..                          &&
cp -Rv doc/html -T /usr/share/doc/fuse-3.18.2 &&
install -v -m644   doc/{README.NFS,kernel.txt} \
                   /usr/share/doc/fuse-3.18.2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... util/meson.build**]{.command}: This command disables the installation of a boot script and udev rule that are not needed.

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.
:::

:::: {.configuration lang="en"}
## []{#fuse-configuration}Configuring fuse {#configuring-fuse .sect2}

::: {.sect3 lang="en"}
### []{#fuse-config}Config Files {#config-files .sect3}

Some options regarding mount policy can be set in the file `/etc/fuse.conf`{.filename}. To install the file run the following command as the `root`{.systemitem} user:

``` root
cat > /etc/fuse.conf << "EOF"
# Set the maximum number of FUSE mounts allowed to non-root users.
# The default is 1000.
#
#mount_max = 1000

# Allow non-root users to specify the 'allow_other' or 'allow_root'
# mount options.
#
#user_allow_other
EOF
```

Additional information about the meaning of the configuration options are found in the man page.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fusermount3 and mount.fuse3]{.segbody}
:::

::: seg
**Installed Libraries:** [libfuse3.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/fuse3 and /usr/share/doc/fuse-3.18.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------
  []{#fusermount3}[[**fusermount3**]{.command}]{.term}   is a suid root program to mount and unmount Fuse filesystems
  []{#mount.fuse3}[[**mount.fuse3**]{.command}]{.term}   is the command [**mount**]{.command} calls to mount a Fuse filesystem
  []{#libfuse3}[`libfuse3.so`{.filename}]{.term}         contains the [FUSE]{.application} API functions
  ------------------------------------------------------ -----------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](dosfstools.md "dosfstools-4.2"){accesskey="p"}

    dosfstools-4.2

-   [Next](jfsutils.md "jfsutils-1.1.15"){accesskey="n"}

    jfsutils-1.1.15

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
