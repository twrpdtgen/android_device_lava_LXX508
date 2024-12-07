#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LXX508 device
$(call inherit-product, device/lava/LXX508/device.mk)

PRODUCT_DEVICE := LXX508
PRODUCT_NAME := omni_LXX508
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX508
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LXX508-user 12 SP1A.210812.016 1702361144 release-keys"

BUILD_FINGERPRINT := LAVA/LXX508/LXX508:13/TP1A.220624.014/1702361144:user/release-keys
