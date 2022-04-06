import serial
import time

ser = serial.Serial('/dev/ttyACM0',9600)
ser.timeout = 1
# ser.open()
print('hello')

while True:
    print(ser.readline())
    time.sleep(0.5)
ser.close()