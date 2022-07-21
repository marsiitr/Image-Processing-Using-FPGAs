# Image-Processing-Using-FPGAs

## ABSTRACT

The aim of this project is to learn the basics of FPGA (its work, functioning, uses) and implement the HDL (Hardware Descriptive Language) learnt for image processing applications. The original task was to perform the following operations on the given greyscale image using FGPA board –
1. Increase brightness by ‘value'
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Increase%20Brightness.jpg" alt="Increase brightness" style="height: 431px; width:571px;"/>

2. Decrease brightness by ‘value’
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Decrease%20Brightness.jpg" alt="Decrease brightness" style="height: 431px; width:571px;"/>
3. Binarize using ‘threshold’
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Binarise.jpg" alt="Binarise" style="height: 431px; width:571px;"/>
4. Invert image
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Inversion.jpg" alt="Inversion" style="height: 431px; width:571px;"/>

Further the team completed the original task and performed more applications –
1. Sharpen
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Sharpening.jpg" alt="Sharpen" style="height: 431px; width:571px;"/>
2. Noise Reduction (Blur)
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Noise%20Reduction(Blur).jpg" alt="Blur" style="height: 431px; width:571px;"/>
3. Edge detection
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Edge%20Detection.jpg" alt="Edge detection" style="height: 431px; width:571px;"/>


## MOTIVATION

FPGA (Field Programmable Gate Array) boards are much better than the conventional ASIC (Application specific Integrated Circuits) in terms of flexibility. Also the biggest advantage of FPGA is that it is reprogrammable and therefore can be re-used for different applications unlike conventional ASICs which are specifically designed for particular tasks. FPGAs have a higher non-reoccurring engineering cost than ASICs.

Image processing is an inseparable part of robotics. To make better robots which can see their surroundings well, we require processing the incoming image to output a better and more clarified image which is well understood by the robots for its task and therefore results in a better functioning robot. Image processing such as edge detection and noise reduction are extremely useful for rovers and drones. 

## SOFTWARE ASPECT OF THE PROJECT

Verilog- Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction. 

Testbench- A testbench is code module that uses hardware description languages (HDL) to describe the stimulus to a logic design and check whether the design's outputs match its specification. In order to check if the code will work perfectly with the FPGA board we first upload the code to a testbench and verify its output.

Python-It is an interpreted high-level object-oriented programming language designed by Guido van Rossum. We used python to convert the input image to a binary file and also to convert the output received by the testbench to convert it back into the image. There are numbers of project libraries which are regularly maintained and are free to use. We used opencv, for image to text conversions and vice-versa, and numpy,  to do required operations much faster and efficiently. Text converted image is basically a numpy array (3D matrix) which represents pixels of image in 2D screen. Before sending the txt file to FPGA, we are required to convert those pixel values (ranging from 0-256) to 8-bit binary value separated by space or new-line. These operations need to be fast so that the processing speed is not affected, hence numpy comes useful. This terminal is then sent to FPGA for further processing.

As an output we again get a text file containing binary data of image. It is then reconverted to decimal values and read to form 2D array of pixels, and then to image. 

Xilinx Vivado - Vivado Design Suite is a software suite produced by Xilinx for synthesis and analysis of hardware description language designs, superseding Xilinx ISE with additional features for system on a chip development and high-level synthesis. Vivado represents a ground-up rewrite and re-thinking of the entire design flow. It is the software used to code the FPGA board.

We use a FPGA board with 5 inputs and one output. Five inputs are-
1. clk (1 bit) [Clock signal]
2. inbyte (8 bits) [Grayscale value of input pixel]
3. select (2 bits) [Select state to toggle functions] 	       
4. value (8 bits) [value by which the inbyte changes]
5. threshold (8 bits) [threshold for binarising image]

And the output is the outbyte containing processed pixel value.
Rest all the parts including image processing and input/output are all done in the HDL code

## COST STRUCTURE
 
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Decrease%20Brightness.jpg" alt="Decrease brightness" style="height: 431px; width:571px;"/>

## APPLICATIONS
Image processing enables robots to become more effective and accurate.
FPGA boards are more flexible than normal ASICs.
It can be used in more complex bots to achieve optimum performance.

## LIMITATIONS
The Verilog software used to code is not so easy to use and we faced a lot of problems while implementing the code.
This project is based on testbench for the output whereas ideally it must have performed on an FPGA board.

## FUTURE IMPROVEMENT
We can use a variety of operations using FPGA boards like movement control, IOT based controls, smart monitoring systems, etc. In the field of image processing, we can also work on various complex filters such as median filter, defect detection, movement detection and can also improvise this project for video processing as well.

## TEAM MEMBERS

1. ABHIKANKSHIT SINGH
2. JAYANT BAHUGUNA 
3. MAYANK RAJ
4. RAJEEV GUPTA

## MENTORS
1. APURBA PRASAD PADHY

## REFERENCES
