# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(TARGET_BOARD_AUTO),true)
  ifneq ($(filter msm8996 msm8998 sdm845 sdm710,$(TARGET_BOARD_PLATFORM)),)
    MY_LOCAL_PATH := $(call my-dir)
    include $(MY_LOCAL_PATH)/hal/Android.mk
    include $(MY_LOCAL_PATH)/voice_processing/Android.mk
    include $(MY_LOCAL_PATH)/visualizer/Android.mk
    include $(MY_LOCAL_PATH)/post_proc/Android.mk
  endif
endif
