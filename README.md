# Custom IoT Linux Gateway

A lightweight, application-specific Linux distribution developed for Raspberry Pi 4 Model B using Buildroot.

## Project Overview

This project implements a customised Linux distribution for an IoT gateway that collects environmental data from a DHT11 sensor and communicates through MQTT.

## Hardware

- Raspberry Pi 4 Model B (64-bit)
- DHT11 Temperature and Humidity Sensor
- 64 GB microSD Card
- Ubuntu 22.04.5 LTS development environment

## Software Stack

- Buildroot 2026.11-rc1
- Linux Kernel 6.12.61-v8
- AArch64 Architecture
- Python 3.14.10
- Mosquitto MQTT 2.1.2

## Features

- Lightweight custom Linux distribution
- GPIO-based DHT11 sensor communication
- Automatic sensor application startup
- MQTT broker and client utilities
- Custom Buildroot packages for Adafruit libraries
- Ethernet and SSH connectivity

## Project Structure

- `board/` - Raspberry Pi board configuration and root filesystem overlay
- `package/` - Custom Buildroot packages
- `submission/` - Buildroot configuration files
- `dht_test.py` - DHT11 sensor testing application
- `Config.in` - External package configuration
- `external.mk` - External Buildroot makefile
- `external.desc` - External tree description

## Build System

Buildroot is used to generate a minimal Linux system specifically configured for the Raspberry Pi 4.

The generated SD card image is approximately 153 MB.

The complete Buildroot source and generated build files are excluded from this repository. The required version is Buildroot 2026.11-rc1.

## Current Implementation Status

- [x] Custom Linux image built
- [x] Raspberry Pi successfully booted
- [x] DHT11 sensor readings tested
- [x] Automatic application startup configured
- [x] Mosquitto broker installed and started
- [ ] MQTT publisher-subscriber delivery verification
- [ ] Integration of sensor readings with MQTT
- [ ] MQTT authentication and network hardening
- [ ] Read-only root filesystem with writable overlay
- [ ] Signed OTA update verification
- [ ] Performance benchmarking

## Team

Four-member academic project.

## License

Open-source components are used. Individual component licences and attributions will be documented in the project report.
