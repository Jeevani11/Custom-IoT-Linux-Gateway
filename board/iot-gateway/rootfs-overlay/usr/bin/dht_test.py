import time
import board
import adafruit_dht

sensor = adafruit_dht.DHT11(board.D4)

try:
    print("IoT Gateway - DHT11 Sensor Test")
    print("--------------------------------")

    for i in range(5):
        try:
            temperature = sensor.temperature
            humidity = sensor.humidity

            print(f"Temperature: {temperature} °C")
            print(f"Humidity: {humidity} %")
            print("--------------------------------")

        except RuntimeError as error:
            print("Sensor reading error:", error)

        time.sleep(2)

finally:
    sensor.exit()
    print("Sensor test completed.")
