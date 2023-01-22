# Copyright (C) 2022 VoltageOS
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

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

$(call inherit-product, vendor/v4afx/config.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# CherishOS stuff
CHERISH_BUILD_TYPE := OFFICIAL
TARGET_USES_MINI_GAPPS := true
EXTRA_UDFPS_ANIMATIONS := true
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=DanipunK1

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9T Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
