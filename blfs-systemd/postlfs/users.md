::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](skel.md "Configuring for Adding Users"){accesskey="p"}

    Configuring for Adding Users

-   [Next](profile.md "The Bash Shell Startup Files"){accesskey="n"}

    The Bash Shell Startup Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-users-groups}About System Users and Groups {#about-system-users-and-groups .sect1}

::::: {.sect1 lang="en"}
Throughout BLFS, many packages install programs that run as daemons or in some way should have a user or group name assigned. Generally these names are used to map a user ID (uid) or group ID (gid) for system use. Generally the specific uid or gid numbers used by these applications are not significant. The exception of course, is that `root`{.systemitem} has a uid and gid of 0 (zero) that is indeed special. The uid values are stored in `/etc/passwd`{.filename} and the gid values are found in `/etc/group`{.filename}.

Customarily, Unix systems classify users and groups into two categories: system users and regular users. The system users and groups are given low numbers and regular users and groups have numeric values greater than all the system values. The cutoff for these numbers is found in two parameters in the `/etc/login.defs`{.filename} configuration file. The default UID_MIN value is 1000 and the default GID_MIN value is 1000. If a specific uid or gid value is not specified when creating a user with [**useradd**]{.command} or a group with [**groupadd**]{.command} the values assigned will always be above these cutoff values.

Additionally, the [Linux Standard Base](https://refspecs.linuxfoundation.org/LSB_4.1.0/LSB-Core-generic/LSB-Core-generic/usernames.md){.ulink} recommends that system uid and gid values should be below 100.

Below is a table of suggested uid/gid values used in BLFS beyond those defined in a base LFS installation. These can be changed as desired, but provide a suggested set of consistent values.

:::: table
[]{#uidgid}

**Table 3.1. UID/GID Suggested Values**

::: table-contents
  Name                      uid     gid
  ------------------------- ------- -------
  bin                       1       
  lp                        9       
  adm                               16
  atd                       17      17
  messagebus                18      18
  lpadmin                           19
  named                     20      20
  gdm                               21
  fcron                     22      22
  systemd-journal           23      23
  apache                    25      25
  smmsp                     26      26
  polkitd                   27      27
  rpc                       28      28
  exim                      31      31
  postfix                   32      32
  postdrop                          33
  sendmail                  34      
  mail                              34
  vmailman                  35      35
  news                      36      36
  kdm                       37      37
  fetchmail                 38      
  mariadb                   40      40
  postgres                  41      41
  dovecot                   42      42
  dovenull                  43      43
  ftp                       45      45
  proftpd                   46      46
  vsftpd                    47      47
  rsyncd                    48      48
  sshd                      50      50
  stunnel                   51      51
  dhcpcd                    52      52
  svn                       56      56
  svntest                           57
  git                       58      58
  games                     60      60
  kvm                               61
  wireshark                         62
  sddm                      64      64
  lightdm                   65      65
  scanner                           70
  colord                    71      71
  systemd-journal-gateway   73      73
  systemd-journal-remote    74      74
  systemd-journal-upload    75      75
  systemd-network           76      76
  systemd-resolve           77      77
  systemd-timesync          78      78
  systemd-coredump          79      79
  uuidd                     80      80
  systemd-oom               81      81
  ldap                      83      83
  avahi                     84      84
  avahi-autoipd             85      85
  netdev                            86
  ntp                       87      87
  unbound                   88      88
  plugdev                           90
  wheel                             97
  anonymous                 98      
  nobody                    65534   
  nogroup                           65534
:::
::::

\
:::::

::: navfooter
-   [Prev](skel.md "Configuring for Adding Users"){accesskey="p"}

    Configuring for Adding Users

-   [Next](profile.md "The Bash Shell Startup Files"){accesskey="n"}

    The Bash Shell Startup Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
