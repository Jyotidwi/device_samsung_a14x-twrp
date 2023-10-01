#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a14 device
$(call inherit-product, device/samsung/a14/device.mk)

PRODUCT_DEVICE := a14
PRODUCT_NAME := twrp_a14
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A145F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a14nsxx-user 13 TP1A.220624.014 A145FXXU1AWB5 release-keys"

BUILD_FINGERPRINT := samsung/a14nsxx/a14:13/TP1A.220624.014/A145FXXU1AWB5:user/release-keys
