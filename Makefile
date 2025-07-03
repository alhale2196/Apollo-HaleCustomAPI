export ARCHS = arm64
export libFLEX_ARCHS = arm64

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = Apollo
THEOS_LEAN_AND_MEAN = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ApolloHaleCustomApi

ApolloHaleCustomApi_FILES = Tweak.xm CustomAPIViewController.m CustomAccountLoginViewController.m DefaultSubreddits.m UIWindow+Apollo.m fishhook.c
ApolloHaleCustomApi_FRAMEWORKS = UIKit
ApolloHaleCustomApi_CFLAGS = -fobjc-arc -Wno-unguarded-availability-new -Wno-module-import-in-extern-c

ApolloHaleCustomApi_OBJ_FILES = $(shell find ffmpeg-kit -name '*.a')

SUBPROJECTS += Tweaks/FLEXing/libflex

CONTROL_FILE = $(THEOS_PROJECT_DIR)/control

# Generate Version.h
before-all:: generate_version_h

generate_version_h:
	@echo "Generating Version.h from control file"
	@version=$$(grep '^Version:' $(CONTROL_FILE) | cut -d' ' -f2); \
	echo "#define TWEAK_VERSION \"v$${version}\"" > $(THEOS_PROJECT_DIR)/Version.h

include $(THEOS_MAKE_PATH)/aggregate.mk
include $(THEOS_MAKE_PATH)/tweak.mk