# Done
import math, numpy  as np, cv2 as cv
from pickletools import uint8
from PIL import Image as im
# binary value to decimal value converter
def BinToDec(n):
    w=0
    for i in range(8):
        w=w+int(n[i])*pow(2,8-i-1)
    return w

# open file and read it in string 
binfile=open("/home/rajeevuser/Desktop/verilog/data_out.txt")
binstr=binfile.read()
# definging image specifications
height=182
width = 278
# storing image data into array
binarr= [BinToDec(y) for y in binstr.split('\n')[:height*width]]
# print(len(binarr))
# reshaping array to 2D
imageARR=np.array([np.array(binarr[h*width:(h+1)*width]) for h in range(height)], dtype="uint8")
# print(imageARR.shape)

# conversion to image from array
Image_object=im.fromarray(imageARR)
Image_object.save("rajeev_test.jpg")
 
