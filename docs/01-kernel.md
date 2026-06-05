# 01 — Kernel Configuration

Configuracion necesaria del kernel antes de compilar Mesa y el stack grafico.

## Estado actual (kernel 7.0.10-shurtado)

### Ya habilitado (OK)

```
CONFIG_DRM=y                       # Direct Rendering Manager
CONFIG_DRM_KMS_HELPER=y            # Kernel Mode Setting helper
CONFIG_DRM_VIRTIO_GPU=y            # VirtIO GPU driver (virgl)
CONFIG_DRM_VIRTIO_GPU_KMS=y        # KMS para virtio-gpu
CONFIG_DRM_SIMPLEDRM=y             # Simple DRM framebuffer
CONFIG_DRM_BOCHS=y                 # Bochs (QEMU stdvga) DRM
CONFIG_INPUT_EVDEV=y               # Event interface para input
CONFIG_VIRTIO_PCI=y                # VirtIO over PCI
CONFIG_VIRTIO_INPUT=y              # VirtIO input devices
```

### Falta habilitar (OBLIGATORIO)

```
CONFIG_DRM_VGEM=y                  # Virtual GEM - REQUERIDO para llvmpipe/softpipe
```

Sin `CONFIG_DRM_VGEM`, el software rendering falla con:
> Error: couldn't get an RGB, Double-buffered visual

### Opcional (sonido)

```
CONFIG_SND_HDA_INTEL=y             # Intel HDA audio (QEMU default sound)
CONFIG_SND_VIRTIO=y                # VirtIO sound (si QEMU usa -audiodev virtio)
```

### No necesario (GPUs fisicas que no tenemos)

```
# CONFIG_DRM_AMDGPU is not set     # Solo GPUs AMD
# CONFIG_DRM_RADEON is not set     # Solo GPUs ATI/AMD
# CONFIG_DRM_NOUVEAU is not set    # Solo GPUs NVIDIA
# CONFIG_DRM_I915 is not set       # Solo GPUs Intel integradas
# CONFIG_DRM_VMWGFX is not set     # Solo VMware
```

## Drivers Mesa que usaremos

Con VirtIO GPU en QEMU con virglrender habilitado:

| Driver | Tipo | Que hace |
|--------|------|----------|
| `virgl` | Gallium3D | Aceleracion HW via host GPU (requiere virglrender) |
| `llvmpipe` | Gallium3D | Software rendering rapido (usa LLVM + CPU) |
| `swrast` | Vulkan | Software Vulkan rendering (usa CPU) |

## Procedimiento

1. Editar `.config` del kernel: `CONFIG_DRM_VGEM=y`
2. `make olddefconfig && make -j$(nproc) && make modules_install`
3. Copiar `arch/x86/boot/bzImage` a `/boot/vmlinuz-7.0.10-shurtado`
4. Actualizar GRUB si es necesario
5. Reiniciar VM
