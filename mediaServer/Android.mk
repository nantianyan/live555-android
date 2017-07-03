LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	DynamicRTSPServer.cpp \
	live555MediaServer.cpp \

LOCAL_C_INCLUDES:= \
	$(TOP)/system/core/libion/include \
  	$(LOCAL_PATH)/../UsageEnvironment/include \
	$(LOCAL_PATH)/../groupsock/include \
	$(LOCAL_PATH)/../liveMedia/include \
	$(LOCAL_PATH)/../BasicUsageEnvironment/include


LOCAL_STATIC_LIBRARIES:= \
	libliveMedia \
	libgroupsock \
	libBasicUsageEnvironment \
	libUsageEnvironment \
	
LOCAL_SHARED_LIBRARIES:= \
	libbinder                       \
	libcutils                       \
	liblog                          \
	libutils                        \

LOCAL_MODULE:= live555MediaServer 

LOCAL_MODULE_TAGS:= optional

include $(BUILD_EXECUTABLE)


