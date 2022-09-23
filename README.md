# Image-Processing-Using-FPGAs

## ABSTRACT
<div style="text-align: justify">
This project aims to learn the basics of FPGA (its work, functioning, and uses) and implement the HDL (Hardware Descriptive Language) learned for image processing applications. The original task was to perform the following operations on the given grayscale image using the FGPA board –</div>

1. Increase brightness by ‘value' [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Increase%20Brightness/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Increase%20Brightness.jpg" alt="Increase brightness" style="height: 287px; width:380px;"/></p>

2. Decrease brightness by ‘value’ [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Decrease%20Brightness/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Decrease%20Brightness.jpg" alt="Decrease brightness" style="height: 287px; width:380px;"/></p>

3. Binarize using ‘threshold’ [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Binarise/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Binarise.jpg" alt="Binarise" style="height: 287px; width:380px;"/></p>

4. Invert image [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Invert/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Inversion.jpg" alt="Inversion" style="height: 287px; width:380px;"/></p>

Further, the team completed the original task and performed more applications –

1. Sharpen [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Sharpen/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Sharpening.jpg" alt="Sharpen" style="height: 287px; width:380px;"/></p>

2. Noise Reduction (Blur) [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Noise%20reduction/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Noise%20Reduction(Blur).jpg" alt="Blur" style="height: 287px; width:380px;"/></p>

3. Edge detection [(Go to code)](https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/src/Edge%20detection/Source.v)

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Original%20Image.jpg" alt="Original Image" style="height: 287px; width:380px;"/><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Edge%20Detection.jpg" alt="Edge detection" style="height: 287px; width:380px;"/></p>


## MOTIVATION
<div style="text-align: justify">
FPGA (Field Programmable Gate Array) boards are much better than the conventional ASIC (Application-specific Integrated Circuits) in terms of flexibility. Also, the most significant advantage of FPGA is that it is reprogrammable and, therefore, can be reused for different applications, unlike conventional ASICs specifically designed for particular tasks. FPGAs have a higher non-reoccurring engineering cost than ASICs.<br>
 
Image processing is an inseparable part of robotics. To make better robots that can see their surroundings well, we require processing the incoming image to output a better and more clarified image that is well understood by the robots for its task and therefore results in a better functioning robot. Image processing, such as edge detection and noise reduction, is beneficial for rovers and drones. </div>

## SOFTWARE ASPECT OF THE PROJECT

<div style="text-align: justify">

Python - is an interpreted, object-oriented, high-level programming language with dynamic semantics. It's high-level built-in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components. Python supports modules and packages, which encourages program modularity and code reuse.<br><br>
Verilog-Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction.<br><br>
Xilinx Vivado-Vivado Design Suite is a software suite produced by Xilinx for synthesis and analysis of hardware description language designs, superseding Xilinx ISE with additional features for system on a chip development and high-level synthesis. Vivado represents a ground-up rewrite and re-thinking of the entire design flow. It is the software used to code the FPGA board.<br><br>
TestBench- A testbench is code module that uses hardware description languages (HDL) to describe the stimulus to a logic design and check whether the design's outputs match its specification. In order to check if the code will work perfectly with the FPGA board we first upload the code to a testbench and verify its output.<br><br>
VS Code-Visual Studio Code, also commonly referred to as VS Code, is a source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git.<br><br>
OpenCV-OpenCV is a library of programming functions mainly aimed at real-time computer vision. It was originally developed by Intel and later supported by Willow Garage, then Itseez. The library is cross-platform and free for use under the open-source Apache 2 License.</div><br>

## WORKING
<div style="text-align: justify"><br>
- Convert the original image to a binary file with the help of python via OpenCV and VS code. <br>
- Open vivado and add input variables such as value, threshold, select state, and file paths to the testbench file. <br>
- Run the simulation for some time. <br>
- Now close the simulation and check the folder. An ouput binary file would be created. <br>
- Convert the output binary file to an image via python again. <br>
- We get the processed image.<br>
We use an FPGA board with five inputs and one output. Five inputs are-<br><br>
* clk (1 bit) [Clock signal]<br>
* inbyte (8 bits) [Grayscale value of input pixel]<br>
* select (2 bits) [Select state to toggle functions]<br>
* value (8 bits) [value by which the inbyte changes]<br>
* threshold (8 bits) [threshold for binarising image]<br><br>
And the output is the outbyte containing the processed pixel value. Rest all the parts, including image processing and input/output, are all done in the HDL code</div>

<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Workflow.jpg" alt="Edge detection"/></p>

## COST STRUCTURE
 
<p align="center"><img src="https://github.com/OARSS/Image-Processing-Using-FPGAs/blob/main/Images%20and%20Videos/Images/Cost%20Table.jpg" alt="Cost table" style="height: 159px; width:473px;"/></p>

## APPLICATIONS
<div style="text-align: justify">
Image processing enables robots to become more effective and accurate.
FPGA boards are more flexible than normal ASICs.
It can be used in more complex bots to achieve optimum performance.
</div>

## LIMITATIONS
<div style="text-align: justify">
The Verilog software used to code is not so easy to use, and we faced many problems while implementing the code. This project is based on a testbench for the output, whereas ideally, it must have been performed on an FPGA board.</div>

## FUTURE IMPROVEMENT
<div style="text-align: justify">
We can use a variety of operations using FPGA boards like movement control, IOT-based controls, intelligent monitoring systems, etc. In the field of image processing, we can also work on various complex filters such as median filter, defect detection, and movement detection and improvise this project for video processing.</div>

## TEAM MEMBERS

1. [ABHIKANKSHIT SINGH](https://github.com/OARSS)
2. [JAYANT BAHUGUNA](https://github.com/jayantb007) 
3. [MAYANK RAJ](https://github.com/mayank4655)
4. [RAJEEV GUPTA](https://github.com/Rajeev-Gupta555)

## MENTORS

1. [APURBA PRASAD PADHY](https://github.com/apurba-pp)
2. [CHIRAG ARORA](https://github.com/chirag-ar)

## REFERENCES

1. https://verilogguide.readthedocs.io/en/latest/
2. https://rashmistudents.yolasite.com/resources/Verilog%20HDL%20-%20Samir%20Palnitkar.pdf
