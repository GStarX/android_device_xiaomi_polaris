#
# Copyright (C) 2026 The Polaris-TerminalOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# TerminalOS product for Xiaomi MIX 2S (polaris).
#
# This product inherits the upstream LineageOS polaris product unchanged and adds
# the TerminalOS configuration from vendor/terminalos. It intentionally does not
# modify device.mk / BoardConfig.mk / vendor blobs.
#
# Build: lunch terminalos_polaris-userdebug && brunch terminalos_polaris
#
# Status: NOT BUILT, NOT TESTED. See the Polaris-TerminalOS repository docs
# (docs/03, docs/04) for the verification requirements before claiming support.
#

# Inherit the upstream polaris product (device.mk, sdm845-common, vendor/lineage config).
$(call inherit-product, device/xiaomi/polaris/lineage_polaris.mk)

# Inherit TerminalOS product configuration (Termux prebuilt, TerminalHome, overlays).
# This repository is fetched to vendor/terminalos via the project local manifest.
$(call inherit-product, vendor/terminalos/terminalos.mk)

# Device identifier. This must come after all inclusions, otherwise the values
# from lineage_polaris.mk would overwrite them.
PRODUCT_NAME := terminalos_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := Xiaomi

# PRODUCT_BUILD_PROP_OVERRIDES from lineage_polaris.mk are inherited on purpose:
# they keep the stock firmware fingerprint used for OTA/firmware assertions.
