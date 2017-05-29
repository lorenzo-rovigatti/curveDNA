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
	PRINT_LOCAL_BENDING,
	PRINT_CURVATURE
};

const option::Descriptor usage[] = {
{HELP                  , 0, "h", "help"          , option::Arg::None,     "  --help, -h\n          Print usage and exit" },
{PRINT_MGL             , 0, "m", "mgl"           , option::Arg::None,     "  --mgl, -m\n          Print one mgl file for each sequence file provided. The output filename is the input filename plus the .mgl extension." },
{PRINT_EE              , 0, "e", "end-to-end"    , option::Arg::None,     "  --end-to-end, -e\n          Print the sequence filename, the end-to-end distance and the \"perfect\" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)" },
{PRINT_LOCAL_BENDING   , 0, "b", "bending"       , option::Arg::Optional, "  --bending, -b\n          Print the local bending of the sequence. The output filename is the input filename plus the .bnd extension. The optional argument sets the bracket value used to compute the local bending (defaults to 1)" },
{PRINT_CURVATURE       , 0, "c", "curvature"     , option::Arg::Optional, "  --curvature, -c\n          Print the curvature of the sequence. The output filename is the input filename plus the .crv extension. The optional argument sets the bracket value used to compute the curvature (defaults to 15)" },
{0,0,0,0,0,0}
};

}

#endif /* CL_ARGS_H_ */
