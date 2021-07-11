if(ESP_PLATFORM)

file(GLOB_RECURSE SOURCES lv_demos/src/*.c assets/*.c)

idf_component_register(SRCS ${SOURCES}
                       INCLUDE_DIRS . lv_demos lv_demos/src/ ../
                       REQUIRES lvgl)
target_compile_definitions(${COMPONENT_LIB} PUBLIC "-DLV_CONF_INCLUDE_SIMPLE")
else()
    message(FATAL_ERROR "LVGL LV examples: ESP_PLATFORM is not defined. Try reinstalling ESP-IDF.")
endif()
