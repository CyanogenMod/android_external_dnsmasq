#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := bpf.c cache.c dbus.c dhcp.c dnsmasq.c forward.c helper.c lease.c log.c netlink.c network.c option.c rfc1035.c rfc2131.c tftp.c util.c
LOCAL_C_INCLUDES := bionic/libc/private
LOCAL_SHARED_LIBRARIES := libm

LOCAL_MODULE := dnsmasq

include $(BUILD_EXECUTABLE)

endif
