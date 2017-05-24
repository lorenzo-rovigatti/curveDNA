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
{PRINT_MGL             , 0, "m", "mgl"           , option::Arg::None,     "  --mgl, -m\n          Print the final configuration in mgl format" },
{PRINT_EE              , 0, "e", "end-to-end"    , option::Arg::None,     "  --end-to-end, -e\n          Print the filename, distance between the centres of mass of the terminal base pairs and the length of a \"perfect\" double helix with the same number of nucleotides as the given sequence (both in nanometers) for each given sequence file" },
{0,0,0,0,0,0}
};

}

#endif /* CL_ARGS_H_ */
