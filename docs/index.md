# LFS + BLFS — Documentacion de Paquetes

> LFS r13.0-131-systemd + BLFS r13.0-790. Total: ~150 paquetes.
> Objetivo final: KDE Plasma 6 en Wayland con aceleracion GPU (VirtIO/virgl).

---

## Sistema Actual (ya instalado)

| Archivo | Capa | Contenido |
|---------|------|-----------|
| [00-lfs-base.md](00-lfs-base.md) | LFS Base | 81 paquetes LFS: toolchain, coreutils, systemd, Python, Perl... |
| [00-blfs-pre.md](00-blfs-pre.md) | BLFS Pre-KDE | 13 paquetes ya instalados: fuentes, imagenes, Rust, cmake... |

---

## Plan de Instalacion KDE Plasma

```
LFS Base (81 paquetes) ──> BLFS Pre (13 paquetes)
                                    │
                              Kernel (Fase 0)
                                    │
                              Xorg Foundation (Fase 1) ─ 10 paquetes
                                    │
                              GPU Stack / Mesa (Fase 2) ─ 18 paquetes
                                    │
                            ┌───────┴────────┐
                            │                │
                    Core Libraries (3)  Multimedia (4)
                      11 paquetes        9 paquetes
                            │                │
                            └───────┬────────┘
                                    │
                              Qt 6 (Fase 5) ─ 4 paquetes
                                    │
                        ┌───────┬───┴───┬───────┐
                        │       │       │       │
                   KDE Intro (6) │  KF6 Deps (7) │
                   9 paquetes    │  7 paquetes   │
                        │       │       │       │
                        └───────┴───┬───┘       │
                                    │           │
                          KDE Frameworks 6 (8)  │
                              3 paquetes        │
                                    │           │
                          Plasma Deps (9) ──────┘
                             13 paquetes
                                    │
                          KDE Plasma 6 (10)
                             ~50 paquetes
```

## Archivos de Documentacion (por fase)

| Archivo | Fase | Paquetes | Contenido |
|---------|------|----------|-----------|
| [01-kernel.md](01-kernel.md) | 0 | 1 | `CONFIG_DRM_VGEM`, recompilar kernel |
| [02-xorg.md](02-xorg.md) | 1 | 10 | Xorg Libraries, libdrm, drivers input |
| [03-graphics.md](03-graphics.md) | 2 | 18 | LLVM, Mesa, Vulkan, glslang, libclc, GLU |
| [04-core-libs.md](04-core-libs.md) | 3 | 11 | GLib, ICU, harfbuzz, libgcrypt, libxslt... |
| [05-multimedia.md](05-multimedia.md) | 4 | 9 | alsa, PulseAudio, pipewire, FFmpeg, taglib |
| [06-qt6.md](06-qt6.md) | 5 | 4 | Qt 6, qca, qcoro, qtkeychain |
| [07-kde-frameworks.md](07-kde-frameworks.md) | 6-8 | 19 | Extra-CMake-Modules, Phonon, KF6 |
| [08-plasma.md](08-plasma.md) | 9-10 | 14 | boost, GTK3, opencv, Plasma 6.6.5 |

## Resumen

| Capa | Paquetes | Estado |
|------|----------|--------|
| LFS Base | 81 | Instalado |
| BLFS Pre-KDE | 13 | Instalado |
| KDE Plasma stack | ~60 | Por instalar |
| **Total** | **~154** | |

## GPU y aceleracion

- **GPU:** VirtIO GPU (QEMU virtio-gpu, 0x1af4:0x1050)
- **Aceleracion HW:** virgl (host QEMU con `-vga virtio -display gtk,gl=on`)
- **Fallback software:** llvmpipe (LLVM + `CONFIG_DRM_VGEM`)
- **Mesa flags:** `-D platforms=x11,wayland -D gallium-drivers=auto -D vulkan-drivers=auto`

## Tiempo estimado (solo KDE stack)

~100 SBU. Mas pesados: LLVM (10), Qt6 (13), KF6 (12), Plasma (20), opencv (8), boost (5), FFmpeg (5).
