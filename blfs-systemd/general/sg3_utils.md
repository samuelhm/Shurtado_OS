<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pciutils.md "pciutils-3.15.0")

    pciutils-3.15.0

-   [Next](sysmond.md "sysmond-1.0.1")

    sysmond-1.0.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sg3_utils-1.48 {#sg3_utils-1.48}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sg3_utils {#introduction-to-sg3_utils}

The <span class="application">sg3_utils</span> package contains low level utilities for devices that use a SCSI command set. Apart from SCSI parallel interface (SPI) devices, the SCSI command set is used by ATAPI devices (CD/DVDs and tapes), USB mass storage devices, Fibre Channel disks, IEEE 1394 storage devices (that use the "SBP" protocol), SAS, iSCSI and FCoE devices (amongst others).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sg.danny.cz/sg/p/sg3_utils-1.48.tar.xz">https://sg.danny.cz/sg/p/sg3_utils-1.48.tar.xz</a>

-   Download MD5 sum: 0024393d2d2942cc081ce613d98db68a

-   Download size: 1.2 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of sg3_utils {#installation-of-sg3_utils}

Install <span class="application">sg3_utils</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Programs:** <span class="segbody">rescan-scsi-bus.sh, scsi_logging_level, scsi_mandat, scsi_readcap, scsi_ready, scsi_satl, scsi_start, scsi_stop, scsi_temperature, sg_bg_ctl, sg_compare_and_write, sg_copy_results, sg_dd, sg_decode_sense, sg_emc_trespass, sg_format, sg_get_config, sg_get_lba_status, sg_ident, sg_inq, sg_logs, sg_luns, sg_map, sg_map26, sg_modes, sg_opcodes, sg_persist, sg_prevent, sg_raw, sg_rbuf, sg_rdac, sg_read, sg_read_attr, sg_read_block_limits, sg_read_buffer, sg_read_long, sg_readcap, sg_reassign, sg_referrals, sg_rep_pip, sg_rep_zones, sg_requests, sg_reset, sg_reset_wp, sg_rmsn, sg_rtpg, sg_safte, sg_sanitize, sg_sat_identify, sg_sat_phy_event, sg_sat_read_gplog, sg_sat_set_features, sg_scan, sg_seek, sg_senddiag, sg_ses, sg_ses_microcode, sg_start, sg_stpg, sg_stream_ctl, sg_sync, sg_test_rwbuf, sg_timestamp, sg_turs, sg_unmap, sg_verify, sg_vpd, sg_wr_mode, sg_write_buffer, sg_write_long, sg_write_same, sg_write_verify, sg_write_x, sg_xcopy, sg_zone, sginfo, sgm_dd, and sgp_dd</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsgutils2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="rescan-scsi-bus.sh"></a><span class="command"><span class="term"><strong>rescan-scsi-bus.sh</strong></span></span>       adds or removes SCSI devices without having to reboot
  <a id="scsi_logging_level"></a><span class="command"><span class="term"><strong>scsi_logging_level</strong></span></span>       accesses Linux SCSI logging level information
  <a id="scsi_mandat"></a><span class="command"><span class="term"><strong>scsi_mandat</strong></span></span>                     checks SCSI device support for mandatory commands
  <a id="scsi_readcap"></a><span class="command"><span class="term"><strong>scsi_readcap</strong></span></span>                   does the SCSI READ CAPACITY command on disks
  <a id="scsi_ready"></a><span class="command"><span class="term"><strong>scsi_ready</strong></span></span>                       does the SCSI TEST UNIT READY on devices
  <a id="scsi_satl"></a><span class="command"><span class="term"><strong>scsi_satl</strong></span></span>                         checks for SCSI to ATA Translation (SAT) device support
  <a id="scsi_start"></a><span class="command"><span class="term"><strong>scsi_start</strong></span></span>                       starts one or more SCSI disks
  <a id="scsi_stop"></a><span class="command"><span class="term"><strong>scsi_stop</strong></span></span>                         stops one or more SCSI disks
  <a id="scsi_temperature"></a><span class="command"><span class="term"><strong>scsi_temperature</strong></span></span>           fetches the temperature of a SCSI device
  <a id="sg_bg_ctl"></a><span class="command"><span class="term"><strong>sg_bg_ctl</strong></span></span>                         performs a SCSI BACKGROUND CONTROL command on a device to perform "advanced background operations"
  <a id="sg_compare_and_write"></a><span class="command"><span class="term"><strong>sg_compare_and_write</strong></span></span>   sends the SCSI COMPARE AND WRITE command to device
  <a id="sg_copy_results"></a><span class="command"><span class="term"><strong>sg_copy_results</strong></span></span>             sends the SCSI RECEIVE COPY RESULTS command (XCOPY related)
  <a id="sg_dd"></a><span class="command"><span class="term"><strong>sg_dd</strong></span></span>                                 copies data to and from files and devices. Specialised for devices that understand the SCSI command set
  <a id="sg_decode_sense"></a><span class="command"><span class="term"><strong>sg_decode_sense</strong></span></span>             takes SCSI sense data in binary or as a sequence of ASCII hexadecimal bytes and decodes it
  <a id="sg_emc_trespass"></a><span class="command"><span class="term"><strong>sg_emc_trespass</strong></span></span>             changes ownership of a LUN from another Service-Processor to this one
  <a id="sg_format"></a><span class="command"><span class="term"><strong>sg_format</strong></span></span>                         formats or resizes a SCSI disk (perhaps changes its block size)
  <a id="sg_get_config"></a><span class="command"><span class="term"><strong>sg_get_config</strong></span></span>                 sends a SCSI GET CONFIGURATION command (MMC-4 +)
  <a id="sg_get_elem_status"></a><span class="command"><span class="term"><strong>sg_get_elem_status</strong></span></span>       sends a SCSI GET PHYSICAL ELEMENT STATUS command to a device
  <a id="sg_get_lba_status"></a><span class="command"><span class="term"><strong>sg_get_lba_status</strong></span></span>         sends the SCSI GET LBA STATUS command
  <a id="sg_ident"></a><span class="command"><span class="term"><strong>sg_ident</strong></span></span>                           sends a SCSI REPORT or SET IDENTIFYING INFORMATION command
  <a id="sginfo"></a><span class="command"><span class="term"><strong>sginfo</strong></span></span>                               access mode page information for a SCSI (or ATAPI) device
  <a id="sg_inq"></a><span class="command"><span class="term"><strong>sg_inq</strong></span></span>                               sends a SCSI INQUIRY or ATA IDENTIFY (PACKET) DEVICE command and outputs the response
  <a id="sg_logs"></a><span class="command"><span class="term"><strong>sg_logs</strong></span></span>                             access log pages with SCSI LOG SENSE command
  <a id="sg_luns"></a><span class="command"><span class="term"><strong>sg_luns</strong></span></span>                             sends the SCSI REPORT LUNS command
  <a id="sg_map"></a><span class="command"><span class="term"><strong>sg_map</strong></span></span>                               displays mapping between linux sg and other SCSI devices
  <a id="sg_map26"></a><span class="command"><span class="term"><strong>sg_map26</strong></span></span>                           maps a special file to a SCSI generic (sg) device (or vice versa)
  <a id="sgm_dd"></a><span class="command"><span class="term"><strong>sgm_dd</strong></span></span>                               copies data to and from files and devices. Specialized for devices that understand the SCSI command set and does memory mapped transfers from sg devices
  <a id="sg_modes"></a><span class="command"><span class="term"><strong>sg_modes</strong></span></span>                           reads mode pages with the SCSI MODE SENSE command
  <a id="sg_opcodes"></a><span class="command"><span class="term"><strong>sg_opcodes</strong></span></span>                       reports information on supported SCSI commands or task management functions
  <a id="sgp_dd"></a><span class="command"><span class="term"><strong>sgp_dd</strong></span></span>                               copies data to and from files and devices. Specialized for devices that understand the SCSI command set
  <a id="sg_persist"></a><span class="command"><span class="term"><strong>sg_persist</strong></span></span>                       sends a SCSI PERSISTENT RESERVE (IN or OUT) command to manipulate registrations and reservations
  <a id="sg_prevent"></a><span class="command"><span class="term"><strong>sg_prevent</strong></span></span>                       sends a SCSI PREVENT ALLOW MEDIUM REMOVAL command
  <a id="sg_raw"></a><span class="command"><span class="term"><strong>sg_raw</strong></span></span>                               sends an arbitrary SCSI command to a device
  <a id="sg_rbuf"></a><span class="command"><span class="term"><strong>sg_rbuf</strong></span></span>                             reads data using the SCSI READ BUFFER command
  <a id="sg_rdac"></a><span class="command"><span class="term"><strong>sg_rdac</strong></span></span>                             displays or modifies the RDAC Redundant Controller Page
  <a id="sg_read"></a><span class="command"><span class="term"><strong>sg_read</strong></span></span>                             reads blocks of data continually from the same offset
  <a id="sg_read_attr"></a><span class="command"><span class="term"><strong>sg_read_attr</strong></span></span>                   performs a SCSI READ ATTRIBUTE command on a device
  <a id="sg_read_block_limits"></a><span class="command"><span class="term"><strong>sg_read_block_limits</strong></span></span>   sends a SCSI READ BLOCK LIMITS command
  <a id="sg_read_buffer"></a><span class="command"><span class="term"><strong>sg_read_buffer</strong></span></span>               sends a SCSI READ BUFFER command
  <a id="sg_readcap"></a><span class="command"><span class="term"><strong>sg_readcap</strong></span></span>                       sends a SCSI READ CAPACITY command
  <a id="sg_read_long"></a><span class="command"><span class="term"><strong>sg_read_long</strong></span></span>                   sends a SCSI READ LONG command
  <a id="sg_reassign"></a><span class="command"><span class="term"><strong>sg_reassign</strong></span></span>                     sends a SCSI REASSIGN BLOCKS command
  <a id="sg_referrals"></a><span class="command"><span class="term"><strong>sg_referrals</strong></span></span>                   sends a SCSI REPORT REFERRALS command
  <a id="sg_rep_pip"></a><span class="command"><span class="term"><strong>sg_rep_pip</strong></span></span>                       sends a SCSI REPORT PROVISIONING INITIALIZATION PATTERN command
  <a id="sg_rep_zones"></a><span class="command"><span class="term"><strong>sg_rep_zones</strong></span></span>                   sends a SCSI REPORT ZONES command
  <a id="sg_requests"></a><span class="command"><span class="term"><strong>sg_requests</strong></span></span>                     sends one or more SCSI REQUEST SENSE commands
  <a id="sg_reset"></a><span class="command"><span class="term"><strong>sg_reset</strong></span></span>                           sends a SCSI device, target, bus or host reset; or checks reset state
  <a id="sg_reset_wp"></a><span class="command"><span class="term"><strong>sg_reset_wp</strong></span></span>                     sends a SCSI RESET WRITE POINTER command
  <a id="sg_rmsn"></a><span class="command"><span class="term"><strong>sg_rmsn</strong></span></span>                             sends a SCSI READ MEDIA SERIAL NUMBER command
  <a id="sg_rtpg"></a><span class="command"><span class="term"><strong>sg_rtpg</strong></span></span>                             sends a SCSI REPORT TARGET PORT GROUPS command
  <a id="sg_safte"></a><span class="command"><span class="term"><strong>sg_safte</strong></span></span>                           fetches status information from a SCSI Accessed Fault-Tolerant Enclosure (SAF-TE) device
  <a id="sg_sanitize"></a><span class="command"><span class="term"><strong>sg_sanitize</strong></span></span>                     sends a SCSI SANITIZE command
  <a id="sg_sat_identify"></a><span class="command"><span class="term"><strong>sg_sat_identify</strong></span></span>             sends an ATA IDENTIFY (PACKET) DEVICE command via a SCSI to ATA Translation (SAT) layer
  <a id="sg_sat_phy_event"></a><span class="command"><span class="term"><strong>sg_sat_phy_event</strong></span></span>           sends an ATA READ LOG EXT command via a SAT pass through to fetch log page 11h which contains SATA phy event counters
  <a id="sg_sat_read_gplog"></a><span class="command"><span class="term"><strong>sg_sat_read_gplog</strong></span></span>         sends an ATA READ LOG EXT command via a SCSI to ATA Translation (SAT) layer
  <a id="sg_sat_set_features"></a><span class="command"><span class="term"><strong>sg_sat_set_features</strong></span></span>     sends an ATA SET FEATURES command via a SCSI to ATA Translation (SAT) layer
  <a id="sg_scan"></a><span class="command"><span class="term"><strong>sg_scan</strong></span></span>                             does a scan of sg devices (or given SCSI/ATAPI/ATA devices) and prints the results
  <a id="sg_seek"></a><span class="command"><span class="term"><strong>sg_seek</strong></span></span>                             performs a SCSI SEEK or PRE-FETCH command on a device and it's cache
  <a id="sg_senddiag"></a><span class="command"><span class="term"><strong>sg_senddiag</strong></span></span>                     performs a SCSI SEND DIAGNOSTIC command
  <a id="sg_ses"></a><span class="command"><span class="term"><strong>sg_ses</strong></span></span>                               sends controls and fetches the current status from a SCSI Enclosure Services (SES) device
  <a id="sg_ses_microcode"></a><span class="command"><span class="term"><strong>sg_ses_microcode</strong></span></span>           sends microcode to a SCSI enclosure
  <a id="sg_start"></a><span class="command"><span class="term"><strong>sg_start</strong></span></span>                           sends a SCSI START STOP UNIT command to start, stop, load or eject medium
  <a id="sg_stpg"></a><span class="command"><span class="term"><strong>sg_stpg</strong></span></span>                             sends a SCSI SET TARGET PORT GROUPS command
  <a id="sg_stream_ctl"></a><span class="command"><span class="term"><strong>sg_stream_ctl</strong></span></span>                 performs a SCSI STREAM CONTROL or GET STREAM STATUS command on a device to open or close an I/O stream
  <a id="sg_sync"></a><span class="command"><span class="term"><strong>sg_sync</strong></span></span>                             sends a SCSI command to synchronize the cache
  <a id="sg_test_rwbuf"></a><span class="command"><span class="term"><strong>sg_test_rwbuf</strong></span></span>                 tests the SCSI host adapter by issuing write and read operations on a device's buffer and calculating checksums
  <a id="sg_timestamp"></a><span class="command"><span class="term"><strong>sg_timestamp</strong></span></span>                   reports or sets the timestamp on a SCSI device
  <a id="sg_turs"></a><span class="command"><span class="term"><strong>sg_turs</strong></span></span>                             sends one or more SCSI TEST UNIT READY commands
  <a id="sg_unmap"></a><span class="command"><span class="term"><strong>sg_unmap</strong></span></span>                           sends a SCSI UNMAP command
  <a id="sg_verify"></a><span class="command"><span class="term"><strong>sg_verify</strong></span></span>                         invokes SCSI VERIFY command(s) on a block device
  <a id="sg_vpd"></a><span class="command"><span class="term"><strong>sg_vpd</strong></span></span>                               fetches Vital Product Data (VPD) pages using a SCSI INQUIRY command
  <a id="sg_write_buffer"></a><span class="command"><span class="term"><strong>sg_write_buffer</strong></span></span>             sends a SCSI WRITE BUFFER command
  <a id="sg_write_long"></a><span class="command"><span class="term"><strong>sg_write_long</strong></span></span>                 sends a SCSI WRITE LONG command
  <a id="sg_write_same"></a><span class="command"><span class="term"><strong>sg_write_same</strong></span></span>                 sends a SCSI WRITE SAME command
  <a id="sg_write_verify"></a><span class="command"><span class="term"><strong>sg_write_verify</strong></span></span>             sends a SCSI WRITE AND VERIFY command
  <a id="sg_write_x"></a><span class="command"><span class="term"><strong>sg_write_x</strong></span></span>                       performs SCSI WRITE commands on a device
  <a id="sg_wr_mode"></a><span class="command"><span class="term"><strong>sg_wr_mode</strong></span></span>                       writes mode pages
  <a id="sg_xcopy"></a><span class="command"><span class="term"><strong>sg_xcopy</strong></span></span>                           copies data to and from files and devices using SCSI EXTENDED COPY (XCOPY)
  <a id="sg_zone"></a><span class="command"><span class="term"><strong>sg_zone</strong></span></span>                             performs SCSI ZONE commands on a device, such as OPEN, CLOSE, FINISH or SEQUENTIALIZE
  <a id="libsgutils2"></a><span class="term"><code class="filename">libsgutils2.so</code></span>                     contains the <span class="application">sg3_utils</span> API functions
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pciutils.md "pciutils-3.15.0")

    pciutils-3.15.0

-   [Next](sysmond.md "sysmond-1.0.1")

    sysmond-1.0.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
