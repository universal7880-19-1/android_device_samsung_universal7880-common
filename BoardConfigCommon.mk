#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

COMMON_PATH := device/samsung/universal7880-common

BUILD_BROKEN_DUP_RULES := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos7880
TARGET_BOOTLOADER_BOARD_NAME := universal7880
BOARD_VENDOR := samsung

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Audio
AUDIOSERVER_MULTILIB := 32

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CLANG_COMPILE := false
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_LINUX_KERNEL_VERSION := 3.18

# Kernel config
TARGET_KERNEL_SOURCE := kernel/samsung/universal7880

# Manifest
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4504682496
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25656557568
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4

# blockdev --getbsz /dev/block/mmcblk0p9
BOARD_FLASH_BLOCK_SIZE := 4096

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Root extra folders
BOARD_ROOT_EXTRA_FOLDERS += efs
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# ELF
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Samsung HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung

# Graphics
USE_OPENGL_RENDERER := true

# VR Front buffer
#BOARD_USES_VR_FRONT_BUFFER := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# HWComposer
BOARD_USES_VPP := true
#BOARD_USES_VPP_V2 := true // 8890 only
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
#BOARD_USES_HWC_SERVICES := true

# Device Tree
BOARD_USES_DT := true

# WiFiDisplay
#BOARD_USES_VIRTUAL_DISPLAY := true - depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# SCALER
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_SCALER_M2M1SHOT := true

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WPA_SUPPLICANT_USE_HIDL := true
WIFI_AVOID_IFACE_RESET_MAC_CHANGE := true

# Wifi loader
BOARD_HAVE_SAMSUNG_WIFI := true

# Build fingerprint
BUILD_FINGERPRINT := "samsung/a7y17lteskt/a7y17lteskt:9/PPR1.180610.011/A720SKSU5CUJ2:user/release-keys"
PRIVATE_BUILD_DESC := "a7y17lteskt-user 9 PPR1.180610.011 A720SKSU5CUJ2 release-keys"

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# DT2W
TARGET_TAP_TO_WAKE_NODE := /sys/class/sec/tsp/dt2w_enable

# RIL
BOARD_MODEM_TYPE := ss333
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_USES_VND_SECRIL := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2021-10-01

# Release tools
#TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# Recovery
#RECOVERY_VARIANT := twrp
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/ramdisk/fstab.samsungexynos7880

# TWRP
ifeq ($(RECOVERY_VARIANT),twrp)
PRODUCT_COPY_FILES += $(COMMON_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_USE_TOOLBOX=true
TW_EXCLUDE_TWRPAPP := true
endif

# Seccomp filters
BOARD_SECCOMP_POLICY += $(COMMON_PATH)/seccomp

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib/libbauthserver.so|libbauthtzcommon_shim.so \
    /vendor/lib64/libbauthserver.so|libbauthtzcommon_shim.so \
    /system/lib/libcamera_client.so|libcamera_client_shim.so \
    /system/lib64/libcamera_client.so|libcamera_client_shim.so \
    /system/lib/libexynoscamera.so|libexynoscamera_shim.so \
    /system/lib64/libexynoscamera.so|libexynoscamera_shim.so

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(COMMON_PATH)
