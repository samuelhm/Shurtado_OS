# -----------------------------------------------
# Local environment variables (home/workstation)
# -----------------------------------------------
DISK_IMG      := ft_linux_disk.qcow2
MOUNT_POINT   := disk_mount
LFS_MOUNT     := /mnt/lfs
QEMU_SCRIPT   := run_qemu.sh
BOOK_DIR      := r13.0-131-systemd
ISO           ?= archlinux-2026.06.01-x86_64.iso
NBD_DEV       ?= /dev/nbd0
ROOT_PART     ?= 4

# -----------------------------------------------
# 42 School variables (untouched)
# -----------------------------------------------
DISK_DIR_42   := /sgoinfre/students/shurtado
DISK_PATH_42  := $(DISK_DIR_42)/$(DISK_IMG)
TAR_FILE_42   := $(DISK_DIR_42)/ft_linux_delivery.tar.gz
QEMU_42_SCRIPT := run_qemu_42.sh

.PHONY: all help run run_iso mount umount mount_lfs umount_lfs status compress decompress \
        42run 42backup 42restore 42compress 42decompress 42shasumcheck

all: help

help:
	@echo "====================================================================="
	@echo "                     LFS MAKEFILE HELP                               "
	@echo "====================================================================="
	@echo "Uso: make [comando]"
	@echo ""
	@echo "--- Arranque (entorno local) ---"
	@echo "  run             - Inicia la VM en modo disco (boot desde qcow2)."
	@echo "  run_iso         - Inicia la VM con live CD (ISO=$(ISO))."
	@echo "                    Usa ISO=<path> para otra ISO."
	@echo ""
	@echo "--- Disco y Montaje ---"
	@echo "  mount           - Monta el disco qcow2 en $(MOUNT_POINT)/."
	@echo "  umount          - Desmonta $(MOUNT_POINT)/ de forma segura."
	@echo "  mount_lfs       - Monta el disco qcow2 en $(LFS_MOUNT)/ (LFS estándar)."
	@echo "  umount_lfs      - Desmonta $(LFS_MOUNT)/ de forma segura."
	@echo "  status          - Muestra si la VM está corriendo y el estado del disco."
	@echo "  compress        - Comprime el disco qcow2 (qemu-img -c)."
	@echo "  decompress      - Descomprime el disco qcow2."
	@echo ""
	@echo "--- 42 School (solo para evaluaciones) ---"
	@echo "  42run           - Inicia la VM en el entorno 42 (run_qemu_42.sh)."
	@echo "  42backup        - Crea snapshot interno 'final' en el disco qcow2."
	@echo "  42restore       - Restaura el disco al estado del snapshot 'final'."
	@echo "  42compress      - Comprime el disco en .tar.gz en sgoinfre."
	@echo "  42decompress    - Descomprime el disco desde el .tar.gz en sgoinfre."
	@echo "  42shasumcheck   - Verifica SHA-1 del archivo .tar.gz."
	@echo "====================================================================="

# -----------------------------------------------
# Local targets
# -----------------------------------------------
run:
	@bash $(QEMU_SCRIPT)

run_iso:
	@if [ ! -f "$(ISO)" ]; then \
		echo "Error: ISO '$(ISO)' no encontrada."; \
		echo "Descarga Arch Linux: https://archlinux.org/download/"; \
		exit 1; \
	fi
	@bash $(QEMU_SCRIPT) -cdrom "$(ISO)"

