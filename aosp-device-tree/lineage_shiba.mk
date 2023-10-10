#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from shiba device
$(call inherit-product, device/google/shiba/device.mk)

PRODUCT_DEVICE := shiba
PRODUCT_NAME := lineage_shiba
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="shiba-user 14 UD1A.230803.041 10808477 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/UD1A.230803.041/10808477:user/release-keys
