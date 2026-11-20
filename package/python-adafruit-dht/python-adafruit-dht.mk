PYTHON_ADAFRUIT_DHT_VERSION = 4.0.12
PYTHON_ADAFRUIT_DHT_SOURCE = adafruit_circuitpython_dht-$(PYTHON_ADAFRUIT_DHT_VERSION).tar.gz
PYTHON_ADAFRUIT_DHT_SITE = https://files.pythonhosted.org/packages/source/a/adafruit-circuitpython-dht
PYTHON_ADAFRUIT_DHT_LICENSE = MIT
PYTHON_ADAFRUIT_DHT_DEPENDENCIES = python3 python-adafruit-blinka

define PYTHON_ADAFRUIT_DHT_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/python3.14/site-packages
	$(INSTALL) -D -m 0644 $(@D)/adafruit_dht.py $(TARGET_DIR)/usr/lib/python3.14/site-packages/adafruit_dht.py
endef

$(eval $(generic-package))
