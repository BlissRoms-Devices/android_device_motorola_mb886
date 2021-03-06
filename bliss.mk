# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960_jbbl-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := bliss_mb886
TARGET_VENDOR_PRODUCT_NAME := MB886_att
TARGET_VENDOR_DEVICE_NAME := qinara

$(call inherit-product, device/motorola/mb886/full_mb886.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mb886 \
    BUILD_FINGERPRINT=motorola/MB886_att/qinara:4.1.1/9.8.0Q-97_MB886_FFW-20/27:user/release-keys \
    PRIVATE_BUILD_DESC="motorola/MB886_att/qinara:4.1.1/9.8.0Q-97_MB886_FFW-20/27:user/release-keys"
