PYTHON_ADAFRUIT_PUREIO_VERSION = 1.1.12
PYTHON_ADAFRUIT_PUREIO_SOURCE = adafruit_pureio-$(PYTHON_ADAFRUIT_PUREIO_VERSION).tar.gz
PYTHON_ADAFRUIT_PUREIO_SITE = https://files.pythonhosted.org/packages/source/a/adafruit-pureio
PYTHON_ADAFRUIT_PUREIO_LICENSE = MIT
PYTHON_ADAFRUIT_PUREIO_DEPENDENCIES = python3

define PYTHON_ADAFRUIT_PUREIO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/python3.14/site-packages
	cp -a $(@D)/Adafruit_PureIO $(TARGET_DIR)/usr/lib/python3.14/site-packages/
endef

$(eval $(generic-package))
