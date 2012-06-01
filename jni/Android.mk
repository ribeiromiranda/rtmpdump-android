LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := rtmp
PATH_RTMP := rtmpdump/librtmp
LOCAL_CFLAGS := -DRTMPDUMP_VERSION=v2.4 -DNO_CRYPTO
LOCAL_LDLIBS := -llog
LOCAL_SRC_FILES := log.c \
$(PATH_RTMP)/rtmp.c \
$(PATH_RTMP)/amf.c \
$(PATH_RTMP)/hashswf.c \
$(PATH_RTMP)/parseurl.c
					
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/rtmpdump
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := rtmpdump
LOCAL_SRC_FILES := rtmpdump-jni.c
LOCAL_SHARED_LIBRARIES := rtmp
include $(BUILD_SHARED_LIBRARY)
