# Nombre de tu tweak
TWEAK_NAME = AlertViewController

# Archivos fuente de tu tweak
AlertViewController_FILES = Tweak.xm

# Frameworks que necesita tu tweak
AlertViewController_FRAMEWORKS = UIKit

# Habilitar el soporte para el modo ARC (Automatic Reference Counting)
AlertViewController_CFLAGS = -fobjc-arc

# Ruta de los headers del iOS SDK
AlertViewController_SDK = iPhoneOS.sdk

# Versión mínima de iOS que soporta tu tweak
AlertViewController_ARCHS = arm64
AlertViewController_TARGET = iphone:clang::13.0

# Directorio de Theos
include $(THEOS)/makefiles/common.mk

# Regla para compilar el tweak
after-install::
	install.exec "killall -9 SpringBoard"
