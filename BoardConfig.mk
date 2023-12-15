#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lime

# Inherit from Xiaomi bengal
include device/xiaomi/bengal/BoardConfig-bengal.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo,bengal,juice,chime

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

PRODUCT_HARDWARE := lime

# Kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# NFC
ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := $(DEVICE_PATH)/vintf/manifest_lemon.xml

# Inherit the proprietary files
include vendor/xiaomi/lime/BoardConfigVendor.mk
