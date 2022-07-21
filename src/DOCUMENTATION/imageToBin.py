from ast import Pass
import cv2

image = cv2.imread("original_blur1.png")

coe = open("input_blur_bin_FPGA.coe", "w")

siz = image.shape
print(siz)
height=len(image)
for i in range(height):
    row=image[i]
    for j in row:
        x = ""
        for k in j:
            bi = bin(k)[2:]
            for d in range(8-len(bi)):
                bi = '0' + bi
            x = x+bi
        x = int(int(x[0:8],2)/3+int(x[8:16],2)/3+int(x[16:],2)/3)
        x = bin(x)[2:]
        n = len(x)
        coe.write('0'*(8-n)+ x +  ' ')
coe.close() 
