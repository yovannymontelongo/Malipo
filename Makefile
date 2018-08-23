ARCHS = armv7 arm64
TARGET = iphone:clang:latest
SDK = iPhoneOS8.1
THEOS_BUILD_DIR = DEBs

include theos/makefiles/common.mk

TWEAK_NAME = Malipo
Malipo_FILES = Tweak.xm
Malipo_FRAMEWORKS = UIKit CoreGraphics AVFoundation AudioToolbox
Malipo_LIBRARIES += cephei
Malipo += -Wl,-segalign,4000
Malipo_CFLAGS = -Wno-deprecated -Wno-deprecated-declarations -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += Malipo_prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
