::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-utils.md "alsa-utils-1.2.15.2"){accesskey="p"}

    alsa-utils-1.2.15.2

-   [Next](alsa-firmware.md "alsa-firmware-1.2.4"){accesskey="n"}

    alsa-firmware-1.2.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#alsa-tools}alsa-tools-1.2.15 {#alsa-tools-1.2.15 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ALSA Tools {#introduction-to-alsa-tools .sect2}

The [ALSA Tools]{.application} package contains advanced tools for certain sound cards.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.alsa-project.org/files/pub/tools/alsa-tools-1.2.15.tar.bz2](https://www.alsa-project.org/files/pub/tools/alsa-tools-1.2.15.tar.bz2){.ulink}

-   Download MD5 sum: 8c5306b6c31e9dcaa70ac7d5ce244579

-   Download size: 1.9 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.2 SBU
:::

### ALSA Tools Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}

#### Recommended

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (to build [**hdajackretask**]{.command}), [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} (to build [**envy24control**]{.command}), and [FLTK-1.4.5](../x/fltk.md "FLTK-1.4.5"){.xref} (to build [**hdspconf**]{.command} and [**hdspmixer**]{.command})

#### Optional

[GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink} (to build [**echomixer**]{.command} and [**rmedigicontrol**]{.command})
:::::

::::: {.installation lang="en"}
## Installation of ALSA Tools {#installation-of-alsa-tools .sect2}

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

::: orderedlist
1.  Run the entire script as the root user (not recommended).

2.  Use the [**sudo**]{.command} command from the [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} package.

3.  Use [**su -c "command arguments"**]{.command} (quotes required) which will ask for the root password for every iteration of the loop.
:::

One way to handle this situation is to create a short [**bash**]{.command} function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

``` userinput
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
::::

First, start a subshell that will exit on error:

``` userinput
bash -e
```

Now, remove some tools that need [Qt2 or 3]{.application} or [GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink}, and also two unneeded files (for the BLFS instructions below):

``` userinput
rm -rf qlo10k1 echomixer rmedigicontrol Makefile gitcompile
```

The [ALSA Tools]{.application} package is only needed by those with advanced requirements for their sound card. The tools can be built all together at once, but if only a subset is needed, you need to [**cd**]{.command} into the directory of each tool you wish to compile and run the commands. Here, we present instructions to build all tools.

Install all [ALSA Tools]{.application} by running the following commands:

``` userinput
for tool in *
do
  case $tool in
    seq )
      tool_dir=seq/sbiload
    ;;
    * )
      tool_dir=$tool
    ;;
  esac

  pushd $tool_dir
    ./configure --prefix=/usr
    make
    as_root make install
    as_root /sbin/ldconfig
  popd

done
unset tool tool_dir
```

Finally, exit the shell that was started earlier:

``` userinput
exit
```
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [as10k1, cspctl, dl10k1, envy24control, hda-verb, hdajackretask, hdajacksensetest, hdspconf, hdsploader, hdspmixer, hwmixvolume, init_audigy, init_audigy_eq10, init_live, lo10k1, ld10k1, ld10k1d, mixartloader, pcxhrloader, sbiload, sscape_ctl, us428control, usx2yloader, and vxloader]{.segbody}
:::

::: seg
**Installed Library:** [liblo10k1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/hotplug, /usr/include/lo10k1, /usr/share/ld10k1, and /usr/share/sounds]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#as10k1}[[**as10k1**]{.command}]{.term}                     is an assembler for the emu10k1 DSP chip present in the Creative SB Live, PCI 512, and emu APS sound cards. It is used to make audio effects such as a flanger, chorus or reverb
  []{#cspctl}[[**cspctl**]{.command}]{.term}                     is an SB16/AWE32 Creative Signal Processor (ASP/CSP) control program
  []{#envy24control}[[**envy24control**]{.command}]{.term}       is a control tool for Envy24 (ice1712) based sound cards
  []{#hdajackretask}[[**hdajackretask**]{.command}]{.term}       is a GUI to make it easy to retask your jacks - e g, turn your Mic jack into an extra Headphone, or make them both line outs and connect them to your surround receiver
  []{#hda-verb}[[**hda-verb**]{.command}]{.term}                 is a small program to send HD-Audio commands to the given ALSA hwdep device on the hd-audio interface
  []{#hdspconf}[[**hdspconf**]{.command}]{.term}                 is a GUI to control the Hammerfall HDSP Alsa Settings. Up to four hdsp cards are supported
  []{#hdsploader}[[**hdsploader**]{.command}]{.term}             is used to load the firmware required by the Hammerfall HDSP sound cards
  []{#hdspmixer}[[**hdspmixer**]{.command}]{.term}               is the Linux equivalent of the Totalmix application from RME. It is a tool to control the advanced routing features of the RME Hammerfall DSP soundcard series
  []{#hwmixvolume}[[**hwmixvolume**]{.command}]{.term}           allows you to control the volume of individual streams on sound cards that use hardware mixing
  []{#init_audigy_progs}[[**init_audigy\***]{.command}]{.term}   are tools used to initialize Creative Sound Blaster Audigy-series cards
  []{#init_live}[[**init_live**]{.command}]{.term}               is a tool used to initialize Creative Sound Blaster Live cards
  []{#ld10k1}[[**ld10k1**]{.command}]{.term}                     is the server of a EMU10K{1,2} patch loader for ALSA
  []{#lo10k1}[[**lo10k1**]{.command}]{.term}                     is the client of a EMU10K{1,2} patch loader for ALSA
  []{#dl10k1}[[**dl10k1**]{.command}]{.term}                     loads config dumps generated by [**lo10k1**]{.command} and [**ld10k1**]{.command}
  []{#ld10k1d}[[**ld10k1d**]{.command}]{.term}                   is an init script for the [**ld10k1**]{.command} patch loader
  []{#mixartloader}[[**mixartloader**]{.command}]{.term}         is a helper program to load the firmware binaries onto the Digigram's miXart board sound drivers. The snd-mixart module requires this program. These drivers don't work properly until the required firmware files are loaded, i.e. no PCM nor mixer devices will appear
  []{#pcxhrloader}[[**pcxhrloader**]{.command}]{.term}           is a helper program to load the firmware binaries onto Digigram's pcxhr compatible board sound drivers. The snd-pcxhr module requires this program. These drivers don't work properly until certain firmware files are loaded, i.e. no PCM nor mixer devices will appear
  []{#sbiload}[[**sbiload**]{.command}]{.term}                   is an OPL2/3 FM instrument loader for the ALSA sequencer
  []{#sscape_ctl}[[**sscape_ctl**]{.command}]{.term}             is an ALSA SoundScape control utility
  []{#us428control}[[**us428control**]{.command}]{.term}         is a Tascam US-428 control program
  []{#usx2yloader}[[**usx2yloader**]{.command}]{.term}           is a helper program to load the 2nd Phase firmware binaries onto the Tascam USX2Y USB sound cards. It has proven to work so far for the US122, US224 and US428. The snd-usb-usx2y module requires this program
  []{#vxloader}[[**vxloader**]{.command}]{.term}                 is a helper program to load the firmware binaries onto the Digigram's VX-board sound drivers. The snd-vx222, snd-vxpocket, and snd-vxp440 modules require this program. These drivers don't work properly until certain firmware files are loaded, i.e. no PCM nor mixer devices will appear
  -------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](alsa-utils.md "alsa-utils-1.2.15.2"){accesskey="p"}

    alsa-utils-1.2.15.2

-   [Next](alsa-firmware.md "alsa-firmware-1.2.4"){accesskey="n"}

    alsa-firmware-1.2.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
