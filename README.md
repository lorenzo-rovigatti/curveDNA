# curveDNA

curveDNA estimates the natural curvature of double-stranded DNA (dsDNA). The algorithm used is explained in 

> [E. S. Shpigelman, E. N. Trifonov and A. Bolshoy, _Bioinformatics_ (1993) **9**, pp. 435-440](https://academic.oup.com/bioinformatics/article-abstract/9/4/435/206911/CURVATURE-software-for-the-analysis-of-curved-DNA).

curveDNA supports three sets of twist, wedge and direction of the wedge parameters, taken from

* > [S. Balasubramanian, F. Xu, W. K. Olson, _Biophys J._ (2009) **6**, pp. 2245-2260](http://www.sciencedirect.com/science/article/pii/S0006349509000228)
* > [A. Bolshoy, P. McNamara, R. E. Harrington and E. N. Trifonov, _Proc. Natl. Aca. Sci. USA_ (1991) **88**, pp. 2312-2316](https://www.ncbi.nlm.nih.gov/pubmed/2006170)
* > [P. De Santis, A. Palleschi, M. Savino and A. Scipioni, _Biochem._ (1989) **28**, pp. 8706-8713](http://pubs.acs.org/doi/abs/10.1021/bi00448a006)

## Features

* Can print the local bending and curvature as defined in [D. S. Goodsell and R. E. Dickerson, _Nucleic Acid Research_ (1994) **22** (24): 5497-5503](https://academic.oup.com/nar/article-lookup/doi/10.1093/nar/22.24.5497)
* Can print an mgl file containing the positions of each base-pair centre of mass and phosphates. mgl files can be visualised with [cogli1](https://sourceforge.net/projects/cogli1/)
* Can print the standard output the sequence filename, the end-to-end distance and the "perfect" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)

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
    --bending[=1], -b
          Print the local bending of the sequence. The output filename is the input filename plus the .bnd extension. The optional argument sets the bracket value used to compute the local bending (defaults to 1)
	--curvature[=15], -c
          Print the curvature of the sequence. The output filename is the input filename plus the .crv extension. The optional argument sets the bracket value used to compute the curvature (defaults to 15)
	--params=SET,
			Select the set of parameters to be used in the calculations. SET can be b (Bolshoy et al, PNAS 1991), c (Cacchione et al, Biochem 1989) or o (default value, Balasubramanian et al, Biophys. J. 2009)
          
## Ackowledgements

* We thank [Elio Abbondanzieri](https://sites.google.com/site/abbondanzierilab/home) for providing information, papers and bits of code to help us getting started 
* curveDNA uses
	* [The Lean Mean C++ Option Parser](http://optionparser.sourceforge.net/), written by Matthias S. Benkmann
	* The [OpenGL Mathematics (GLM)](http://glm.g-truc.net/0.9.8/index.html) library
