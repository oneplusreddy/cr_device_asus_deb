# Release name
PRODUCT_RELEASE_NAME := deb

# Inherit some AICP  stuff.
$(call inherit-product, vendor/lineage/config/telephony.mk)
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := lineage_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7 2013 LTE
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:6.0.1/MOB30X/3036618:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 6.0.1 MOB30X 3036618 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
