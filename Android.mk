# yangxudong@leadcoretech.com
#

live555_dirs := UsageEnvironment BasicUsageEnvironment groupsock liveMedia mediaServer 

include $(call all-named-subdir-makefiles,$(live555_dirs))
