PYTHON_ADAFRUIT_PLATFORMDETECT_VERSION = 3.90.0
PYTHON_ADAFRUIT_PLATFORMDETECT_SOURCE = adafruit_platformdetect-$(PYTHON_ADAFRUIT_PLATFORMDETECT_VERSION).tar.gz
PYTHON_ADAFRUIT_PLATFORMDETECT_SITE = https://files.pythonhosted.org/packages/source/a/adafruit-platformdetect
PYTHON_ADAFRUIT_PLATFORMDETECT_LICENSE = MIT
PYTHON_ADAFRUIT_PLATFORMDETECT_DEPENDENCIES = python3

define PYTHON_ADAFRUIT_PLATFORMDETECT_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/python3.14/site-packages
	cp -a $(@D)/adafruit_platformdetect $(TARGET_DIR)/usr/lib/python3.14/site-packages/
endef

$(eval $(generic-package))
