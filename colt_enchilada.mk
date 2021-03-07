#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from enchilada device
$(call inherit-product, device/oneplus/enchilada/device.mk)

# Inherit some common ColtOS stuff.
$(call inherit-product, vendor/colt/config/common.mk)

TARGET_FACE_UNLOCK_SUPPORTED := true

# For Device maintainer and CPU Information
PRODUCT_PROPERTY_OVERRIDES += \
ro.colt.maintainer=CYB3R0ID694 \
ro.colt.cpu=SDM845


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := colt_enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus6 \
    PRODUCT_NAME=OnePlus6 \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210305.006 7119741 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys

