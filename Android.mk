LOCAL_PATH := $(call my-dir)

ifneq ($(filter gm8go,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
