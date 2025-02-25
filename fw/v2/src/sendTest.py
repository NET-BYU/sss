import socket
import time
import struct
import random

sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
dataSerializer = struct.Struct("B"*(2+96))
dataBuffer = [0]*(96+2)
dataBuffer[0]=0 # data
dataBuffer[1] = 96 # len
for i in range(96):
    dataBuffer[i+2] = i
    sock.sendto(dataSerializer.pack(*dataBuffer),("172.0.0.3",1883))
    time.sleep(.001)

time.sleep(1)
commandSerializer = struct.Struct("B"*(2+12))
commandBuffer = [0]*(2+12)
commandBuffer[0] = 2
commandBuffer[1] = 12
for i in range(12):
    if i % 2:
        commandBuffer[i+2] = 8
    else:
        commandBuffer[i+2] = 1
for i in range(10):
    sock.sendto(commandSerializer.pack(*commandBuffer),("172.0.0.3",1883))
    # for index, value in enumerate(commandBuffer[2:].reverse()):
    #     commandBuffer[2+index] = value
    # commandBuffer[2:].reverse()
    commandBuffer[2:] = commandBuffer[2:][::-1]
    print(commandBuffer)
    time.sleep(.5)

for i in range(12):
    commandBuffer[2+i] = 1
sock.sendto(commandSerializer.pack(*commandBuffer),("172.0.0.3",1883))

dataBuffer[0] = 6
sock.sendto(dataSerializer.pack(*dataBuffer),("172.0.0.3",1883))

commandBuffer[0] = 4
for i in range(1000):
    for j in range(12):
        commandBuffer[2+j] = random.randint(0,1)
    sock.sendto(commandSerializer.pack(*commandBuffer),("172.0.0.3",1883))
    time.sleep(.013)

for j in range(12):
    commandBuffer[2+j] = 0
    sock.sendto(commandSerializer.pack(*commandBuffer),("172.0.0.3",1883))
 
time.sleep(1)
dataBuffer[0] = 6
sock.sendto(dataSerializer.pack(*dataBuffer),("172.0.0.3",1883))