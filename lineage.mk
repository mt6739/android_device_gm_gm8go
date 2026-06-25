#
# Copyright 2012 The Android Open Source Project
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
include $(SRC_TARGET_DIR)/product/treble_common.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/gm/gm8go/gm8go-vendor.mk)

# Inherit from gm8go device
$(call inherit-product, device/gm/gm8go/device.mk)

# Init
PRODUCT_PACKAGES += \
    init.mt6739.rc

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6739:/system/etc/fstab.mt6739

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gm8go
PRODUCT_NAME := lineage_gm8go
PRODUCT_BRAND := gm
PRODUCT_MODEL := GM8 go
PRODUCT_MANUFACTURER := Vanzo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=gm8go \
    PRODUCT_NAME=gm8go \
    PRIVATE_BUILD_DESC="full_fd3901-user 8.1.0 O11019 OGMG18A-s release-keys"

BUILD_FINGERPRINT := gm/GM8_go/GM8_go_sc:8.1.0/O11019/OGMG18A-s:user/release-keys
