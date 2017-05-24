# curveDNA

curveDNA estimates the natural curvature of double-stranded DNA (dsDNA).

## Features

* Optionally prints out an mgl file containing the positions of each base-pair centre of mass and phosphates. mgl files can be visualised with [cogli1](https://sourceforge.net/projects/cogli1/)
* Optionally prints out the distance (in nanometers) between the centres of mass of the terminal base pairs

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
          Print the final configuration in mgl format for each given sequence file
	--end-to-end, -e
          Print the filename, distance between the centres of mass of the terminal base pairs and the length of a "perfect" double helix with the same number of nucleotides as the given sequence (both in nanometers) for each given sequence file

## Ackowledgements

curveDNA uses
* [The Lean Mean C++ Option Parser](http://optionparser.sourceforge.net/), written by Matthias S. Benkmann
* The [OpenGL Mathematics (GLM)](http://glm.g-truc.net/0.9.8/index.html) library 
