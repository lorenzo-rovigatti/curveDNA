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
	PRINT_EE
};

const option::Descriptor usage[] = {
{HELP                  , 0, "h", "help"          , option::Arg::None,     "  --help, -h\n          Print usage and exit" },
{PRINT_MGL             , 0, "m", "mgl"           , option::Arg::None,     "  --mgl, -m\n          Print one mgl file for each sequence file provided. If the name of the input file is sequence.txt, the output file will be named sequence.txt.mgl" },
{PRINT_EE              , 0, "e", "end-to-end"    , option::Arg::None,     "  --end-to-end, -e\n          Print the sequence filename, the end-to-end distance and the \"perfect\" end-to-end distance (that is, the end-to-end distance of a perfect double-stranded B-DNA of the same length)" },
{0,0,0,0,0,0}
};

}

#endif /* CL_ARGS_H_ */
