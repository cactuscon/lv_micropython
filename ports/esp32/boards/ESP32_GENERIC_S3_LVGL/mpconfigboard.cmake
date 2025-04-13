set(IDF_TARGET esp32s3)

set(LV_CFLAGS "-DLV_CONF_INCLUDE_SIMPLE=1")
set(MICROPY_BOARD_USE_PSRAM 1)
set(MICROPY_HW_ENABLE_LVGL 1)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    ${SDKCONFIG_IDF_VERSION_SPECIFIC}
    boards/sdkconfig.usb
    boards/sdkconfig.ble
    boards/sdkconfig.spiram_sx
    boards/ESP32_GENERIC_S3_LVGL/sdkconfig.board
)
