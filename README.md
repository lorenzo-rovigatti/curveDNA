# curveDNA

curveDNA estimates the natural curvature of double-stranded DNA (dsDNA). The algorithm used is explained in 

> [E. S. Shpigelman, E. N. Trifonov and A. Bolshoy, _Bioinformatics_ (1993) **9**, pp. 435-440](https://academic.oup.com/bioinformatics/article-abstract/9/4/435/206911/CURVATURE-software-for-the-analysis-of-curved-DNA).

curveDNA supports three sets of twist, wedge and direction of the wedge parameters, taken from

* > [S. Balasubramanian, F. Xu, W. K. Olson, _Biophys J._ (2009) **6**, pp. 2245-2260](http://www.sciencedirect.com/science/article/pii/S0006349509000228)
* > [A. Bolshoy, P. McNamara, R. E. Harrington and E. N. Trifonov, _Proc. Natl. Aca. Sci. USA_ (1991) **88**, pp. 2312-2316](https://www.ncbi.nlm.nih.gov/pubmed/2006170)
* > [P. De Santis, A. Palleschi, M. Savino and A. Scipioni, _Biochem._ (1989) **28**, pp. 8706-8713](http://pubs.acs.org/doi/abs/10.1021/bi00448a006)

## Features

* It optionally prints the local bending and curvature as defined in [D. S. Goodsell and R. E. Dickerson, _Nucleic Acid Research_ (1994) **22** (24): 5497-5503](https://academic.oup.com/nar/article-lookup/doi/10.1093/nar/22.24.5497)
* It optionally prints an mgl file containing the positions of each base-pair centre of mass and phosphates. mgl files can be visualised with [cogli1](https://sourceforge.net/projects/cogli1/)
* It optionally prints the standard output the sequence filename, the end-to-end distance and the "perfect" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)
* If given the --find N (with N being an integer), it will look for the sequence with the shortest end-to-end distance. For now, the code will randomly generate a certain number of sequences, compute their end-to-end distance and, after a certain number of attempts (set with --tries), output the shortest one

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
          Print one mgl file for each sequence file provided. The output filename is the input filename plus the .mgl extension.
	--end-to-end, -e
          Print the sequence filename, the end-to-end distance and the "perfect" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)
	--tep, -t
          Print the TEP topology file for the given sequence and the minimum energy configuration
	--bending[=1], -b
          Print the local bending of the sequence. The output filename is the input filename plus the .bnd extension. The optional argument sets the bracket value used to compute the local bending (defaults to 1)
	--curvature[=15], -c
          Print the curvature of the sequence. The output filename is the input filename plus the .crv extension. The optional argument sets the bracket value used to compute the curvature (defaults to 15)
	--params=SET,
          Select the set of parameters to be used in the calculations. SET can be b (Bolshoy et al, PNAS 1991), c (Cacchione et al, Biochem 1989) or o (default value, Balasubramanian et al, Biophys. J. 2009)
	--find=N,
          Find the sequence of size N with the shortest end-to-end. For now we will try to optimise the sequence randomly
	--tries[=10000],
          Number of attempts to be tried when optimising the sequence
          
## Ackowledgements

* We thank [Elio Abbondanzieri](https://sites.google.com/site/abbondanzierilab/home) for providing information, papers and bits of code to help us getting started 
* curveDNA uses
	* [The Lean Mean C++ Option Parser](http://optionparser.sourceforge.net/), written by Matthias S. Benkmann
	* The [OpenGL Mathematics (GLM)](http://glm.g-truc.net/0.9.8/index.html) library
* The development of this software has been partially supported by the European Commission through the Marie Skłodowska−Curie Fellowship No. 702298-DELTAS.
