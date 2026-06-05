<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](qtwebengine.md "QtWebEngine-6.11.1")

    QtWebEngine-6.11.1

-   [Next](vulkan-headers.md "Vulkan-Headers-1.4.350.0")

    Vulkan-Headers-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# startup-notification-0.12 {#startup-notification-0.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to startup-notification {#introduction-to-startup-notification}

The <span class="application">startup-notification</span> package contains <code class="filename">startup-notification</code> libraries. These are useful for building a consistent manner to notify the user through the cursor that the application is loading.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz">https://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz</a>

-   Download MD5 sum: 2cd77326d4dcaed9a5a23a1232fb38e9

-   Download size: 347 KB

-   Estimated disk space required: 4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### startup-notification Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a> and <a class="xref" href="xcb-util.md" title="xcb-util-0.4.1">xcb-util-0.4.1</a>
</div>

<div class="installation" lang="en">
## Installation of startup-notification {#installation-of-startup-notification}

Install <span class="application">startup-notification</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 -D doc/startup-notification.txt \
    /usr/share/doc/startup-notification-0.12/startup-notification.txt
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libstartup-notification-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/startup-notification-1.0 and /usr/share/doc/startup-notification-0.12</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libstartup-notification-1"></a><span class="term"><code class="filename">libstartup-notification-1.so</code></span>   provides the functions to assist applications in communicating with the cursor system to provide feedback to the user that the application is loading
  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qtwebengine.md "QtWebEngine-6.11.1")

    QtWebEngine-6.11.1

-   [Next](vulkan-headers.md "Vulkan-Headers-1.4.350.0")

    Vulkan-Headers-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
