<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pm-utils.md "pm-utils-1.4.1")

    pm-utils-1.4.1

-   [Next](raptor.md "Raptor-2.0.16")

    Raptor-2.0.16

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Power-profiles-daemon-0.30 {#power-profiles-daemon-0.30}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Power-profiles-daemon {#introduction-to-power-profiles-daemon}

The <span class="application">Power-profiles-daemon</span> package provides a program that allows modification of the system power/behavior state. This is used on many laptops and can be used by a Desktop Environment to activate power saving or performance CPU governors through dbus. On other systems, Power-profiles-daemon can be used as a streamlined way to set the CPU governor in order to increase system performance at the cost of energy usage.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/archive/0.30/power-profiles-daemon-0.30.tar.gz">https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/archive/0.30/power-profiles-daemon-0.30.tar.gz</a>

-   Download MD5 sum: b72dbed7159cbeff972e9a20ddcc7388

-   Download size: 84 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Power-profiles-daemon Dependencies

#### Required

<a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (pycairo is <span class="bold"><strong>not</strong></span> needed), and <a class="xref" href="upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, The rest are for the tests, <a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a>, <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a>, <a class="ulink" href="https://github.com/PyCQA/isort">isort</a>, and <a class="ulink" href="https://github.com/PyCQA/mccabe">mccabe</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
Power management and ACPI options --->
  CPU Frequency scaling --->
    -*-   CPU Frequency scaling                                       [CPU_FREQ]
    -*-     'performance' governor                    [CPU_FREQ_GOV_PERFORMANCE]
    <*/M>   'powersave' governor                        [CPU_FREQ_GOV_POWERSAVE]
    # Select if CPU is Intel:
    [ /*]   Intel P state control                             [X86_INTEL_PSTATE]
    # Select if CPU is AMD:
    [ /*]   AMD Processor P-State driver                        [X86_AMD_PSTATE]

Device Drivers --->
  # Some drivers under this submenu provide "platform profile" support
  # and power-profiles-daemon can take advantage from platform profiles;
  # select a driver if suitable for your platform:
  [ /*] X86 Platform Specific Device Drivers --->         [X86_PLATFORM_DEVICES]
```

Select the appropriate sub-options that appear when the above options are selected. As much as possible, the layout should be the same as in kernel configuration menus.
</div>

<div class="installation" lang="en">
## Installation of Power-profiles-daemon {#installation-of-power-profiles-daemon}

Install <span class="application">Power-profiles-daemon</span> by running the following commands:

```bash
mkdir build &&
cd build &&

meson setup                \
      --prefix=/usr        \
      --buildtype=release  \
      -D gtk_doc=false     \
      -D tests=false       \
      .. &&
ninja
```

If you have installed the external dependencies, to test the results issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D gtk_doc=false`*: Prevents building the documentation. Remove this if you have <span class="application">GTK-Doc</span> installed and wish to build the documentation.

*`-D tests=false`*: Prevents building the tests because they cannot be run within the boundaries of BLFS. Remove this if you have installed the external dependencies and wish to run the tests.
</div>

<div class="configuration" lang="en">
## Configuring Power-profiles-daemon {#configuring-power-profiles-daemon}

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the power-profiles-daemon on boot, enable the systemd service that was installed by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable power-profiles-daemon
```
</div>

<div class="sect3" lang="en">
### Select a Power Profile {#select-a-power-profile}

To list all supported power profiles, issue:

```bash
powerprofilesctl
```

To activate a power profile (for example *`performance`*), issue:

```bash
powerprofilesctl set performance
```

Some desktop environments (for example GNOME and KDE) also provide a graphical interface to interact with <span class="command"><strong>power-profiles-daemon</strong></span> and activate a power profile.

The activated power profile is automatically stored in <code class="filename">/var/lib/power-profiles-daemon/state.ini</code> and <span class="command"><strong>power-profiles-daemon</strong></span> will read it out and activate it again on the next boot if the <span class="phrase">Systemd unit is enabled</span> as above.

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

On some older systems power-profiles-daemon will appear to install and indicate correct values, but will not actually work. To check this, run **`cat /sys/devices/system/cpu/cpufreq/policy0/scaling_driver`**. If the result is not "intel_pstate" but instead "intel_cpufreq" (or similar on AMD systems), then power changes must be made manually.

To change power states manually, first check to see what governors are available with: **`cat /sys/devices/system/cpu/cpufreq/policy0/scaling_available_governors`**. Then set the desired governor as the <code class="systemitem">root</code> user with:

```bash
gov=performance
for CPUFREQ in /sys/devices/system/cpu/cpufreq/policy*/scaling_governor; do
  echo -n ${gov} > ${CPUFREQ}
done
```

If you are setting the scaling_governor to "performance", be careful about heat and battery issues with extended use.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">powerprofilesctl</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------
  <a id="powerprofilesctl"></a><span class="command"><span class="term"><strong>powerprofilesctl</strong></span></span>   This allows the user to set the power governor of the CPU.
  ---------------------------------------------------------------- ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pm-utils.md "pm-utils-1.4.1")

    pm-utils-1.4.1

-   [Next](raptor.md "Raptor-2.0.16")

    Raptor-2.0.16

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
