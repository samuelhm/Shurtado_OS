::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pm-utils.md "pm-utils-1.4.1"){accesskey="p"}

    pm-utils-1.4.1

-   [Next](raptor.md "Raptor-2.0.16"){accesskey="n"}

    Raptor-2.0.16

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#power-profiles-daemon}Power-profiles-daemon-0.30 {#power-profiles-daemon-0.30 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Power-profiles-daemon {#introduction-to-power-profiles-daemon .sect2}

The [Power-profiles-daemon]{.application} package provides a program that allows modification of the system power/behavior state. This is used on many laptops and can be used by a Desktop Environment to activate power saving or performance CPU governors through dbus. On other systems, Power-profiles-daemon can be used as a streamlined way to set the CPU governor in order to increase system performance at the cost of energy usage.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/archive/0.30/power-profiles-daemon-0.30.tar.gz](https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/archive/0.30/power-profiles-daemon-0.30.tar.gz){.ulink}

-   Download MD5 sum: b72dbed7159cbeff972e9a20ddcc7388

-   Download size: 84 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Power-profiles-daemon Dependencies

#### Required

[Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (pycairo is [**not**]{.bold} needed), and [UPower-1.91.2](upower.md "UPower-1.91.2"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, The rest are for the tests, [dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref}, [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref}, [isort](https://github.com/PyCQA/isort){.ulink}, and [mccabe](https://github.com/PyCQA/mccabe){.ulink}
:::::

::: {.kernel lang="en"}
## []{#power-profiles-daemon-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
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
:::

::: {.installation lang="en"}
## Installation of Power-profiles-daemon {#installation-of-power-profiles-daemon .sect2}

Install [Power-profiles-daemon]{.application} by running the following commands:

``` userinput
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

If you have installed the external dependencies, to test the results issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D gtk_doc=false`*: Prevents building the documentation. Remove this if you have [GTK-Doc]{.application} installed and wish to build the documentation.

*`-D tests=false`*: Prevents building the tests because they cannot be run within the boundaries of BLFS. Remove this if you have installed the external dependencies and wish to run the tests.
:::

:::::: {.configuration lang="en"}
## Configuring Power-profiles-daemon {#configuring-power-profiles-daemon .sect2}

::: {.sect3 lang="en"}
### []{#power-profiles-daemon-systemd}Systemd Unit {#systemd-unit .sect3}

To start the power-profiles-daemon on boot, enable the systemd service that was installed by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable power-profiles-daemon
```
:::

:::: {.sect3 lang="en"}
### Select a Power Profile {#select-a-power-profile .sect3}

To list all supported power profiles, issue:

``` userinput
powerprofilesctl
```

To activate a power profile (for example *`performance`*), issue:

``` userinput
powerprofilesctl set performance
```

Some desktop environments (for example GNOME and KDE) also provide a graphical interface to interact with [**power-profiles-daemon**]{.command} and activate a power profile.

The activated power profile is automatically stored in `/var/lib/power-profiles-daemon/state.ini`{.filename} and [**power-profiles-daemon**]{.command} will read it out and activate it again on the next boot if the [Systemd unit is enabled]{.phrase} as above.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

On some older systems power-profiles-daemon will appear to install and indicate correct values, but will not actually work. To check this, run **`cat /sys/devices/system/cpu/cpufreq/policy0/scaling_driver`**. If the result is not "intel_pstate" but instead "intel_cpufreq" (or similar on AMD systems), then power changes must be made manually.

To change power states manually, first check to see what governors are available with: **`cat /sys/devices/system/cpu/cpufreq/policy0/scaling_available_governors`**. Then set the desired governor as the `root`{.systemitem} user with:

``` userinput
gov=performance
for CPUFREQ in /sys/devices/system/cpu/cpufreq/policy*/scaling_governor; do
  echo -n ${gov} > ${CPUFREQ}
done
```

If you are setting the scaling_governor to "performance", be careful about heat and battery issues with extended use.
:::
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [powerprofilesctl]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------
  []{#powerprofilesctl}[[**powerprofilesctl**]{.command}]{.term}   This allows the user to set the power governor of the CPU.
  ---------------------------------------------------------------- ------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](pm-utils.md "pm-utils-1.4.1"){accesskey="p"}

    pm-utils-1.4.1

-   [Next](raptor.md "Raptor-2.0.16"){accesskey="n"}

    Raptor-2.0.16

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
