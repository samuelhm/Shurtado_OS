<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libshumate.md "libshumate-1.6.1")

    libshumate-1.6.1

-   [Next](tinysparql.md "tinysparql-3.11.1")

    tinysparql-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# evolution-data-server-3.60.2 {#evolution-data-server-3.60.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Evolution Data Server {#introduction-to-evolution-data-server}

The <span class="application">Evolution Data Server</span> package provides a unified backend for programs that work with contacts, tasks, and calendar information. It was originally developed for <span class="application">Evolution</span> (hence the name), but is now used by other packages as well.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/evolution-data-server/3.60/evolution-data-server-3.60.2.tar.xz">https://download.gnome.org/sources/evolution-data-server/3.60/evolution-data-server-3.60.2.tar.xz</a>

-   Download MD5 sum: 933c4804d9d2ba99f93fc26005282a3f

-   Download size: 5.0 MB

-   Estimated disk space required: 150 (with tests)

-   Estimated build time: 0.7 SBU (With tests; both using parallelism=4)
</div>

### Evolution Data Server Dependencies

#### Required

<a class="xref" href="../general/libical.md" title="libical-4.0.2">libical-4.0.2</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>

#### Recommended

<a class="xref" href="gnome-online-accounts.md" title="gnome-online-accounts-3.58.1">gnome-online-accounts-3.58.1</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, and <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, a <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command), <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), and <a class="ulink" href="https://github.com/googlei18n/libphonenumber/">libphonenumber</a>
</div>

<div class="installation" lang="en">
## Installation of Evolution Data Server {#installation-of-evolution-data-server}

Install <span class="application">Evolution Data Server</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D SYSCONF_INSTALL_DIR=/etc  \
      -D ENABLE_VALA_BINDINGS=ON   \
      -D ENABLE_INSTALLED_TESTS=ON \
      -D WITH_OPENLDAP=OFF         \
      -D WITH_KRB5=OFF             \
      -D ENABLE_INTROSPECTION=ON   \
      -D ENABLE_GTK_DOC=OFF        \
      -D WITH_LIBDB=OFF            \
      -W no-dev -G Ninja ..        &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, test-book-client-custom-summary, is known to fail.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D ENABLE_VALA_BINDINGS=ON`*: This switch enables building the Vala bindings. Remove it if you don't have <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a> installed.

*`-D ENABLE_GTK_DOC=OFF`*: This switch disables building the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.

*`-D WITH_KRB5=OFF`*: This switch allows building this package without <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>. If you need Kerberos support in this package, for example to connect to a corporate network, change this switch from OFF to ON.

*`-D WITH_LIBDB=OFF`*: This switch allows building this package without <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated). sqlite is used for normal operation.

<code class="option">-D ENABLE_OAUTH2_WEBKITGTK4=OFF</code>: Use this switch if you did not build <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a> with GTK-4.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

To enable many of the optional dependencies, review the information from <span class="command"><strong>cmake -L CMakeLists.txt</strong></span> for the necessary parameters you must pass to the <span class="command"><strong>cmake</strong></span> command.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcamel-1.2.so, libebackend-1.2.so, libebook-1.2.so, libebook-contacts-1.2.so, libecal-2.0.so, libedata-book-1.2.so, libedata-cal-2.0.so, libedataserver-1.2.so, libedataserverui-1.2.so, libedataserverui4-1.0.so, and libetestserverutils.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/evolution-data-server, /usr/lib{,exec}/evolution-data-server, /usr/share/evolution-data-server, /usr/share/installed-tests/evolution-data-server, and /usr/share/pixmaps/evolution-data-server</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------
  <a id="libcamel-1"></a><span class="term"><code class="filename">libcamel-1.2.so</code></span>                     is the <span class="application">Evolution</span> MIME message handling library
  <a id="libebackend-1"></a><span class="term"><code class="filename">libebackend-1.2.so</code></span>               is the utility library for <span class="application">Evolution Data Server</span> Backends
  <a id="libebook-1"></a><span class="term"><code class="filename">libebook-1.2.so</code></span>                     is the client library for <span class="application">Evolution</span> address books
  <a id="libebook-contacts-1"></a><span class="term"><code class="filename">libebook-contacts-1.2.so</code></span>   is the client library for <span class="application">Evolution</span> contacts
  <a id="libecal-1"></a><span class="term"><code class="filename">libecal-1.2.so</code></span>                       is the client library for <span class="application">Evolution</span> calendars
  <a id="libedata-book-1"></a><span class="term"><code class="filename">libedata-book-1.2.so</code></span>           is the backend library for <span class="application">Evolution</span> address books
  <a id="libedata-cal-1"></a><span class="term"><code class="filename">libedata-cal-1.2.so</code></span>             is the backend library for <span class="application">Evolution</span> calendars
  <a id="libedataserver-1"></a><span class="term"><code class="filename">libedataserver-1.2.so</code></span>         is the utility library for <span class="application">Evolution Data Server</span>
  <a id="libedataserverui-3"></a><span class="term"><code class="filename">libedataserverui-3.0.so</code></span>     is the GUI utility library for <span class="application">Evolution Data Server</span>
  <a id="libedataserverui4-1"></a><span class="term"><code class="filename">libedataserverui4-1.0.so</code></span>   is the GTK-4 based GUI utility library for <span class="application">Evolution Data Server</span>
  <a id="libetestserverutils-1"></a><span class="term"><code class="filename">libetestserverutils.so</code></span>   is the server test utility library for <span class="application">Evolution Data Server</span>
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libshumate.md "libshumate-1.6.1")

    libshumate-1.6.1

-   [Next](tinysparql.md "tinysparql-3.11.1")

    tinysparql-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
