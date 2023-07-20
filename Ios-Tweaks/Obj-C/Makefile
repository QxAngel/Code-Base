# Nombre de tu tweak
TWEAK_NAME = UIAlert

# Archivos fuente de tu tweak
UIAlert_FILES = Tweak.xm

# Frameworks que necesita tu tweak
UIAlert_FRAMEWORKS = UIKit

# Habilitar el soporte para el modo ARC (Automatic Reference Counting)
UIAlert_CFLAGS = -fobjc-arc

# Ruta de los headers del iOS SDK
UIAlert_SDK = iPhoneOS.sdk

# Versión mínima de iOS que soporta tu tweak
UIAlert_ARCHS = arm64
UIAlert_TARGET = iphone:clang::13.0

# Directorio de Theos
include $(THEOS)/makefiles/common.mk

# Regla para compilar el tweak
after-install::
	install.exec "killall -9 SpringBoard"
