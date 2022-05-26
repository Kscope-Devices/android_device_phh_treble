#
# Copyright (C) 2022 The KaleidoscopeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_release.mk)

# Inherit from treble device.
$(call inherit-product, device/phh/treble/device.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_NAME := kscope_treble
PRODUCT_DEVICE := treble
PRODUCT_MODEL := Phh-Treble for KaleidoscopeOS

# Overwrite the inherited "emulator" characteristics.
PRODUCT_CHARACTERISTICS := device

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440
