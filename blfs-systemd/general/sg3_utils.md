::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pciutils.md "pciutils-3.15.0"){accesskey="p"}

    pciutils-3.15.0

-   [Next](sysmond.md "sysmond-1.0.1"){accesskey="n"}

    sysmond-1.0.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sg3_utils}sg3_utils-1.48 {#sg3_utils-1.48 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to sg3_utils {#introduction-to-sg3_utils .sect2}

The [sg3_utils]{.application} package contains low level utilities for devices that use a SCSI command set. Apart from SCSI parallel interface (SPI) devices, the SCSI command set is used by ATAPI devices (CD/DVDs and tapes), USB mass storage devices, Fibre Channel disks, IEEE 1394 storage devices (that use the "SBP" protocol), SAS, iSCSI and FCoE devices (amongst others).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sg.danny.cz/sg/p/sg3_utils-1.48.tar.xz](https://sg.danny.cz/sg/p/sg3_utils-1.48.tar.xz){.ulink}

-   Download MD5 sum: 0024393d2d2942cc081ce613d98db68a

-   Download size: 1.2 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of sg3_utils {#installation-of-sg3_utils .sect2}

Install [sg3_utils]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [rescan-scsi-bus.sh, scsi_logging_level, scsi_mandat, scsi_readcap, scsi_ready, scsi_satl, scsi_start, scsi_stop, scsi_temperature, sg_bg_ctl, sg_compare_and_write, sg_copy_results, sg_dd, sg_decode_sense, sg_emc_trespass, sg_format, sg_get_config, sg_get_lba_status, sg_ident, sg_inq, sg_logs, sg_luns, sg_map, sg_map26, sg_modes, sg_opcodes, sg_persist, sg_prevent, sg_raw, sg_rbuf, sg_rdac, sg_read, sg_read_attr, sg_read_block_limits, sg_read_buffer, sg_read_long, sg_readcap, sg_reassign, sg_referrals, sg_rep_pip, sg_rep_zones, sg_requests, sg_reset, sg_reset_wp, sg_rmsn, sg_rtpg, sg_safte, sg_sanitize, sg_sat_identify, sg_sat_phy_event, sg_sat_read_gplog, sg_sat_set_features, sg_scan, sg_seek, sg_senddiag, sg_ses, sg_ses_microcode, sg_start, sg_stpg, sg_stream_ctl, sg_sync, sg_test_rwbuf, sg_timestamp, sg_turs, sg_unmap, sg_verify, sg_vpd, sg_wr_mode, sg_write_buffer, sg_write_long, sg_write_same, sg_write_verify, sg_write_x, sg_xcopy, sg_zone, sginfo, sgm_dd, and sgp_dd]{.segbody}
:::

::: seg
**Installed Library:** [libsgutils2.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#rescan-scsi-bus.sh}[[**rescan-scsi-bus.sh**]{.command}]{.term}       adds or removes SCSI devices without having to reboot
  []{#scsi_logging_level}[[**scsi_logging_level**]{.command}]{.term}       accesses Linux SCSI logging level information
  []{#scsi_mandat}[[**scsi_mandat**]{.command}]{.term}                     checks SCSI device support for mandatory commands
  []{#scsi_readcap}[[**scsi_readcap**]{.command}]{.term}                   does the SCSI READ CAPACITY command on disks
  []{#scsi_ready}[[**scsi_ready**]{.command}]{.term}                       does the SCSI TEST UNIT READY on devices
  []{#scsi_satl}[[**scsi_satl**]{.command}]{.term}                         checks for SCSI to ATA Translation (SAT) device support
  []{#scsi_start}[[**scsi_start**]{.command}]{.term}                       starts one or more SCSI disks
  []{#scsi_stop}[[**scsi_stop**]{.command}]{.term}                         stops one or more SCSI disks
  []{#scsi_temperature}[[**scsi_temperature**]{.command}]{.term}           fetches the temperature of a SCSI device
  []{#sg_bg_ctl}[[**sg_bg_ctl**]{.command}]{.term}                         performs a SCSI BACKGROUND CONTROL command on a device to perform "advanced background operations"
  []{#sg_compare_and_write}[[**sg_compare_and_write**]{.command}]{.term}   sends the SCSI COMPARE AND WRITE command to device
  []{#sg_copy_results}[[**sg_copy_results**]{.command}]{.term}             sends the SCSI RECEIVE COPY RESULTS command (XCOPY related)
  []{#sg_dd}[[**sg_dd**]{.command}]{.term}                                 copies data to and from files and devices. Specialised for devices that understand the SCSI command set
  []{#sg_decode_sense}[[**sg_decode_sense**]{.command}]{.term}             takes SCSI sense data in binary or as a sequence of ASCII hexadecimal bytes and decodes it
  []{#sg_emc_trespass}[[**sg_emc_trespass**]{.command}]{.term}             changes ownership of a LUN from another Service-Processor to this one
  []{#sg_format}[[**sg_format**]{.command}]{.term}                         formats or resizes a SCSI disk (perhaps changes its block size)
  []{#sg_get_config}[[**sg_get_config**]{.command}]{.term}                 sends a SCSI GET CONFIGURATION command (MMC-4 +)
  []{#sg_get_elem_status}[[**sg_get_elem_status**]{.command}]{.term}       sends a SCSI GET PHYSICAL ELEMENT STATUS command to a device
  []{#sg_get_lba_status}[[**sg_get_lba_status**]{.command}]{.term}         sends the SCSI GET LBA STATUS command
  []{#sg_ident}[[**sg_ident**]{.command}]{.term}                           sends a SCSI REPORT or SET IDENTIFYING INFORMATION command
  []{#sginfo}[[**sginfo**]{.command}]{.term}                               access mode page information for a SCSI (or ATAPI) device
  []{#sg_inq}[[**sg_inq**]{.command}]{.term}                               sends a SCSI INQUIRY or ATA IDENTIFY (PACKET) DEVICE command and outputs the response
  []{#sg_logs}[[**sg_logs**]{.command}]{.term}                             access log pages with SCSI LOG SENSE command
  []{#sg_luns}[[**sg_luns**]{.command}]{.term}                             sends the SCSI REPORT LUNS command
  []{#sg_map}[[**sg_map**]{.command}]{.term}                               displays mapping between linux sg and other SCSI devices
  []{#sg_map26}[[**sg_map26**]{.command}]{.term}                           maps a special file to a SCSI generic (sg) device (or vice versa)
  []{#sgm_dd}[[**sgm_dd**]{.command}]{.term}                               copies data to and from files and devices. Specialized for devices that understand the SCSI command set and does memory mapped transfers from sg devices
  []{#sg_modes}[[**sg_modes**]{.command}]{.term}                           reads mode pages with the SCSI MODE SENSE command
  []{#sg_opcodes}[[**sg_opcodes**]{.command}]{.term}                       reports information on supported SCSI commands or task management functions
  []{#sgp_dd}[[**sgp_dd**]{.command}]{.term}                               copies data to and from files and devices. Specialized for devices that understand the SCSI command set
  []{#sg_persist}[[**sg_persist**]{.command}]{.term}                       sends a SCSI PERSISTENT RESERVE (IN or OUT) command to manipulate registrations and reservations
  []{#sg_prevent}[[**sg_prevent**]{.command}]{.term}                       sends a SCSI PREVENT ALLOW MEDIUM REMOVAL command
  []{#sg_raw}[[**sg_raw**]{.command}]{.term}                               sends an arbitrary SCSI command to a device
  []{#sg_rbuf}[[**sg_rbuf**]{.command}]{.term}                             reads data using the SCSI READ BUFFER command
  []{#sg_rdac}[[**sg_rdac**]{.command}]{.term}                             displays or modifies the RDAC Redundant Controller Page
  []{#sg_read}[[**sg_read**]{.command}]{.term}                             reads blocks of data continually from the same offset
  []{#sg_read_attr}[[**sg_read_attr**]{.command}]{.term}                   performs a SCSI READ ATTRIBUTE command on a device
  []{#sg_read_block_limits}[[**sg_read_block_limits**]{.command}]{.term}   sends a SCSI READ BLOCK LIMITS command
  []{#sg_read_buffer}[[**sg_read_buffer**]{.command}]{.term}               sends a SCSI READ BUFFER command
  []{#sg_readcap}[[**sg_readcap**]{.command}]{.term}                       sends a SCSI READ CAPACITY command
  []{#sg_read_long}[[**sg_read_long**]{.command}]{.term}                   sends a SCSI READ LONG command
  []{#sg_reassign}[[**sg_reassign**]{.command}]{.term}                     sends a SCSI REASSIGN BLOCKS command
  []{#sg_referrals}[[**sg_referrals**]{.command}]{.term}                   sends a SCSI REPORT REFERRALS command
  []{#sg_rep_pip}[[**sg_rep_pip**]{.command}]{.term}                       sends a SCSI REPORT PROVISIONING INITIALIZATION PATTERN command
  []{#sg_rep_zones}[[**sg_rep_zones**]{.command}]{.term}                   sends a SCSI REPORT ZONES command
  []{#sg_requests}[[**sg_requests**]{.command}]{.term}                     sends one or more SCSI REQUEST SENSE commands
  []{#sg_reset}[[**sg_reset**]{.command}]{.term}                           sends a SCSI device, target, bus or host reset; or checks reset state
  []{#sg_reset_wp}[[**sg_reset_wp**]{.command}]{.term}                     sends a SCSI RESET WRITE POINTER command
  []{#sg_rmsn}[[**sg_rmsn**]{.command}]{.term}                             sends a SCSI READ MEDIA SERIAL NUMBER command
  []{#sg_rtpg}[[**sg_rtpg**]{.command}]{.term}                             sends a SCSI REPORT TARGET PORT GROUPS command
  []{#sg_safte}[[**sg_safte**]{.command}]{.term}                           fetches status information from a SCSI Accessed Fault-Tolerant Enclosure (SAF-TE) device
  []{#sg_sanitize}[[**sg_sanitize**]{.command}]{.term}                     sends a SCSI SANITIZE command
  []{#sg_sat_identify}[[**sg_sat_identify**]{.command}]{.term}             sends an ATA IDENTIFY (PACKET) DEVICE command via a SCSI to ATA Translation (SAT) layer
  []{#sg_sat_phy_event}[[**sg_sat_phy_event**]{.command}]{.term}           sends an ATA READ LOG EXT command via a SAT pass through to fetch log page 11h which contains SATA phy event counters
  []{#sg_sat_read_gplog}[[**sg_sat_read_gplog**]{.command}]{.term}         sends an ATA READ LOG EXT command via a SCSI to ATA Translation (SAT) layer
  []{#sg_sat_set_features}[[**sg_sat_set_features**]{.command}]{.term}     sends an ATA SET FEATURES command via a SCSI to ATA Translation (SAT) layer
  []{#sg_scan}[[**sg_scan**]{.command}]{.term}                             does a scan of sg devices (or given SCSI/ATAPI/ATA devices) and prints the results
  []{#sg_seek}[[**sg_seek**]{.command}]{.term}                             performs a SCSI SEEK or PRE-FETCH command on a device and it's cache
  []{#sg_senddiag}[[**sg_senddiag**]{.command}]{.term}                     performs a SCSI SEND DIAGNOSTIC command
  []{#sg_ses}[[**sg_ses**]{.command}]{.term}                               sends controls and fetches the current status from a SCSI Enclosure Services (SES) device
  []{#sg_ses_microcode}[[**sg_ses_microcode**]{.command}]{.term}           sends microcode to a SCSI enclosure
  []{#sg_start}[[**sg_start**]{.command}]{.term}                           sends a SCSI START STOP UNIT command to start, stop, load or eject medium
  []{#sg_stpg}[[**sg_stpg**]{.command}]{.term}                             sends a SCSI SET TARGET PORT GROUPS command
  []{#sg_stream_ctl}[[**sg_stream_ctl**]{.command}]{.term}                 performs a SCSI STREAM CONTROL or GET STREAM STATUS command on a device to open or close an I/O stream
  []{#sg_sync}[[**sg_sync**]{.command}]{.term}                             sends a SCSI command to synchronize the cache
  []{#sg_test_rwbuf}[[**sg_test_rwbuf**]{.command}]{.term}                 tests the SCSI host adapter by issuing write and read operations on a device's buffer and calculating checksums
  []{#sg_timestamp}[[**sg_timestamp**]{.command}]{.term}                   reports or sets the timestamp on a SCSI device
  []{#sg_turs}[[**sg_turs**]{.command}]{.term}                             sends one or more SCSI TEST UNIT READY commands
  []{#sg_unmap}[[**sg_unmap**]{.command}]{.term}                           sends a SCSI UNMAP command
  []{#sg_verify}[[**sg_verify**]{.command}]{.term}                         invokes SCSI VERIFY command(s) on a block device
  []{#sg_vpd}[[**sg_vpd**]{.command}]{.term}                               fetches Vital Product Data (VPD) pages using a SCSI INQUIRY command
  []{#sg_write_buffer}[[**sg_write_buffer**]{.command}]{.term}             sends a SCSI WRITE BUFFER command
  []{#sg_write_long}[[**sg_write_long**]{.command}]{.term}                 sends a SCSI WRITE LONG command
  []{#sg_write_same}[[**sg_write_same**]{.command}]{.term}                 sends a SCSI WRITE SAME command
  []{#sg_write_verify}[[**sg_write_verify**]{.command}]{.term}             sends a SCSI WRITE AND VERIFY command
  []{#sg_write_x}[[**sg_write_x**]{.command}]{.term}                       performs SCSI WRITE commands on a device
  []{#sg_wr_mode}[[**sg_wr_mode**]{.command}]{.term}                       writes mode pages
  []{#sg_xcopy}[[**sg_xcopy**]{.command}]{.term}                           copies data to and from files and devices using SCSI EXTENDED COPY (XCOPY)
  []{#sg_zone}[[**sg_zone**]{.command}]{.term}                             performs SCSI ZONE commands on a device, such as OPEN, CLOSE, FINISH or SEQUENTIALIZE
  []{#libsgutils2}[`libsgutils2.so`{.filename}]{.term}                     contains the [sg3_utils]{.application} API functions
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](pciutils.md "pciutils-3.15.0"){accesskey="p"}

    pciutils-3.15.0

-   [Next](sysmond.md "sysmond-1.0.1"){accesskey="n"}

    sysmond-1.0.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
