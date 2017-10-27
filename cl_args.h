/*
 * cl_args.h
 *
 *  Created on: 24 mag 2017
 *      Author: lorenzo
 */

#ifndef CL_ARGS_H_
#define CL_ARGS_H_

namespace curveDNA {

enum options {
	HELP,
	PRINT_MGL,
	PRINT_EE,
	PRINT_TEP,
	PRINT_LOCAL_BENDING,
	PRINT_CURVATURE,
	PARAMS,
	FIND,
	FIND_TRIES,
	FIND_ALGORITHM,
	SEED
};

const option::Descriptor usage[] = {
{HELP                  , 0, "h", "help"          , option::Arg::None,     "  --help, -h\n          Print usage and exit" },
{PRINT_MGL             , 0, "m", "mgl"           , option::Arg::None,     "  --mgl, -m\n          Print one mgl file for each sequence file provided. The output filename is the input filename plus the .mgl extension." },
{PRINT_EE              , 0, "e", "end-to-end"    , option::Arg::None,     "  --end-to-end, -e\n          Print the sequence filename, the end-to-end distance and the \"perfect\" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)" },
{PRINT_TEP             , 0, "t", "tep"           , option::Arg::None,     "  --tep, -t\n          Print the TEP topology file for the given sequence and the minimum energy configuration" },
{PRINT_LOCAL_BENDING   , 0, "b", "bending"       , option::Arg::Optional, "  --bending[=1], -b\n          Print the local bending of the sequence. The output filename is the input filename plus the .bnd extension. The optional argument sets the bracket value used to compute the local bending (defaults to 1)" },
{PRINT_CURVATURE       , 0, "c", "curvature"     , option::Arg::Optional, "  --curvature[=15], -c\n          Print the curvature of the sequence. The output filename is the input filename plus the .crv extension. The optional argument sets the bracket value used to compute the curvature (defaults to 15)" },
{PARAMS                , 0, "",  "params"     	 , option::Arg::Required, "  --params=SET,\n          Select the set of parameters to be used in the calculations. SET can be b (Bolshoy et al, PNAS 1991), c (Cacchione et al, Biochem 1989) or o (default value, Balasubramanian et al, Biophys. J. 2009)" },
{FIND                  , 0, "f", "find"    	 	 , option::Arg::Required, "  --find=N, -f\n          Find the sequence of size N with the shortest end-to-end. The algorithm used for the optimisation is set with --algorithm" },
{FIND_TRIES            , 0, "r", "tries"   	 	 , option::Arg::Required, "  --tries[=10000], -r\n          Number of attempts to be tried when optimising the sequence" },
{FIND_ALGORITHM        , 0, "a", "algorithm" 	 , option::Arg::Required, "  --algorithm[=MC], -a\n          Algorithm used by the optimisation procedure. Possible algorithms are MC (default), random" },
{SEED				   , 0, "s", "seed"		 	 , option::Arg::Required, "  --seed[=-1], -s\n          Seed for the pseudo random number generator. Defaults to -1 (which means time(NULL))" },
{0,0,0,0,0,0}
};

}

#endif /* CL_ARGS_H_ */
