LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	HashTable.cpp  strDup.cpp  UsageEnvironment.cpp

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../UsageEnvironment/include \
	$(LOCAL_PATH)/../groupsock/include \
	$(LOCAL_PATH)/../BasicUsageEnvironment/include

LOCAL_SHARED_LIBRARIES:= \
	libbinder                       \
	libcutils                       \
	liblog                          \
	libutils                        \

LOCAL_MODULE:= libUsageEnvironment 

LOCAL_MODULE_TAGS:= optional

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)

