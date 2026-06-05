<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](luajit.md "luajit-20260213")

    luajit-20260213

-   [Next](nasm.md "NASM-3.01")

    NASM-3.01

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Mercurial-7.2.2 {#mercurial-7.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Mercurial {#introduction-to-mercurial}

<span class="application">Mercurial</span> is a distributed source control management tool similar to <span class="application">Git</span> and <span class="application">Bazaar</span>. <span class="application">Mercurial</span> is written in <span class="application">Python</span> and is used by projects such as Mozilla for Firefox and Thunderbird.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.mercurial-scm.org/release/mercurial-7.2.2.tar.gz">https://www.mercurial-scm.org/release/mercurial-7.2.2.tar.gz</a>

-   Download MD5 sum: 9a637d4fc411da358cfa341cd18d0a12

-   Download size: 8.8 MB

-   Estimated disk space required: 124 MB (with docs, add 2.5 GB for tests)

-   Estimated build time: 0.3 SBU (with docs; add 24 SBU for tests; both using parallelism=4)
</div>

### Mercurial Dependencies

#### Required

<a class="xref" href="python-dependencies.md#setuptools_scm" title="Setuptools_scm-9.2.2">setuptools_scm-9.2.2</a>

#### Optional

<a class="xref" href="python-modules.md#pypa-build" title="build-1.5.0">build-1.5.0</a>, <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (required to build the documentation), <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> (runtime, to access ssh://... repositories), <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> (see <code class="filename">rust/README.rst</code> and <code class="filename">rust/rhg/README.md</code>), <a class="xref" href="subversion.md" title="Subversion-1.14.5">Subversion-1.14.5</a> (with Python bindings), <a class="xref" href="python-dependencies.md#uv_build" title="uv_build-0.10.2">uv_build-0.10.2</a> (for an alternate build method), <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (used in one test), <a class="ulink" href="https://www.nongnu.org/cvs/">CVS</a>, <a class="ulink" href="https://pypi.python.org/pypi/pyflakes">pyflakes</a>, and <a class="ulink" href="https://github.com/google/re2/">re2</a>
</div>

<div class="installation" lang="en">
## Installation of Mercurial {#installation-of-mercurial}

First, remove some commands that conflict with openssl4:

```bash
sed -i "15,23 s/^/#/" setup.py
```

<span class="application">Mercurial</span> is built and installed in a single command as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr install
```

The documentation is built by the above command (in man and html formats), but only the manual pages are installed. If you wish to install the html documentation, issue as the <code class="systemitem">root</code> user:

```bash
mkdir /usr/share/doc/mercurial-7.2.2 &&
cp -R doc/html /usr/share/doc/mercurial-7.2.2
```

In order to run the tests, make sure all the files are owned by an unprivileged user. This fixes a problem with permissions in the build directory since the above <span class="command"><strong>install</strong></span> command has created files owned by <code class="systemitem">root</code>. To remedy this, issue, as the <code class="systemitem">root</code> user:

```bash
chown -Rv username .
```

Where *`username`* should be replaced with the user name of the person running the tests.

The test suite tries to run some tests that are incompatible with <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>. Remove them with:

```bash
sed -i "177,181 s/^/#/" Makefile
```

Now, run the test suite with:

```bash
TESTFLAGS="-j<N> --with-hg /usr/bin/hg" make check
```

where *`<N>`* is an integer between one and the number of ( processor X threads ), inclusive (default is the total number of processors as returned by <span class="command"><strong>nproc</strong></span>). Tests may fail because some error messages have changed in Python or some deprecation warnings are printed that were not present when the test was designed. Also, some tests use a lot of memory, and may be killed by the kernel if the system is running low on memory.

In order to investigate any apparently failing tests, you may use the <span class="command"><strong>run-tests.py</strong></span> script in the <code class="filename">tests</code> directory. To see the almost forty switches, some of them very useful, issue <span class="command"><strong>tests/run-tests.py --help</strong></span>. Running the following commands, you will execute only the tests that failed before:

```bash
pushd tests  &&
  ./run-tests.py --with-hg /usr/bin/hg --retest
popd
```

An interesting switch is <code class="option">--time</code>, which will generate a table of all the executed tests and their respective start, end, user, system and real times once the tests are complete. Note that these switches may be used with <span class="command"><strong>make check</strong></span> by including them in the <code class="envar">TESTFLAGS</code> environment variable.

After installation, two very quick and simple tests should run correctly. The first one needs some configuration:

```bash
cat >> ~/.hgrc << "EOF"
[ui]
username = <user_name> <user@mail>
EOF
```

where you must replace \<user_name\> and \<user@mail\> (mail is optional and can be omitted, but if you keep it, you should also keep the angle brackets <span class="quote">“<span class="quote">\<\></span>”</span>). With the user identity defined, run <span class="command"><strong>hg debuginstall</strong></span> and several lines will be displayed, the last one reading "no problems detected". Another quick and simple test is just <span class="command"><strong>hg</strong></span>, which should output basic commands that can be used with <span class="command"><strong>hg</strong></span>.
</div>

<div class="configuration" lang="en">
## Configuring Mercurial {#configuring-mercurial}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/mercurial/hgrc</code> and <code class="filename">~/.hgrc</code>

The great majority of extensions are disabled by default. Run <span class="command"><strong>hg help extensions</strong></span> if you need to enable any, e.g. when investigating test failures. This will output a list of enabled and disabled extensions, as well as more information such as how to enable or disable extensions using configuration files.

If you have installed <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> and want <span class="application">Mercurial</span> to use the certificates, as the <code class="systemitem">root</code> user, issue:

```bash
install -v -d -m755 /etc/mercurial &&
cat > /etc/mercurial/hgrc << "EOF"
[web]
cacerts = /etc/pki/tls/certs/ca-bundle.crt
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">hg</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">numerous internal modules under /usr/lib/python3.14/site-packages/mercurial</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/mercurial, /usr/lib/python3.14/site-packages/hgdemandimport, /usr/lib/python3.14/site-packages/hgext, /usr/lib/python3.14/site-packages/hgext3rd, /usr/lib/python3.14/site-packages/mercurial, /usr/lib/python3.14/site-packages/mercurial-7.2.2.dist-info, and /usr/share/doc/mercurial-7.2.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------ -----------------------------------------
  <a id="hg"></a><span class="command"><span class="term"><strong>hg</strong></span></span>   is the mercurial version control system
  ------------------------------------ -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](luajit.md "luajit-20260213")

    luajit-20260213

-   [Next](nasm.md "NASM-3.01")

    NASM-3.01

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
