# 03 — GPU Stack (Mesa + Dependencias)

> Fase 2 del plan. 18 paquetes. ~17 SBU total.
> El mas pesado: LLVM (10 SBU).

## Paquetes

### 2.1 libxml2-2.15.3

- **Para que sirve:** Parser XML. Requerido por Wayland, GLib, y muchos otros.
- **Que instala:** `libxml2.so`, `xmllint`, `xmlcatalog`, `xml2-config`.
- **Dependencias:** Ninguna. Recomendado: ICU.

### 2.2 ICU-78.3

- **Para que sirve:** Soporte Unicode e internacionalizacion (i18n). Requerido por Qt6, harfbuzz, boost, libqalculate.
- **Que instala:** `libicudata.so`, `libicui18n.so`, `libicuuc.so`, `libicuio.so` y ~15 programas (`uconv`, `genrb`, `derb`, `icupkg`, etc.).
- **Dependencias:** Ninguna.

### 2.3 Wayland-1.25.0

- **Para que sirve:** Protocolo y biblioteca para compositores. Plasma 6 corre nativamente sobre Wayland.
- **Que instala:** `libwayland-client.so`, `libwayland-server.so`, `libwayland-cursor.so`, `libwayland-egl.so`, `wayland-scanner`.
- **Dependencias:** libxml2.

### 2.4 wayland-protocols-1.48

- **Para que sirve:** Protocolos adicionales de Wayland (no en el core). Requeridos por Plasma y GNOME.
- **Que instala:** Solo archivos XML en `/usr/share/wayland-protocols/`.
- **Dependencias:** Wayland.

### 2.5 LLVM-22.1.0 (con Clang, RTTI=ON)

- **Para que sirve:** Infraestructura de compilador modular. Mesa lo usa para llvmpipe, r600, radeonsi. Tambien requerido por rust-bindgen.
- **Que instala:** `libLLVM.so`, `libclang.so`, `libclang-cpp.so`, `libLTO.so`, y ~100+ binarios (`clang`, `clang++`, `llc`, `lli`, `opt`, `llvm-config`, `llvm-ar`, `scan-build`, etc.).
- **Dependencias:** CMake.
- **Flag critico:** `-D LLVM_ENABLE_RTTI=ON` (obligatorio para Mesa). `-D LLVM_TARGETS_TO_BUILD=X86`.

### 2.6 SPIRV-Tools + SPIRV-Headers

- **Para que sirve:** Herramientas y headers para compilar/validar SPIR-V (lenguaje intermedio de shaders Vulkan/OpenCL). Requerido por glslang.
- **Que instala:** `libSPIRV-Tools.so`, `spirv-as`, `spirv-dis`, `spirv-val`, `spirv-opt`, `spirv-link`, `spirv-cfg`, headers SPIRV.
- **Dependencias:** CMake.

### 2.7 glslang-16.3.0

- **Para que sirve:** Frontend y validador de shaders OpenGL / Vulkan. Requerido para el soporte Vulkan en Mesa.
- **Que instala:** `libglslang.so`, `libSPIRV.so`, `libglslang-default-resource-limits.so`, `glslangValidator`.
- **Dependencias:** CMake, SPIRV-Tools.

### 2.8 Vulkan-Loader-1.4.350.0 (+ Vulkan-Headers)

- **Para que sirve:** Cargador Vulkan — permite a aplicaciones usar drivers Vulkan. Mesa genera drivers Vulkan que este cargador descubre.
- **Que instala:** `libvulkan.so` (sin programas).
- **Dependencias:** CMake, Vulkan-Headers, Xorg Libraries. Recomendado: Wayland.

### 2.9 SPIRV-LLVM-Translator-22.1.2

- **Para que sirve:** Traduce SPIR-V a LLVM IR y viceversa. Requerido por libclc.
- **Que instala:** `libLLVMSPIRVLib.so`, `llvm-spirv`.
- **Dependencias:** LLVM, SPIRV-Headers.

### 2.10 libclc-22.1.0

- **Para que sirve:** Implementacion de OpenCL C standard library. Requerido para el driver iris de Mesa (Intel).
- **Que instala:** Solo headers en `/usr/include/clc/` y datos en `/usr/share/clc/`.
- **Dependencias:** LLVM, SPIRV-LLVM-Translator.

