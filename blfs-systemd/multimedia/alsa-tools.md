<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-utils.md "alsa-utils-1.2.15.2")

    alsa-utils-1.2.15.2

-   [Next](alsa-firmware.md "alsa-firmware-1.2.4")

    alsa-firmware-1.2.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# alsa-tools-1.2.15 {#alsa-tools-1.2.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ALSA Tools {#introduction-to-alsa-tools}

The <span class="application">ALSA Tools</span> package contains advanced tools for certain sound cards.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.alsa-project.org/files/pub/tools/alsa-tools-1.2.15.tar.bz2">https://www.alsa-project.org/files/pub/tools/alsa-tools-1.2.15.tar.bz2</a>

-   Download MD5 sum: 8c5306b6c31e9dcaa70ac7d5ce244579

-   Download size: 1.9 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.2 SBU
</div>

### ALSA Tools Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

#### Recommended

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (to build <span class="command"><strong>hdajackretask</strong></span>), <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> (to build <span class="command"><strong>envy24control</strong></span>), and <a class="xref" href="../x/fltk.md" title="FLTK-1.4.5">FLTK-1.4.5</a> (to build <span class="command"><strong>hdspconf</strong></span> and <span class="command"><strong>hdspmixer</strong></span>)

#### Optional

<a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a> (to build <span class="command"><strong>echomixer</strong></span> and <span class="command"><strong>rmedigicontrol</strong></span>)
</div>

<div class="installation" lang="en">
## Installation of ALSA Tools {#installation-of-alsa-tools}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

<div class="orderedlist">
1.  Run the entire script as the root user (not recommended).

2.  Use the <span class="command"><strong>sudo</strong></span> command from the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package.

3.  Use <span class="command"><strong>su -c "command arguments"</strong></span> (quotes required) which will ask for the root password for every iteration of the loop.
</div>

One way to handle this situation is to create a short <span class="command"><strong>bash</strong></span> function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

```bash
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
</div>

First, start a subshell that will exit on error:

```bash
bash -e
```

Now, remove some tools that need <span class="application">Qt2 or 3</span> or <a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a>, and also two unneeded files (for the BLFS instructions below):

```bash
rm -rf qlo10k1 echomixer rmedigicontrol Makefile gitcompile
```

The <span class="application">ALSA Tools</span> package is only needed by those with advanced requirements for their sound card. The tools can be built all together at once, but if only a subset is needed, you need to <span class="command"><strong>cd</strong></span> into the directory of each tool you wish to compile and run the commands. Here, we present instructions to build all tools.

Install all <span class="application">ALSA Tools</span> by running the following commands:

```bash
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

