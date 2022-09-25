from ast import Pass
import cv2
import numpy as np
# reading image to numpy array
image = cv2.imread("lion.jpg")
print(image)
# creating output file 
coe = open("/home/rajeevuser/Desktop/verilog/data_in.txt", "w")

# print(siz)
height=len(image)

# *************write to file************

# move in row
for i in range(height):
    row=image[i]
    # move in column
    for j in row:
        x = ""
        # pixel to binary
        for k in j:
            bi = bin(k)[2:]
            for d in range(8-len(bi)):
                bi = '0' + bi
            x = x+bi
        x = int(int(x[0:8],2)/3+int(x[8:16],2)/3+int(x[16:],2)/3)
        x = bin(x)[2:]
        n = len(x)
        coe.write('0'*(8-n)+ x +  '\n')
coe.close() 
