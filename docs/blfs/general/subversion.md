<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](slang.md "slang-2.3.3")

    slang-2.3.3

-   [Next](svnserver.md "Running a Subversion Server")

    Running a Subversion Server

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Subversion-1.14.5 {#subversion-1.14.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Subversion {#introduction-to-subversion}

<span class="application">Subversion</span> is a version control system that is designed to be a compelling replacement for <span class="application">CVS</span> in the open source community. It extends and enhances <span class="application">CVS</span>' feature set, while maintaining a similar interface for those already familiar with <span class="application">CVS</span>. These instructions install the client and server software used to manipulate a <span class="application">Subversion</span> repository. Creation of a repository is covered at <a class="xref" href="svnserver.md" title="Running a Subversion Server">Running a Subversion Server</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/subversion/subversion-1.14.5.tar.bz2">https://archive.apache.org/dist/subversion/subversion-1.14.5.tar.bz2</a>

-   Download MD5 sum: af6001dc7af2f1242a4f72e8a5c565d2

-   Download size: 8.3 MB

-   Estimated disk space required: 260 MB (add 189 MB for bindings, 54 MB for docs, 1.3 GB for tests)

-   Estimated build time: 1.5 SBU (Using parallelism=4; add 2.0 SBU for bindings, 30 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/subversion-1.14.5-upstream_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/subversion-1.14.5-upstream_fixes-1.patch</a>
</div>

### Subversion Dependencies

#### Required

<a class="xref" href="apr-util.md" title="Apr-Util-1.6.3">Apr-Util-1.6.3</a>

#### Recommended

<a class="xref" href="../basicnet/serf.md" title="Serf-1.3.10">Serf-1.3.10</a> (for handling http:// and https:// URLs) and <a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a> (for regenerating the build system)

#### Optional

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a>, <a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>, <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for generating HTML documentation), <a class="xref" href="../gnome/gnome-keyring.md" title="gnome-keyring-50.0">gnome-keyring-50.0</a>, <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, <a class="xref" href="python-modules.md#py3c" title="Py3c-1.4">Py3c-1.4</a> (for the python bindings, and tests), <a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a>, and <a class="ulink" href="https://juliastrings.github.io/utf8proc/">UTF8proc</a>

#### Optional (for the Java Bindings)

One of <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a>, <a class="ulink" href="https://www.inet.no/dante/">Dante</a> or <a class="ulink" href="https://jikes.sourceforge.net/">Jikes</a>, <a class="ulink" href="https://junit.org/junit4/">JUnit 4</a> (to test the Java bindings) and <a class="xref" href="apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a>.
</div>

<div class="installation" lang="en">
## Installation of Subversion {#installation-of-subversion}

First, fix several problems with Python 3.14 and SWIG-4.4:

```bash
patch -Np1 -i ../subversion-1.14.5-upstream_fixes-1.patch
```

Install <span class="application">Subversion</span> by running the following commands:

```bash
./configure --prefix=/usr            \
            --disable-static         \
            --with-apache-libexecdir \
            --with-utf8proc=internal &&
make
```

If you have <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and you wish to build the API documentation, issue:

```bash
doxygen doc/doxygen.conf
```

If you wish to build the Java bindings pass the <code class="option">--enable-javahl</code> parameter to the <span class="command"><strong>configure</strong></span> command. In addition, if you want to run the Java test suite, you have to specify the location of the <span class="application">JUnit</span> file by adding <code class="option">--with-junit=<path to junit jar></code> (for instance <code class="option">--with-junit=/usr/local/java/lib/junit-4.13.jar</code>) to <span class="command"><strong>configure</strong></span>. The JUnit jar file is no longer included in <a class="xref" href="apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a> and must be downloaded separately. To build the Java bindings, issue the following command:

```console
make -j1 javahl
```

If you are going to compile the <span class="application">Ruby</span> bindings, set the C standard to prevent the build from failing:

```console
sed -i 's/Wno-int-to-pointer-cast/std=gnu17/' Makefile
```

If you want to compile <span class="application">Perl</span>, <span class="application">Python</span>, or <span class="application">Ruby</span> bindings, issue any of the following command:

```console
make swig-pl # for Perl
make swig-py \
     swig_pydir=/usr/lib/python3.14/site-packages/libsvn \
     swig_pydir_extra=/usr/lib/python3.14/site-packages/svn # for Python
make swig-rb # for Ruby
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Four tests in the <code class="filename">commit_tests.py</code>, <code class="filename">prop_tests.py</code>, and <code class="filename">update_tests.py</code> suites are known to fail due to output differences with newer versions of Python.

To test the results of any of the <span class="application">SWIG</span> bindings, you can use any of the following commands: <span class="command"><strong>make check-swig-pl</strong></span>, <span class="command"><strong>make check-swig-py</strong></span>, or <span class="command"><strong>make check-swig-rb</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755 -d /usr/share/doc/subversion-1.14.5 &&
cp      -v -R doc/* /usr/share/doc/subversion-1.14.5
```

If you built the Java bindings, issue the following command as the <code class="systemitem">root</code> user to install them:

```console
make install-javahl
```

If you built the <span class="application">Perl</span>, <span class="application">Python</span>, or <span class="application">Ruby</span> bindings, issue any of the following commands as the <code class="systemitem">root</code> user to install them:

```console
make install-swig-pl
make install-swig-py \
      swig_pydir=/usr/lib/python3.14/site-packages/libsvn \
      swig_pydir_extra=/usr/lib/python3.14/site-packages/svn
make install-swig-rb
```

The java bindings need to be installed in order for the tests to run, since the tests attempt to look for them in CLASSPATH. To test the results of the Java bindings build, issue <span class="command"><strong>LANG=C make check-javahl</strong></span>.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-apache-libexecdir`*: If <a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a> is installed, the shared <span class="application">Apache</span> modules are built. This switch allows to have those modules installed to <span class="application">Apache</span>'s configured module dir instead of <code class="filename">/usr/libexec</code>. It has no effect if <span class="application">Apache</span> is not installed.

*`--with-utf8proc=internal`*: Remove these switches if you have installed the optional dependencies.

<code class="option">--enable-javahl</code>: enables compilation of Java high level bindings. Running <span class="command"><strong>make javahl</strong></span> is necessary to do the compilation.

<code class="option">--with-junit=<location of the junit jar file></code>: gives the location of the junit jar, otherwise the javahl tests cannot be run.

<code class="option">--disable-gmock</code>: Do not use the Googlemock testing framework.
</div>

<div class="configuration" lang="en">
## Configuring Subversion {#configuring-subversion}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.subversion/config</code> and <code class="filename">/etc/subversion/config</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<code class="filename">/etc/subversion/config</code> is the <span class="application">Subversion</span> system-wide configuration file. This file is used to specify defaults for different <span class="command"><strong>svn</strong></span> commands.

<code class="filename">~/.subversion/config</code> is the user's personal configuration file. It is used to override the system-wide defaults set in <code class="filename">/etc/subversion/config</code>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">svn, svnadmin, svnbench, svndumpfilter, svnfsfs, svnlook, svnmucc, svnrdump, svnserve, svnsync, and svnversion</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="application">libsvn\_\*-1.so and optionally, a Java library, the mod_dav_svn.so and mod_authz_svn.so <span class="segbody">Apache HTTP</span> DSO modules and various <span class="application">Perl</span>, <span class="application">Python</span> and <span class="application">Ruby</span> modules.</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/subversion-1, /usr/lib/perl5/site_perl/5.42/{,auto/}SVN, /usr/lib/python3.14/site-packages/{libsvn,svn}, /usr/lib/ruby/site_ruby/\<x.y.z\>/{,\<arch-linux\>-linux/}svn, /usr/lib/svn-javahl, and /usr/share/doc/subversion-1.14.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="svn"></a><span class="command"><span class="term"><strong>svn</strong></span></span>                       is a command-line client program used to access <span class="application">Subversion</span> repositories
  <a id="svnadmin"></a><span class="command"><span class="term"><strong>svnadmin</strong></span></span>             is a tool for creating, tweaking or repairing a <span class="application">Subversion</span> repository
  <a id="svnbench"></a><span class="command"><span class="term"><strong>svnbench</strong></span></span>             is a benchmarking tool
  <a id="svndumpfilter"></a><span class="command"><span class="term"><strong>svndumpfilter</strong></span></span>   is a program for filtering <span class="application">Subversion</span> repository dumpfile format streams
  <a id="svnfsfs"></a><span class="command"><span class="term"><strong>svnfsfs</strong></span></span>               is the FSFS (FileSystem atop of the FileSystem - <span class="application">Subversion</span> filesystem implementation) repository manipulation tool
  <a id="svnlook"></a><span class="command"><span class="term"><strong>svnlook</strong></span></span>               is a tool for inspecting a <span class="application">Subversion</span> repository
  <a id="svnmucc"></a><span class="command"><span class="term"><strong>svnmucc</strong></span></span>               is a Multiple URL Command Client for <span class="application">Subversion</span>
  <a id="svnrdump"></a><span class="command"><span class="term"><strong>svnrdump</strong></span></span>             is a tool for dumping or loading a remote <span class="application">Subversion</span> repository
  <a id="svnserve"></a><span class="command"><span class="term"><strong>svnserve</strong></span></span>             is a custom standalone server program, able to run as a daemon process or invoked by SSH
  <a id="svnsync"></a><span class="command"><span class="term"><strong>svnsync</strong></span></span>               is a <span class="application">Subversion</span> repository synchronisation tool
  <a id="svnversion"></a><span class="command"><span class="term"><strong>svnversion</strong></span></span>         is used to report the version number and state of a working <span class="application">Subversion</span> repository copy
  <a id="libsvn_star-1"></a><span class="term"><code class="filename">libsvn_*-1.so</code></span>      are the support libraries used by the <span class="application">Subversion</span> programs
  <a id="mod_authz_svn"></a><span class="term"><code class="filename">mod_authz_svn.so</code></span>   is a plug-in module for the <span class="application">Apache</span> HTTP server, used to authenticate users to a <span class="application">Subversion</span> repository over the Internet or an intranet
  <a id="mod_dav_svn"></a><span class="term"><code class="filename">mod_dav_svn.so</code></span>       is a plug-in module for the <span class="application">Apache</span> HTTP server, used to make a <span class="application">Subversion</span> repository available to others over the Internet or an intranet
  ---------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](slang.md "slang-2.3.3")

    slang-2.3.3

-   [Next](svnserver.md "Running a Subversion Server")

    Running a Subversion Server

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
