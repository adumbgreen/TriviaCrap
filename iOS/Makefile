include theos/makefiles/common.mk

TWEAK_NAME = TriviaCrap
TriviaCrap_FILES = Tweak.xm
TriviaCrap_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preguntados"
include $(THEOS_MAKE_PATH)/aggregate.mk
