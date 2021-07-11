#
# Component Makefile
#

CFLAGS += -DLV_LVGL_H_INCLUDE_SIMPLE

COMPONENT_SRCDIRS := lv_demos          \
    lv_demos/src/lv_demo_benchmark      \
    lv_demos/src/lv_demo_keypad_encoder \
    lv_demos/src/lv_demo_music         \
    lv_demos/src/lv_demo_stress         \
    lv_demos/src/lv_demo_widgets     \
    assets


COMPONENT_ADD_INCLUDEDIRS := $(COMPONENT_SRCDIRS) .