### 2.11 Cbindgen-0.29.3

- **Para que sirve:** Genera bindings C desde codigo Rust. Requerido para el driver Vulkan nouveau de Mesa.
- **Que instala:** `cbindgen` (binario Rust).
- **Dependencias:** rustc (ya instalado en `/opt/rustc`).

### 2.12 rust-bindgen-0.72.1

- **Para que sirve:** Genera bindings Rust desde headers C/C++. Requerido para el driver Vulkan nouveau de Mesa.
- **Que instala:** `bindgen` (binario Rust).
- **Dependencias:** rustc, LLVM con Clang (runtime).

### 2.13 make-ca-1.16.1

- **Para que sirve:** Configura certificados SSL del sistema. Requerido para descargar dependencias durante el build de nouveau Vulkan.
- **Que instala:** `make-ca` (script shell).
- **Dependencias:** p11-kit (ya instalado en LFS base).

### 2.14 libva-2.23.0 (stub, sin EGL/GLX)

- **Para que sirve:** Video Acceleration API. Permite decodificacion de video acelerada por GPU (VA-API). Tiene dependencia circular con Mesa.
- **Build stub:** Compilar sin soporte EGL/GLX primero, luego de instalar Mesa se recompila.
- **Que instala:** `libva.so`, `libva-drm.so`.
- **Dependencias:** libdrm.

### 2.15 Mesa-26.0.7

- **Para que sirve:** Implementacion open-source de OpenGL, Vulkan, OpenGL ES, EGL. EL paquete grafico central.
- **Flags de build:**
  - `-D platforms=x11,wayland` — soporte Wayland + X11
  - `-D gallium-drivers=auto` — auto-detecta: virgl (VirtIO), llvmpipe (CPU/LLVM), softpipe (CPU)
  - `-D vulkan-drivers=auto` — auto-detecta: swrast (software Vulkan)
  - `-D video-codecs=all` — codecs de video con aceleracion HW
- **Que instala:**
  - **Programas:** `glxgears`, `glxinfo`
  - **Librerias:** `libEGL.so`, `libGL.so`, `libGLESv1_CM.so`, `libGLESv2.so`, `libgbm.so`, `libgallium.so`
  - **Drivers DRI:** stubs y symlinks en `$XORG_PREFIX/lib/dri/`
  - **Drivers VA-API:** `nouveau_drv_video.so`, `r600_drv_video.so`, `radeonsi_drv_video.so`, `virtio_gpu_drv_video.so`
  - **Drivers Vulkan:** `libvulkan_lvp.so`, `libvulkan_radeon.so`, etc.
- **Dependencias:** Xorg Libraries, libdrm, Mako (Python), PyYAML (Python), LLVM, glslang, Vulkan-Loader, wayland-protocols, libclc, cbindgen, rust-bindgen, make-ca, libva.

### 2.16 libva (recompilar con EGL/GLX)

- **Recompilar:** Ahora con soporte EGL y GLX de Mesa para usar VA-API con aceleracion HW completa.
- **Que cambia:** `libva-glx.so`, `libva-egl.so` adicionales.

### 2.17 GLU-9.0.3

- **Para que sirve:** OpenGL Utility Library — funciones auxiliares sobre OpenGL (mipmaps, quadrics, NURBS). Opcional para Plasma.
- **Que instala:** `libGLU.so`.
- **Dependencias:** Mesa.

### 2.18 libepoxy-1.5.10

- **Para que sirve:** Manejo de punteros de funcion OpenGL. Oculta la complejidad de dlopen entre OpenGL, OpenGL ES, EGL, GLX. Requerido por GTK3.
- **Que instala:** `libepoxy.so`.
- **Dependencias:** Mesa.

## Notas sobre GPU acceleration

| Componente | Driver Mesa | Aceleracion |
|------------|-------------|-------------|
| Host QEMU con virgl | `virgl` | HW via GPU del host |
| Sin virgl (fallback) | `llvmpipe` | Software rapido (LLVM) |
| Sin virgl ni LLVM | `softpipe` | Software lento |
| Vulkan | `swrast` | Software rendering |
