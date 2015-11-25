# Release name
PRODUCT_RELEASE_NAME := dlx

# overlays
PRODUCT_PACKAGE_OVERLAYS += device/htc/dlx/overlay

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/du/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := du_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dlx \
    BUILD_FINGERPRINT=htc/verizon_wwe/dlx:4.4.2/KOT49H/322791.5:user/release-keys \
    PRIVATE_BUILD_DESC="4.09.605.5 CL322791 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
