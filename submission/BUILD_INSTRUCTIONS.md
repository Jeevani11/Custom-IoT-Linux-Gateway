# Reproducible Build Instructions

## 1. Project Details

- Project: Custom IoT Linux Gateway
- Hardware: Raspberry Pi 4 Model B
- Architecture: AArch64 (64-bit)
- Build system: Buildroot 2026.11-rc1
- Linux kernel: 6.12.61-v8

## 2. Prerequisites

- Ubuntu Linux
- Git
- Buildroot dependencies
- Raspberry Pi 4 Model B

## 3. Buildroot Configuration

The project uses a custom Buildroot external tree containing board configurations, custom packages and root filesystem overlays.

The configuration files are available in the `submission/` directory.

## 4. Build Procedure

Obtain the Buildroot 2026.11-rc1 source and place it in the project directory as `buildroot/`.

From the project root, configure the external tree and build:

```bash
cd buildroot
make BR2_EXTERNAL=.. raspberrypi4_final_defconfig
make
```

The build generates the SD card image under:

```text
buildroot/output/images/sdcard.img
```

## 5. Output Artifacts

- `sdcard.img`: Bootable Raspberry Pi image.
- `kernel.config`: Linux kernel configuration.
- `buildroot.config`: Buildroot configuration.
- `device-tree/`: Raspberry Pi 4 device-tree files.
- `package-manifest.csv`: Package manifest.
- `host-manifest.csv`: Host package manifest.

## 6. Flashing

Flash `sdcard.img` to a microSD card using Raspberry Pi Imager or another suitable image-writing tool.

Insert the card into the Raspberry Pi 4 and power it on.

