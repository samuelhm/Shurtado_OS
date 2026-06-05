::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa.md "ALSA"){accesskey="p"}

    ALSA

-   [Next](alsa-plugins.md "alsa-plugins-1.2.12"){accesskey="n"}

    alsa-plugins-1.2.12

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#alsa-lib}alsa-lib-1.2.16 {#alsa-lib-1.2.16 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to ALSA Library {#introduction-to-alsa-library .sect2}

The [ALSA Library]{.application} package contains the ALSA library used by programs (including [ALSA Utilities]{.application}) requiring access to the ALSA sound interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.16.tar.bz2](https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.16.tar.bz2){.ulink}

-   Download MD5 sum: 2207974c4dec721779c01b2e1d43176d

-   Download size: 1.1 MB

-   Estimated disk space required: 82 MB (with tests and docs)

-   Estimated build time: 0.3 SBU (with tests and docs)
:::

### Additional Downloads

::: itemizedlist
-   Recommended file: [https://www.alsa-project.org/files/pub/lib/alsa-ucm-conf-1.2.16.tar.bz2](https://www.alsa-project.org/files/pub/lib/alsa-ucm-conf-1.2.16.tar.bz2){.ulink}
:::

### ALSA Library Dependencies

#### Recommended (Runtime)

[[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the recommended runtime dependency is not installed, you may need to run any application requiring ALSA library as the `root`{.systemitem} user or a user in the `audio`{.systemitem} group.
:::

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [Python2](https://www.python.org/downloads/release/python-2718/){.ulink}
:::::::

::: {.kernel lang="en"}
## []{#alsa-lib-kernel}Kernel Configuration {#kernel-configuration .sect2}

If needed, enable the following options in the kernel configuration and recompile the kernel:

``` screen
Device Drivers --->
  <*/M> Sound card support --->                                          [SOUND]
    # Select settings and drivers appropriate for your hardware
    # in the submenu:
    <*/M> Advanced Linux Sound Architecture --->                           [SND]
```

In the Device Drivers ⇒ Sound card support ⇒ Advanced Linux Sound Architecture section of the kernel configuration, select the settings and drivers appropriate for your hardware. If necessary, recompile and install your new kernel.
:::

::: {.installation lang="en"}
## Installation of ALSA Library {#installation-of-alsa-library .sect2}

Install [ALSA Library]{.application} by running the following commands:

``` userinput
./configure &&
make
```

If you have [Doxygen]{.application} installed and you wish to build the library API documentation, run the following commands from the top-level directory of the source tree:

``` userinput
make doc
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user, install the package and recommended configuration files:

``` root
make install &&
tar -C /usr/share/alsa --strip-components=1 -xf ../alsa-ucm-conf-1.2.16.tar.bz2
```

To install the API documentation, run the following command as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/doc/alsa-lib-1.2.16/html/search &&
install -v -m644 doc/doxygen/html/*.* \
                /usr/share/doc/alsa-lib-1.2.16/html &&
install -v -m644 doc/doxygen/html/search/* \
                /usr/share/doc/alsa-lib-1.2.16/html/search
```
:::

::::: {.configuration lang="en"}
## Configuring ALSA Library {#configuring-alsa-library .sect2}

::: {.sect3 lang="en"}
### []{#alsa-lib-config}Config Files {#config-files .sect3}

`~/.asoundrc`{.filename} and `/etc/asound.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The default `alsa.conf`{.filename} is adequate for most installations. For extra functionality and/or advanced control of your sound device, you may need to create additional configuration files. For information on the available configuration parameters, visit [https://www.alsa-project.org/main/index.php/Asoundrc](https://www.alsa-project.org/main/index.php/Asoundrc){.ulink}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [aserver]{.segbody}
:::

::: seg
**Installed Library:** [libasound.so and libatopology.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/alsa, /usr/share/alsa and /usr/share/doc/alsa-lib-1.2.16]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  []{#aserver}[[**aserver**]{.command}]{.term}             is the ALSA server
  []{#libasound}[`libasound.so`{.filename}]{.term}         contains the ALSA API functions
  []{#libatopology}[`libatopology.so`{.filename}]{.term}   contains API functions for the ALSA topologies
  -------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](alsa.md "ALSA"){accesskey="p"}

    ALSA

-   [Next](alsa-plugins.md "alsa-plugins-1.2.12"){accesskey="n"}

    alsa-plugins-1.2.12

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
