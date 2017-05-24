# curveDNA

curveDNA estimates the natural curvature of double-stranded DNA (dsDNA).

## Features
* Optionally prints out an mgl file containing the positions of each base-pair centre of mass and phosphates. mgl files can be visualised with [cogli1](https://sourceforge.net/projects/cogli1/)
* Optionally prints out the distance between the centres of mass of the terminal base pairs

## Installation
curveDNA requires cmake and a c++11-compliant gcc

The code can be compiled as follows:
* ``mkdir build``
* ``cd build``
* ``cmake ..``
* ``make``

If the compilation is successful, the curveDNA executable will be placed in the build/bin folder.

## Usage
``curveDNA [options] sequence_file``

## Options


## Ackowledgements
* curveDNA uses [The Lean Mean C++ Option Parser](http://optionparser.sourceforge.net/), written by Matthias S. Benkmann
