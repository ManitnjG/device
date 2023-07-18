#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X01BD

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_X01BD,X01BD


BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true


# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := X01BD_defconfig

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/tpd_gesture"

# Inherit the proprietary files
include vendor/asus/X01BD/BoardConfigVendor.mk
