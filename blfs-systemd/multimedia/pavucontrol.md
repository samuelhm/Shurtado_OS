::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](mpg123.md "mpg123-1.33.5"){accesskey="p"}

    mpg123-1.33.5

-   [Next](pnmixer.md "pnmixer-0.7.2"){accesskey="n"}

    pnmixer-0.7.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pavucontrol}pavucontrol-6.2 {#pavucontrol-6.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to pavucontrol {#introduction-to-pavucontrol .sect2}

PulseAudio Volume Control (pavucontrol) is a simple GTK based volume control tool ("mixer") for the PulseAudio sound server. In contrast to classic mixer tools, this one allows you to control both the volume of hardware devices and of each playback stream separately.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/pulseaudio/pavucontrol/pavucontrol-6.2.tar.xz](https://www.freedesktop.org/software/pulseaudio/pavucontrol/pavucontrol-6.2.tar.xz){.ulink}

-   Download MD5 sum: d515163651b8272e500dfcac32c525dd

-   Download size: 196 KB

-   Estimated disk space required: 5.6 MB

-   Estimated build time: 0.2 SBU
:::

### pavucontrol Dependencies

#### Required

[Gtkmm-4.22.0](../x/gtkmm4.md "Gtkmm-4.22.0"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [libsigc++-3.6.0](../general/libsigc3.md "libsigc++-3.6.0"){.xref}, and [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}

### Optional

[libcanberra-0.30](libcanberra.md "libcanberra-0.30"){.xref} and [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of pavucontrol {#installation-of-pavucontrol .sect2}

Install [pavucontrol]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D lynx=disabled .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
mv /usr/share/doc/pavucontrol /usr/share/doc/pavucontrol-6.2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D lynx=disabled`*: This switch disables generating the README file in text format. Remove this switch if you want the README file in text format and have [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [pavucontrol]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/pavucontrol and /usr/share/doc/pavucontrol-6.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------------------
  []{#pavucontrol-prog}[[**pavucontrol**]{.command}]{.term}   is a GUI configuration tool for sound settings using [pulsaudio]{.application}
  ----------------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mpg123.md "mpg123-1.33.5"){accesskey="p"}

    mpg123-1.33.5

-   [Next](pnmixer.md "pnmixer-0.7.2"){accesskey="n"}

    pnmixer-0.7.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
