<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](dosfstools.md "dosfstools-4.2")

    dosfstools-4.2

-   [Next](jfsutils.md "jfsutils-1.1.15")

    jfsutils-1.1.15

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Fuse-3.18.2 {#fuse-3.18.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fuse {#introduction-to-fuse}

<span class="application">FUSE</span> (Filesystem in Userspace) is a simple interface for userspace programs to export a virtual filesystem to the Linux kernel. <span class="application">Fuse</span> also aims to provide a secure method for non privileged users to create and mount their own filesystem implementations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libfuse/libfuse/releases/download/fuse-3.18.2/fuse-3.18.2.tar.gz">https://github.com/libfuse/libfuse/releases/download/fuse-3.18.2/fuse-3.18.2.tar.gz</a>

-   Download MD5 sum: 43c6f6cd2c1368d916f6fb080eb39cbb

-   Download size: 4.8 MB

-   Estimated disk space required: 97 MB (with tests and documentation)

-   Estimated build time: 0.1 SBU (add 1.0 SBU for tests)
</div>

### Fuse Dependencies

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to rebuild the API documentation), <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (required for tests), <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (required for tests), and <a class="ulink" href="https://pypi.org/project/looseversion/">looseversion</a> (for tests)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
```

Character devices in userspace should be enabled too for running the tests:

```console
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
  <*/M>   Character device in Userspace support                           [CUSE]
```
</div>

<div class="installation" lang="en">
## Installation of Fuse {#installation-of-fuse}

Install <span class="application">Fuse</span> by running the following commands:

```bash
sed -i '/^udev/,$ s/^/#/' util/meson.build &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

The API documentation is included in the package, but if you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and wish to rebuild it, issue:

```bash
pushd .. &&
  doxygen doc/Doxyfile &&
popd
```

To test the results, issue the following commands (as the <code class="systemitem">root</code> user):

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install looseversion                      &&
python3 -m pytest
deactivate
```

The <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> Python module is required for the tests. One test named <code class="filename">test_cuse</code> will fail if the *`CONFIG_CUSE`* configuration item was not enabled when the kernel was built. One test, <code class="filename">test/util.py</code>, will output a warning due to the usage of an unknown mark in pytest.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install                  &&
chmod u+s /usr/bin/fusermount3 &&

cd ..                          &&
cp -Rv doc/html -T /usr/share/doc/fuse-3.18.2 &&
install -v -m644   doc/{README.NFS,kernel.txt} \
                   /usr/share/doc/fuse-3.18.2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... util/meson.build</strong></span>: This command disables the installation of a boot script and udev rule that are not needed.

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.
</div>

<div class="configuration" lang="en">
## Configuring fuse {#configuring-fuse}

<div class="sect3" lang="en">
### Config Files {#config-files}

Some options regarding mount policy can be set in the file <code class="filename">/etc/fuse.conf</code>. To install the file run the following command as the <code class="systemitem">root</code> user:

```bash
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
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fusermount3 and mount.fuse3</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfuse3.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/fuse3 and /usr/share/doc/fuse-3.18.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------
  <a id="fusermount3"></a><span class="command"><span class="term"><strong>fusermount3</strong></span></span>   is a suid root program to mount and unmount Fuse filesystems
  <a id="mount.fuse3"></a><span class="command"><span class="term"><strong>mount.fuse3</strong></span></span>   is the command <span class="command"><strong>mount</strong></span> calls to mount a Fuse filesystem
  <a id="libfuse3"></a><span class="term"><code class="filename">libfuse3.so</code></span>         contains the <span class="application">FUSE</span> API functions
  ------------------------------------------------------ -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dosfstools.md "dosfstools-4.2")

    dosfstools-4.2

-   [Next](jfsutils.md "jfsutils-1.1.15")

    jfsutils-1.1.15

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
