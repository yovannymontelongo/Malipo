THEOS_BUILD_DIR = DEBs
ARCHS = armv7 arm64
SDK = iPhoneOS8.1
TARGET = iphone:clang:latest

include theos/makefiles/common.mk

BUNDLE_NAME = Malipo
Malipo_FILES = Malipo.mm
Malipo_INSTALL_PATH = /Library/PreferenceBundles
Malipo_FRAMEWORKS = UIKit MessageUI CoreGraphics AVFoundation AudioToolbox
Malipo_PRIVATE_FRAMEWORKS = Preferences
Malipo_LIBRARIES += cepheiprefs MobileGestalt
Malipo_CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -Wno-error

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Malipo.plist$(ECHO_END)
