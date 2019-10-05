#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from land device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Y7 2018
PRODUCT_DEVICE := london
PRODUCT_MANUFACTURER := Huawei
PRODUCT_NAME := lineage_london

PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_VENDOR_PRODUCT_NAME := london

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="london-user 8.0.0.144 MMB29M V9.6.1.0.MALMIFD release-keys"

BUILD_FINGERPRINT := Huawei/london/london:8.0.0.144/MMB29M/V9.6.1.0.MALMIFD:user/release-keys
