
import math, numpy  as np, cv2 as cv
from pickletools import uint8
from PIL import Image as im
def BinToDec(n):
    w=0
    for i in range(8):
        w=w+int(n[i])*pow(2,8-i-1)
    return w


# binfile=open("outfile.txt")
binfile=open("C:/Users/Hp/Desktop/infile.coe")
binstr=binfile.read()
height=256
width = 384
binarr= [BinToDec(y) for y in binstr.split()]
print(len(binarr))

imageARR=np.array([np.array(binarr[h*width:(h+1)*width]) for h in range(height)], dtype="uint8")
print(imageARR.shape)
Image_object=im.fromarray(imageARR)
Image_object.save("binarise.jpg")