mount:
	@echo "Verificando que el disco no este en uso..."
	@if lsof "$(DISK_IMG)" >/dev/null 2>&1; then \
		echo "Error: $(DISK_IMG) esta en uso por:"; \
		lsof "$(DISK_IMG)"; \
		exit 1; \
	fi
	@echo "Verificando que QEMU no esta corriendo..."
	@if pgrep -f "[q]emu-system.*$(DISK_IMG)" >/dev/null 2>&1; then \
		echo "Error: QEMU VM sigue corriendo. Apagala primero."; \
		exit 1; \
	fi
	@echo "Verificando que no este ya montado..."
	@if mountpoint -q "$(MOUNT_POINT)" 2>/dev/null; then \
		echo "Error: $(MOUNT_POINT) ya esta montado."; \
		exit 1; \
	fi
	@if mountpoint -q "$(LFS_MOUNT)" 2>/dev/null; then \
		echo "Error: $(LFS_MOUNT) ya esta montado. Desmontalo primero."; \
		exit 1; \
	fi
	@echo "Verificando NBD..."
	@if lsmod | grep -q nbd; then :; else sudo modprobe nbd max_part=8; fi
	@if lsblk -no NAME $(NBD_DEV) >/dev/null 2>&1 && [ "$$(lsblk -ndo SIZE $(NBD_DEV) 2>/dev/null)" != "0" ]; then \
		echo "Error: $(NBD_DEV) ya esta en uso."; \
		exit 1; \
	fi
	@mkdir -p $(MOUNT_POINT)
	@echo "Conectando $(DISK_IMG) a $(NBD_DEV)..."
	@sudo qemu-nbd -c $(NBD_DEV) "$(DISK_IMG)"
	@sleep 0.5
	@echo "Montando $(NBD_DEV)p$(ROOT_PART) en $(MOUNT_POINT)..."
	@sudo mount $(NBD_DEV)p$(ROOT_PART) $(MOUNT_POINT)
	@echo "Montado correctamente."

umount:
	@if mountpoint -q "$(MOUNT_POINT)" 2>/dev/null; then \
		echo "Desmontando $(MOUNT_POINT)..."; \
		sudo umount "$(MOUNT_POINT)"; \
		sudo qemu-nbd -d $(NBD_DEV); \
		echo "Desmontado correctamente."; \
	else \
		echo "$(MOUNT_POINT) no esta montado."; \
	fi

mount_lfs:
	@echo "Verificando que el disco no este en uso..."
	@if lsof "$(DISK_IMG)" >/dev/null 2>&1; then \
		echo "Error: $(DISK_IMG) esta en uso por:"; \
		lsof "$(DISK_IMG)"; \
		exit 1; \
	fi
	@echo "Verificando que QEMU no esta corriendo..."
	@if pgrep -f "[q]emu-system.*$(DISK_IMG)" >/dev/null 2>&1; then \
		echo "Error: QEMU VM sigue corriendo. Apagala primero."; \
		exit 1; \
	fi
	@echo "Verificando que no este ya montado..."
	@if mountpoint -q "$(LFS_MOUNT)" 2>/dev/null; then \
		echo "Error: $(LFS_MOUNT) ya esta montado."; \
		exit 1; \
	fi
	@if mountpoint -q "$(MOUNT_POINT)" 2>/dev/null; then \
		echo "Error: $(MOUNT_POINT) ya esta montado. Desmontalo primero."; \
		exit 1; \
	fi
	@echo "Verificando NBD..."
	@if lsmod | grep -q nbd; then :; else sudo modprobe nbd max_part=8; fi
	@if lsblk -no NAME $(NBD_DEV) >/dev/null 2>&1 && [ "$$(lsblk -ndo SIZE $(NBD_DEV) 2>/dev/null)" != "0" ]; then \
		echo "Error: $(NBD_DEV) ya esta en uso."; \
		exit 1; \
	fi
	@sudo mkdir -pv $(LFS_MOUNT)
	@echo "Conectando $(DISK_IMG) a $(NBD_DEV)..."
	@sudo qemu-nbd -c $(NBD_DEV) "$(DISK_IMG)"
	@sleep 0.5
	@echo "Montando $(NBD_DEV)p$(ROOT_PART) en $(LFS_MOUNT)..."
	@sudo mount $(NBD_DEV)p$(ROOT_PART) $(LFS_MOUNT)
	@echo "Montado correctamente en $(LFS_MOUNT)."