```bash
exit
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">as10k1, cspctl, dl10k1, envy24control, hda-verb, hdajackretask, hdajacksensetest, hdspconf, hdsploader, hdspmixer, hwmixvolume, init_audigy, init_audigy_eq10, init_live, lo10k1, ld10k1, ld10k1d, mixartloader, pcxhrloader, sbiload, sscape_ctl, us428control, usx2yloader, and vxloader</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblo10k1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/hotplug, /usr/include/lo10k1, /usr/share/ld10k1, and /usr/share/sounds</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="as10k1"></a><span class="command"><span class="term"><strong>as10k1</strong></span></span>                     is an assembler for the emu10k1 DSP chip present in the Creative SB Live, PCI 512, and emu APS sound cards. It is used to make audio effects such as a flanger, chorus or reverb
  <a id="cspctl"></a><span class="command"><span class="term"><strong>cspctl</strong></span></span>                     is an SB16/AWE32 Creative Signal Processor (ASP/CSP) control program
  <a id="envy24control"></a><span class="command"><span class="term"><strong>envy24control</strong></span></span>       is a control tool for Envy24 (ice1712) based sound cards
  <a id="hdajackretask"></a><span class="command"><span class="term"><strong>hdajackretask</strong></span></span>       is a GUI to make it easy to retask your jacks - e g, turn your Mic jack into an extra Headphone, or make them both line outs and connect them to your surround receiver
  <a id="hda-verb"></a><span class="command"><span class="term"><strong>hda-verb</strong></span></span>                 is a small program to send HD-Audio commands to the given ALSA hwdep device on the hd-audio interface
  <a id="hdspconf"></a><span class="command"><span class="term"><strong>hdspconf</strong></span></span>                 is a GUI to control the Hammerfall HDSP Alsa Settings. Up to four hdsp cards are supported
  <a id="hdsploader"></a><span class="command"><span class="term"><strong>hdsploader</strong></span></span>             is used to load the firmware required by the Hammerfall HDSP sound cards
  <a id="hdspmixer"></a><span class="command"><span class="term"><strong>hdspmixer</strong></span></span>               is the Linux equivalent of the Totalmix application from RME. It is a tool to control the advanced routing features of the RME Hammerfall DSP soundcard series
  <a id="hwmixvolume"></a><span class="command"><span class="term"><strong>hwmixvolume</strong></span></span>           allows you to control the volume of individual streams on sound cards that use hardware mixing
  <a id="init_audigy_progs"></a><span class="command"><span class="term"><strong>init_audigy\</strong>*</span></span>   are tools used to initialize Creative Sound Blaster Audigy-series cards
  <a id="init_live"></a><span class="command"><span class="term"><strong>init_live</strong></span></span>               is a tool used to initialize Creative Sound Blaster Live cards
  <a id="ld10k1"></a><span class="command"><span class="term"><strong>ld10k1</strong></span></span>                     is the server of a EMU10K{1,2} patch loader for ALSA
  <a id="lo10k1"></a><span class="command"><span class="term"><strong>lo10k1</strong></span></span>                     is the client of a EMU10K{1,2} patch loader for ALSA
  <a id="dl10k1"></a><span class="command"><span class="term"><strong>dl10k1</strong></span></span>                     loads config dumps generated by <span class="command"><strong>lo10k1</strong></span> and <span class="command"><strong>ld10k1</strong></span>
  <a id="ld10k1d"></a><span class="command"><span class="term"><strong>ld10k1d</strong></span></span>                   is an init script for the <span class="command"><strong>ld10k1</strong></span> patch loader
  <a id="mixartloader"></a><span class="command"><span class="term"><strong>mixartloader</strong></span></span>         is a helper program to load the firmware binaries onto the Digigram's miXart board sound drivers. The snd-mixart module requires this program. These drivers don't work properly until the required firmware files are loaded, i.e. no PCM nor mixer devices will appear
  <a id="pcxhrloader"></a><span class="command"><span class="term"><strong>pcxhrloader</strong></span></span>           is a helper program to load the firmware binaries onto Digigram's pcxhr compatible board sound drivers. The snd-pcxhr module requires this program. These drivers don't work properly until certain firmware files are loaded, i.e. no PCM nor mixer devices will appear
  <a id="sbiload"></a><span class="command"><span class="term"><strong>sbiload</strong></span></span>                   is an OPL2/3 FM instrument loader for the ALSA sequencer
  <a id="sscape_ctl"></a><span class="command"><span class="term"><strong>sscape_ctl</strong></span></span>             is an ALSA SoundScape control utility
  <a id="us428control"></a><span class="command"><span class="term"><strong>us428control</strong></span></span>         is a Tascam US-428 control program
  <a id="usx2yloader"></a><span class="command"><span class="term"><strong>usx2yloader</strong></span></span>           is a helper program to load the 2nd Phase firmware binaries onto the Tascam USX2Y USB sound cards. It has proven to work so far for the US122, US224 and US428. The snd-usb-usx2y module requires this program
  <a id="vxloader"></a><span class="command"><span class="term"><strong>vxloader</strong></span></span>                 is a helper program to load the firmware binaries onto the Digigram's VX-board sound drivers. The snd-vx222, snd-vxpocket, and snd-vxp440 modules require this program. These drivers don't work properly until certain firmware files are loaded, i.e. no PCM nor mixer devices will appear
  -------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa-utils.md "alsa-utils-1.2.15.2")

    alsa-utils-1.2.15.2

-   [Next](alsa-firmware.md "alsa-firmware-1.2.4")

    alsa-firmware-1.2.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
