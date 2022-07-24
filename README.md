# Image-Processing-Using-FPGAs

## ABSTRACT

The aim of this project is to learn the basics of FPGA (its work, functioning, uses) and implement the HDL (Hardware Descriptive Language) learnt for image processing applications. The original task was to perform the following operations on the given grayscale image using FGPA board –
1. Increase brightness by ‘value'

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Increase%20Brightness.jpg" alt="Increase brightness" style="height: 431px; width:571px;"/>

2. Decrease brightness by ‘value’

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Decrease%20Brightness.jpg" alt="Decrease brightness" style="height: 431px; width:571px;"/>

3. Binarize using ‘threshold’

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Binarise.jpg" alt="Binarise" style="height: 431px; width:571px;"/>

4. Invert image

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Inversion.jpg" alt="Inversion" style="height: 431px; width:571px;"/>

Further the team completed the original task and performed more applications –

1. Sharpen

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Sharpening.jpg" alt="Sharpen" style="height: 431px; width:571px;"/>

2. Noise Reduction (Blur)

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Noise%20Reduction(Blur).jpg" alt="Blur" style="height: 431px; width:571px;"/>

3. Edge detection

<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Edge%20Detection.jpg" alt="Edge detection" style="height: 431px; width:571px;"/>


## MOTIVATION

FPGA (Field Programmable Gate Array) boards are much better than the conventional ASIC (Application specific Integrated Circuits) in terms of flexibility. Also the biggest advantage of FPGA is that it is reprogrammable and therefore can be re-used for different applications unlike conventional ASICs which are specifically designed for particular tasks. FPGAs have a higher non-reoccurring engineering cost than ASICs.

Image processing is an inseparable part of robotics. To make better robots which can see their surroundings well, we require processing the incoming image to output a better and more clarified image which is well understood by the robots for its task and therefore results in a better functioning robot. Image processing such as edge detection and noise reduction are extremely useful for rovers and drones. 

## SOFTWARE ASPECT OF THE PROJECT

Python - is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python supports modules and packages, which encourages program modularity and code reuse.

Verilog-Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction.

Xilinx Vivado-Vivado Design Suite is a software suite produced by Xilinx for synthesis and analysis of hardware description language designs, superseding Xilinx ISE with additional features for system on a chip development and high-level synthesis. Vivado represents a ground-up rewrite and re-thinking of the entire design flow. It is the software used to code the FPGA board.

TestBench- A testbench is code module that uses hardware description languages (HDL) to describe the stimulus to a logic design and check whether the design's outputs match its specification. In order to check if the code will work perfectly with the FPGA board we first upload the code to a testbench and verify its output.

VS Code-Visual Studio Code, also commonly referred to as VS Code, is a source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git.

OpenCV-OpenCV is a library of programming functions mainly aimed at real-time computer vision. Originally developed by Intel, it was later supported by Willow Garage then Itseez. The library is cross-platform and free for use under the open-source Apache 2 License.

## WORKING
- Convert the original image to binary file with the help of python via OpenCV and VS code.
- Open vivado and add input variables such as value, threshold, select state and file paths to the testbench file.
- Run the simulation for some time .
- Now close the simulation and check the folder. A ouput binary file would be created.
- Convert the output binary file to image via python again.
- We get the processed image. 

We use a FPGA board with 5 inputs and one output. Five inputs are-
1. clk (1 bit) [Clock signal]
2. inbyte (8 bits) [Grayscale value of input pixel]
3. select (2 bits) [Select state to toggle functions] 	       
4. value (8 bits) [value by which the inbyte changes]
5. threshold (8 bits) [threshold for binarising image]

And the output is the outbyte containing processed pixel value.
Rest all the parts including image processing and input/output are all done in the HDL code

## COST STRUCTURE
 
<img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Cost%20Table.jpg" alt="Cost table" style="height: 159px; width:473px;"/>

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
2. CHIRAG ARORA

## REFERENCES

1. https://verilogguide.readthedocs.io/en/latest/
2. https://rashmistudents.yolasite.com/resources/Verilog%20HDL%20-%20Samir%20Palnitkar.pdf
