#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from common msm8996-common
-include device/zuk/msm8996-common/BoardConfigCommon.mk
-include vendor/zuk/msm8996-common/msm8996-common-vendor.mk
-include vendor/zuk/z2_plus/z2_plus-vendor.mk


AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true

DEVICE_PATH := device/zuk/z2_plus

# Assert
TARGET_OTA_ASSERT_DEVICE := z2_plus

# Kernel
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CONFIG := z2_plus_defconfig
TARGET_KERNEL_SOURCE := kernel/zuk/z2_plus

#by LittleBoy

BOARD_USE_LOCAL_INITRD :=true

# Charger
WITH_CM_CHARGER := false
#BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(VENDOR_PATH)/charger/images
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(LOCAL_PATH)/charger/images
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_CMDLINE_NAME  := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "usb_chg"
BACKLIGHT_PATH := "/sys/class/leds/lcd-backlight/brightness"
BLINK_PATH     := "/sys/class/leds/led:rgb_red/blink"
RED_LED_PATH   := "/sys/class/leds/led:rgb_red/brightness"
GREEN_LED_PATH := "/sys/class/leds/led:rgb_green/brightness"
BLUE_LED_PATH  := "/sys/class/leds/led:rgb_blue/brightness"


# <--------------------------------->



#allow arm64 libhybris
HYBRIS_MEDIA_32_BIT_ONLY := false
#WPA_SUPPLICANT_VERSION := VER_0_8_X

# <--------------------------------->


# Lights (see liblight/Android.mk in msm8996-common)
TARGET_LIGHTS_ONLY_RED_LED := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
 
 
# Inherit from the proprietary version
-include vendor/zuk/z2_plus/BoardConfigVendor.mk
