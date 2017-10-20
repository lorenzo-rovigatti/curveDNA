/*
 * main.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "optionparser.h"
#include "cl_args.h"
#include "TheComputer.h"

#include <iostream>
#include <vector>

using namespace std;
using namespace curveDNA;

int main(int argc, char *argv[]) {
	if(argc > 0) {
		argc--;
		argv++;
	}

	option::Stats stats(usage, argc, argv);

	vector<option::Option> options = vector<option::Option>(stats.options_max);
	vector<option::Option> buffer = vector<option::Option>(stats.buffer_max);
	option::Parser parser(usage, argc, argv, options.data(), buffer.data());

	if(parser.error()) return 1;

	if(options[HELP] || argc == 0) {
		option::printUsage(cerr, usage);
		cerr << endl;
		return 0;
	}

	TheComputer computer(parser, options);
	computer.compute();
	computer.print_output();

	return 0;
}
