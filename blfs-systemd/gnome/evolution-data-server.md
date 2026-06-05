::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libshumate.md "libshumate-1.6.1"){accesskey="p"}

    libshumate-1.6.1

-   [Next](tinysparql.md "tinysparql-3.11.1"){accesskey="n"}

    tinysparql-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#evolution-data-server}evolution-data-server-3.60.2 {#evolution-data-server-3.60.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Evolution Data Server {#introduction-to-evolution-data-server .sect2}

The [Evolution Data Server]{.application} package provides a unified backend for programs that work with contacts, tasks, and calendar information. It was originally developed for [Evolution]{.application} (hence the name), but is now used by other packages as well.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/evolution-data-server/3.60/evolution-data-server-3.60.2.tar.xz](https://download.gnome.org/sources/evolution-data-server/3.60/evolution-data-server-3.60.2.tar.xz){.ulink}

-   Download MD5 sum: 933c4804d9d2ba99f93fc26005282a3f

-   Download size: 5.0 MB

-   Estimated disk space required: 150 (with tests)

-   Estimated build time: 0.7 SBU (With tests; both using parallelism=4)
:::

### Evolution Data Server Dependencies

#### Required

[libical-4.0.2](../general/libical.md "libical-4.0.2"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, and [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}

#### Recommended

[gnome-online-accounts-3.58.1](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, and [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, a [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command), [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), and [libphonenumber](https://github.com/googlei18n/libphonenumber/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Evolution Data Server {#installation-of-evolution-data-server .sect2}

Install [Evolution Data Server]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**ninja test**]{.command}. One test, test-book-client-custom-summary, is known to fail.
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D ENABLE_VALA_BINDINGS=ON`*: This switch enables building the Vala bindings. Remove it if you don't have [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref} installed.

*`-D ENABLE_GTK_DOC=OFF`*: This switch disables building the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.

*`-D WITH_KRB5=OFF`*: This switch allows building this package without [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}. If you need Kerberos support in this package, for example to connect to a corporate network, change this switch from OFF to ON.

*`-D WITH_LIBDB=OFF`*: This switch allows building this package without [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated). sqlite is used for normal operation.

`-D ENABLE_OAUTH2_WEBKITGTK4=OFF`{.option}: Use this switch if you did not build [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref} with GTK-4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

To enable many of the optional dependencies, review the information from [**cmake -L CMakeLists.txt**]{.command} for the necessary parameters you must pass to the [**cmake**]{.command} command.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libcamel-1.2.so, libebackend-1.2.so, libebook-1.2.so, libebook-contacts-1.2.so, libecal-2.0.so, libedata-book-1.2.so, libedata-cal-2.0.so, libedataserver-1.2.so, libedataserverui-1.2.so, libedataserverui4-1.0.so, and libetestserverutils.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/evolution-data-server, /usr/lib{,exec}/evolution-data-server, /usr/share/evolution-data-server, /usr/share/installed-tests/evolution-data-server, and /usr/share/pixmaps/evolution-data-server]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------
  []{#libcamel-1}[`libcamel-1.2.so`{.filename}]{.term}                     is the [Evolution]{.application} MIME message handling library
  []{#libebackend-1}[`libebackend-1.2.so`{.filename}]{.term}               is the utility library for [Evolution Data Server]{.application} Backends
  []{#libebook-1}[`libebook-1.2.so`{.filename}]{.term}                     is the client library for [Evolution]{.application} address books
  []{#libebook-contacts-1}[`libebook-contacts-1.2.so`{.filename}]{.term}   is the client library for [Evolution]{.application} contacts
  []{#libecal-1}[`libecal-1.2.so`{.filename}]{.term}                       is the client library for [Evolution]{.application} calendars
  []{#libedata-book-1}[`libedata-book-1.2.so`{.filename}]{.term}           is the backend library for [Evolution]{.application} address books
  []{#libedata-cal-1}[`libedata-cal-1.2.so`{.filename}]{.term}             is the backend library for [Evolution]{.application} calendars
  []{#libedataserver-1}[`libedataserver-1.2.so`{.filename}]{.term}         is the utility library for [Evolution Data Server]{.application}
  []{#libedataserverui-3}[`libedataserverui-3.0.so`{.filename}]{.term}     is the GUI utility library for [Evolution Data Server]{.application}
  []{#libedataserverui4-1}[`libedataserverui4-1.0.so`{.filename}]{.term}   is the GTK-4 based GUI utility library for [Evolution Data Server]{.application}
  []{#libetestserverutils-1}[`libetestserverutils.so`{.filename}]{.term}   is the server test utility library for [Evolution Data Server]{.application}
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libshumate.md "libshumate-1.6.1"){accesskey="p"}

    libshumate-1.6.1

-   [Next](tinysparql.md "tinysparql-3.11.1"){accesskey="n"}

    tinysparql-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
