PYTHON_ADAFRUIT_BLINKA_VERSION = 10.1.0
PYTHON_ADAFRUIT_BLINKA_SOURCE = adafruit_blinka-$(PYTHON_ADAFRUIT_BLINKA_VERSION).tar.gz
PYTHON_ADAFRUIT_BLINKA_SITE = https://files.pythonhosted.org/packages/source/a/adafruit-blinka
PYTHON_ADAFRUIT_BLINKA_LICENSE = MIT
PYTHON_ADAFRUIT_BLINKA_DEPENDENCIES = python3 python-adafruit-platformdetect python-adafruit-pureio python-gpiod python-sysv-ipc libgpiod2

define PYTHON_ADAFRUIT_BLINKA_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/python3.14/site-packages
	cp -a $(@D)/src/. $(TARGET_DIR)/usr/lib/python3.14/site-packages/
	rm -f $(TARGET_DIR)/usr/lib/python3.14/site-packages/adafruit_blinka/microcontroller/amlogic/a311d/pulseio/libgpiod_pulsein
	rm -f $(TARGET_DIR)/usr/lib/python3.14/site-packages/adafruit_blinka/microcontroller/bcm283x/pulseio/libgpiod_pulsein
	chmod 0755 $(TARGET_DIR)/usr/lib/python3.14/site-packages/adafruit_blinka/microcontroller/bcm283x/pulseio/libgpiod_pulsein64
endef

$(eval $(generic-package))
