#!/bin/bash
# Optimized for AMD Ryzen AI 7 350 (8C/16T, 30GB RAM, KVM/AMD-V)
# Usage: ./run_qemu.sh                        -> boot from disk
#        ./run_qemu.sh -cdrom <iso>           -> boot from CD-ROM ISO
#        ./run_qemu.sh -cdrom <iso> -- <qemu_extra_args>

IO_THREAD="iothread1"
DISK_ID="root"
DISK_PATH="ft_linux_disk.qcow2"

BOOT_ORDER="c"
EXTRA_ARGS=()

while [[ $# -gt 0 ]]; do
	case "$1" in
		-cdrom)
			if [[ -n "$2" && "$2" != -* ]]; then
				EXTRA_ARGS+=(-cdrom "$2")
				BOOT_ORDER="d"
				shift 2
			else
				echo "Error: -cdrom requires an ISO path argument." >&2
				exit 1
			fi
			;;
		--)
			shift
			EXTRA_ARGS+=("$@")
			break
			;;
		*)
			EXTRA_ARGS+=("$1")
			shift
			;;
	esac
done

qemu-system-x86_64 \
	-name "ft_linux (shurtado)" \
	-enable-kvm \
	-cpu host,topoext=on \
	-smp 12,cores=6,threads=2,sockets=1 \
	-m 16G \
	-machine type=q35,accel=kvm,hpet=off \
	-rtc base=utc,clock=host \
	-global kvm-pit.lost_tick_policy=discard \
	-object iothread,id=${IO_THREAD} \
	-device virtio-blk-pci,drive=${DISK_ID},iothread=${IO_THREAD},num-queues=12 \
	-drive if=none,id=${DISK_ID},file=${DISK_PATH},format=qcow2,cache=writeback,aio=threads \
	-boot order=${BOOT_ORDER} \
	-nic user,model=virtio-net-pci,hostfwd=tcp::2222-:22 \
	-vga virtio \
	-display gtk,zoom-to-fit=off \
	-device virtio-tablet \
	-audiodev none,id=audionone \
	"${EXTRA_ARGS[@]}"
