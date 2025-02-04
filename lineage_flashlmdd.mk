#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device
$(call inherit-product, device/lge/flashlmdd/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_flashlmdd
PRODUCT_DEVICE := flashlmdd
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := V50 ThinQ
TARGET_VENDOR_PRODUCT_NAME := flashlmdd_lao_com
TARGET_VENDOR_DEVICE_NAME := flashlmdd
PRODUCT_GMS_CLIENTID_BASE := android-lge
RISING_CHIPSET := Snapdragon 855
RISING_MAINTAINER := EAZYBLACK
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="flashlmdd_lao_com" \
    PRIVATE_BUILD_DESC="flashlmdd_lao_com-user 12 SKQ1.211103.001 22300122594d9 release-keys" \
    RISING_CHIPSET="Snapdragon 855" \
    RISING_MAINTAINER="EAZYBLACK"

BUILD_FINGERPRINT := "lge/flashlmdd_lao_com/flashlmdd:12/SKQ1.211103.001/22300122594d9:user/release-keys"
