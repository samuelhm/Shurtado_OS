# 02 — Xorg Foundation

> Fase 1 del plan. 10 paquetes. ~2.5 SBU total.

## Paquetes

### 1. xorgproto-2025.1

- **Para que sirve:** Headers del protocolo X Window. Sin esto no se puede compilar nada de X11.
- **Que instala:** Solo headers en `$XORG_PREFIX/include/GL`, `X11/`, y docs.
- **Dependencias:** util-macros (build).

### 2. libXau-1.0.12

- **Para que sirve:** Biblioteca de autorizacion X (maneja cookies de autenticacion `.Xauthority`).
- **Que instala:** `libXau.so`.
- **Dependencias:** xorgproto.

### 3. libXdmcp-1.1.5

- **Para que sirve:** X Display Manager Control Protocol — permite al display manager comunicarse con el servidor X.
- **Que instala:** `libXdmcp.so`.
- **Dependencias:** xorgproto. Recomendado para Mesa.

### 4. xcb-proto-1.17.0

- **Para que sirve:** Descripciones XML del protocolo XCB que libxcb usa para generar su codigo.
- **Que instala:** Solo datos XML en `$XORG_PREFIX/share/xcb/` y modulo Python `xcbgen`.
- **Dependencias:** Ninguna (build environment Xorg).

### 5. libxcb-1.17.0

- **Para que sirve:** Interfaz C al protocolo X Window. Reemplaza/mejora la antigua Xlib. Qt6 usa XCB internamente incluso en Wayland.
- **Que instala:** ~25 bibliotecas: `libxcb.so`, `libxcb-shm.so`, `libxcb-render.so`, `libxcb-xfixes.so`, `libxcb-dri3.so`, `libxcb-present.so`, etc.
- **Dependencias:** libXau, xcb-proto. Recomendado: libXdmcp (para Mesa).

### 6. Xorg Libraries (x7lib) — bulk ~31 libs

- **Para que sirve:** El conjunto completo de bibliotecas cliente de X11. Qt6 las requiere OBLIGATORIAMENTE.
- **Que instala:**
  - **Programas:** `cxpm`, `sxpm`
  - **Librerias:** `libX11.so`, `libXext.so`, `libXrender.so`, `libXfixes.so`, `libXft.so`, `libXi.so`, `libXrandr.so`, `libXt.so`, `libXmu.so`, `libXpm.so`, `libXcursor.so`, `libXdamage.so`, `libXcomposite.so`, `libXinerama.so`, `libXv.so`, `libXxf86vm.so`, `libSM.so`, `libICE.so`, `libfontenc.so`, `libXfont2.so`, `libpciaccess.so`, `libxkbfile.so`, `libxshmfence.so`, y ~10 mas.
- **Dependencias:** Fontconfig, libxcb. (Fontconfig y freetype ya instalados en LFS base.)

### 7. libdrm-2.4.134

- **Para que sirve:** Interfaz userspace al Direct Rendering Manager del kernel. Usada por Mesa y drivers graficos.
- **Que instala:** `libdrm.so`, `libdrm_amdgpu.so`, `libdrm_intel.so`, `libdrm_nouveau.so`, `libdrm_radeon.so`. Sin programas.
- **Dependencias:** Xorg Libraries (recomendado para soporte Intel KMS en Mesa).

### 8. libevdev-1.13.6

- **Para que sirve:** Funciones comunes para drivers de input de Xorg. Envuelve el protocolo evdev del kernel.
- **Que instala:** `libevdev.so`, `libevdev-tweak-device`, `mouse-dpi-tool`, `touchpad-edge-detector`.
- **Dependencias:** Ninguna obligatoria.

### 9. mtdev-1.1.7

- **Para que sirve:** Traduce todos los protocolos multitouch del kernel al tipo B (slotted). Usado por libinput y Xorg Evdev.
- **Que instala:** `libmtdev.so`, `mtdev-test`.
- **Dependencias:** Ninguna.

### 10. Xorg Evdev Driver-2.11.0

- **Para que sirve:** Driver de input generico para Xorg Server. Maneja teclado, mouse, touchpad.
- **Que instala:** `evdev_drv.so` (driver Xorg).
- **Dependencias:** libevdev, mtdev, Xorg-Server (necesita Xorg Server instalado).
- **Nota:** En Wayland puro no se usa (libinput va directo). Pero el libro BLFS lo requiere para Plasma (por si se usa Xwayland o SDDM en modo X11).
