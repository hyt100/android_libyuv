# This is the Android makefile for libyuv for NDK.
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LIBYUV_ROOT := libyuv
SRC := $(LIBYUV_ROOT)/source

LOCAL_SRC_FILES := \
    $(SRC)/compare.cc           \
    $(SRC)/compare_common.cc    \
    $(SRC)/compare_gcc.cc       \
    $(SRC)/compare_mmi.cc       \
    $(SRC)/compare_msa.cc       \
    $(SRC)/compare_neon.cc      \
    $(SRC)/compare_neon64.cc    \
    $(SRC)/compare_win.cc       \
    $(SRC)/convert.cc           \
    $(SRC)/convert_argb.cc      \
    $(SRC)/convert_from.cc      \
    $(SRC)/convert_from_argb.cc \
    $(SRC)/convert_to_argb.cc   \
    $(SRC)/convert_to_i420.cc   \
    $(SRC)/cpu_id.cc            \
    $(SRC)/planar_functions.cc  \
    $(SRC)/rotate.cc            \
    $(SRC)/rotate_any.cc        \
    $(SRC)/rotate_argb.cc       \
    $(SRC)/rotate_common.cc     \
    $(SRC)/rotate_gcc.cc        \
    $(SRC)/rotate_mmi.cc        \
    $(SRC)/rotate_msa.cc        \
    $(SRC)/rotate_neon.cc       \
    $(SRC)/rotate_neon64.cc     \
    $(SRC)/rotate_win.cc        \
    $(SRC)/row_any.cc           \
    $(SRC)/row_common.cc        \
    $(SRC)/row_gcc.cc           \
    $(SRC)/row_mmi.cc           \
    $(SRC)/row_msa.cc           \
    $(SRC)/row_neon.cc          \
    $(SRC)/row_neon64.cc        \
    $(SRC)/row_win.cc           \
    $(SRC)/scale.cc             \
    $(SRC)/scale_any.cc         \
    $(SRC)/scale_argb.cc        \
    $(SRC)/scale_common.cc      \
    $(SRC)/scale_gcc.cc         \
    $(SRC)/scale_mmi.cc         \
    $(SRC)/scale_msa.cc         \
    $(SRC)/scale_neon.cc        \
    $(SRC)/scale_neon64.cc      \
    $(SRC)/scale_uv.cc          \
    $(SRC)/scale_win.cc         \
    $(SRC)/video_common.cc

common_CFLAGS := -Wall -fexceptions

LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/$(LIBYUV_ROOT)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(LIBYUV_ROOT)/include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/$(LIBYUV_ROOT)/include

LOCAL_MODULE := libyuv_static
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