umount_lfs:
	@if mountpoint -q "$(LFS_MOUNT)" 2>/dev/null; then \
		echo "Desmontando $(LFS_MOUNT)..."; \
		sudo umount "$(LFS_MOUNT)"; \
		sudo qemu-nbd -d $(NBD_DEV); \
		echo "Desmontado correctamente."; \
	else \
		echo "$(LFS_MOUNT) no esta montado."; \
	fi

status:
	@echo "=== VM Status ==="
	@if pgrep -f "[q]emu-system.*$(DISK_IMG)" >/dev/null 2>&1; then \
		echo "QEMU VM: RUNNING"; \
		pgrep -af "[q]emu-system.*$(DISK_IMG)"; \
	else \
		echo "QEMU VM: STOPPED"; \
	fi
	@echo ""
	@echo "=== Disk Status ==="
	@if [ -f "$(DISK_IMG)" ]; then \
		if lsof "$(DISK_IMG)" >/dev/null 2>&1; then \
			echo "Disk image: IN USE"; \
			lsof "$(DISK_IMG)"; \
		else \
			echo "Disk image: FREE ($(DISK_IMG))"; \
		fi; \
	else \
		echo "Disk image: NOT FOUND ($(DISK_IMG))"; \
	fi
	@echo ""
	@echo "=== Mount Status ==="
	@echo "NBD device: $$(lsblk -ndo SIZE $(NBD_DEV) 2>/dev/null || echo 'free')"
	@if mountpoint -q "$(MOUNT_POINT)" 2>/dev/null; then \
		echo "$(MOUNT_POINT): MOUNTED"; \
	else \
		echo "$(MOUNT_POINT): NOT MOUNTED"; \
	fi
	@if mountpoint -q "$(LFS_MOUNT)" 2>/dev/null; then \
		echo "$(LFS_MOUNT): MOUNTED"; \
	else \
		echo "$(LFS_MOUNT): NOT MOUNTED"; \
	fi

compress:
	@if [ ! -f "$(DISK_IMG)" ]; then \
		echo "Error: $(DISK_IMG) no existe."; \
		exit 1; \
	fi
	@echo "Comprimiendo $(DISK_IMG) -> $(DISK_IMG).compressed..."
	@qemu-img convert -c -O qcow2 "$(DISK_IMG)" "$(DISK_IMG).compressed"
	@echo "Compresion completada: $(DISK_IMG).compressed"

decompress:
	@if [ ! -f "$(DISK_IMG).compressed" ]; then \
		echo "Error: $(DISK_IMG).compressed no existe."; \
		exit 1; \
	fi
	@if [ -f "$(DISK_IMG)" ]; then \
		echo "Error: $(DISK_IMG) ya existe. Borralo o renombralo primero."; \
		exit 1; \
	fi
	@echo "Descomprimiendo $(DISK_IMG).compressed -> $(DISK_IMG)..."
	@qemu-img convert -O qcow2 "$(DISK_IMG).compressed" "$(DISK_IMG)"
	@echo "Descompresion completada: $(DISK_IMG)"

# -----------------------------------------------
# 42 School targets (untouched)
# -----------------------------------------------
42run:
	@bash $(QEMU_42_SCRIPT)

42backup:
	@echo "Creating internal snapshot 'final'..."
	@qemu-img snapshot -c "final" $(DISK_PATH_42)
	@echo "Snapshot 'final' created successfully inside $(DISK_IMG)."

42restore:
	@echo "Restoring disk image from snapshot 'final'..."
	@qemu-img snapshot -a "final" $(DISK_PATH_42)
	@echo "Disk image restored successfully."

42compress:
	@echo "Compressing disk image into $(TAR_FILE_42)..."
	@tar -czf $(TAR_FILE_42) -C $(DISK_DIR_42) $(DISK_IMG)
	@echo "Compression completed successfully."

42decompress:
	@echo "Decompressing disk image..."
	@tar -xzf $(TAR_FILE_42) -C $(DISK_DIR_42)
	@echo "Decompression completed successfully."

42shasumcheck:
	@echo "Calculating SHA-1 checksum..."
	@shasum -c sum.sha1
	@echo "SHA-1 checksum verified successfully."
