<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](systemd-units.md "BLFS Systemd Units")

    BLFS Systemd Units

-   [Next](libraries.md "Libraries: Static or shared?")

    Libraries: Static or shared?

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# About Libtool Archive (.la) files {#about-libtool-archive-.la-files}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Files with a .la extension {#files-with-a-.la-extension}

In LFS and BLFS, many packages use an internally shipped libtool copy to build on a variety of Unix platforms. This includes platforms such as AIX, Solaris, IRIX, HP-UX, and Cygwin as well as Linux. The origins of this tool are quite dated. It was intended to manage libraries on systems with less advanced capabilities than a modern Linux system.

On a Linux system, libtool specific files are generally unneeded. Normally libraries are specified in the build process during the link phase. Since a linux system uses the <a class="ulink" href="https://en.wikipedia.org/wiki/Executable_and_Linkable_Format">Executable and Linkable Format (ELF)</a> for executables and dynamic libraries, information needed to complete the task is embedded in the files. Both the linker and the program loader can query the appropriate files and properly link or execute the program.

Static libraries are rarely used in LFS and BLFS. And, nowadays most packages store the information needed for linking against a static library into a .pc file, instead of relying on libtool. A <span class="command"><strong>pkg-config --static --libs</strong></span> command will output the sufficient flags for the linker to link against a static library without any libtool magic.

The problem is that libtool usually creates one or more text files for package libraries called libtool archives. These small files have a ".la" extension and contain information that is similar to that embedded in the libraries or pkg-config files. When building a package that uses libtool, the process automatically looks for these files. Sometimes a .la file can contains the name or path of a static library used during build but not installed, then the build process will break because the .la file refers to something nonexistent on the system. Similarly, if a package is updated and no longer uses the .la file, then the build process can break with the old .la files.

The solution is to remove the .la files. However there is a catch. Some packages, such as <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>, use a libtool function, lt_dlopen, to load libraries as needed during execution and resolve their dependencies at run time. In this case, the .la files should remain.

The script below, removes all unneeded .la files and saves them in a directory, /var/local/la-files by default, not in the normal library path. It also searches all pkg-config files (.pc) for embedded references to .la files and fixes them to be conventional library references needed when an application or library is built. It can be run as needed to clean up the directories that may be causing problems.

```bash
cat > /usr/sbin/remove-la-files.sh << "EOF"
#!/bin/bash

# /usr/sbin/remove-la-files.sh
# Written for Beyond Linux From Scratch
# by Bruce Dubbs <bdubbs@linuxfromscratch.org>

# Make sure we are running with root privs
if test "${EUID}" -ne 0; then
    echo "Error: $(basename ${0}) must be run as the root user! Exiting..."
    exit 1
fi

# Make sure PKG_CONFIG_PATH is set if discarded by sudo
source /etc/profile

OLD_LA_DIR=/var/local/la-files

mkdir -p $OLD_LA_DIR

# Only search directories in /opt, but not symlinks to directories
OPTDIRS=$(find /opt -mindepth 1 -maxdepth 1 -type d)

# Move any found .la files to a directory out of the way
find /usr/lib $OPTDIRS -name "*.la" ! -path "/usr/lib/ImageMagick*" \
  -exec mv -fv {} $OLD_LA_DIR \;
###############

# Fix any .pc files that may have .la references

STD_PC_PATH='/usr/lib/pkgconfig
             /usr/share/pkgconfig
             /usr/local/lib/pkgconfig
             /usr/local/share/pkgconfig'

# For each directory that can have .pc files
for d in $(echo $PKG_CONFIG_PATH | tr : ' ') $STD_PC_PATH; do

  # For each pc file
  for pc in $d/*.pc ; do
    if [ $pc == "$d/*.pc" ]; then continue; fi

    # Check each word in a line with a .la reference
    for word in $(grep '\.la' $pc); do
      if $(echo $word | grep -q '.la$' ); then
        mkdir -p $d/la-backup
        cp -fv  $pc $d/la-backup

        basename=$(basename $word )
        libref=$(echo $basename|sed -e 's/^lib/-l/' -e 's/\.la$//')

        # Fix the .pc file
        sed -i "s:$word:$libref:" $pc
      fi
    done
  done
done

EOF

chmod +x /usr/sbin/remove-la-files.sh
```
</div>
</div>

<div class="navfooter">
-   [Prev](systemd-units.md "BLFS Systemd Units")

    BLFS Systemd Units

-   [Next](libraries.md "Libraries: Static or shared?")

    Libraries: Static or shared?

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
