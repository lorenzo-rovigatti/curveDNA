# curveDNA

curveDNA estimates the natural curvature of double-stranded DNA (dsDNA). The algorithm used is explained in 

> [E.S. Shpigelman, E.N. Trifonov and A. Bolshoy, _Bioinformatics_ (1993) **9** (4): 435-440](https://academic.oup.com/bioinformatics/article-abstract/9/4/435/206911/CURVATURE-software-for-the-analysis-of-curved-DNA).

The twist, wedge and direction of the wedge parameters are taken from

> [S. Balasubramanian, F. Xu, and W. K. Olson, _Biophysical journal_ (2009) **96** (6): 2245-2260](http://www.cell.com/biophysj/supplemental/S0006-3495(09)00022-8)

## Features

* Optionally prints out an mgl file containing the positions of each base-pair centre of mass and phosphates. mgl files can be visualised with [cogli1](https://sourceforge.net/projects/cogli1/)
* Optionally prints out to the standard output the sequence filename, the end-to-end distance and the "perfect" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)

## Installation

curveDNA requires cmake and a c++11-compliant gcc

The code can be compiled as follows:

	$ mkdir build
	$ cd build
	$ cmake ..
	$ make

After the compilation stage the curveDNA executable will be placed in the build/bin folder.

## Usage

```curveDNA [options] sequence_file```

## Options

	--help, -h
          Print usage and exit
	--mgl, -m
          Print one mgl file for each sequence file provided. If the name of the input file is sequence.txt, the output file will be named sequence.txt.mgl
	--end-to-end, -e
          Print the sequence filename, the end-to-end distance and the "perfect" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)
          
## Ackowledgements

curveDNA uses
* [The Lean Mean C++ Option Parser](http://optionparser.sourceforge.net/), written by Matthias S. Benkmann
* The [OpenGL Mathematics (GLM)](http://glm.g-truc.net/0.9.8/index.html) library 
