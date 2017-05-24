/*
 * main.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "optionparser.h"
#include "cl_args.h"
#include "Sequence.h"
#include "ParameterMap.h"

#include <iostream>
#include <fstream>
#include <vector>
#include <queue>

using namespace std;
using namespace curveDNA;

int main(int argc, char *argv[]) {
	if(argc > 0) {
		argc--;
		argv++;
	}

	option::Stats stats(usage, argc, argv);
	option::Option *options = new option::Option[stats.options_max];
	option::Option *buffer = new option::Option[stats.buffer_max];
	option::Parser parser(usage, argc, argv, options, buffer);

	if(parser.error()) return 1;

	if(options[HELP] || argc == 0) {
		option::printUsage(cerr, usage);
		cerr << endl;
		return 0;
	}

	// get the filenames
	vector<string> input_files;
	for(int i = 0; i < parser.nonOptionsCount(); ++i) input_files.push_back(string(parser.nonOption(i)));

	if(input_files.size() == 0) {
		cerr << "No sequence file given" << endl;
		exit(1);
	}

	ParameterMap params;
	vector<Sequence> seqs;

	for(auto &filename : input_files) {
		Sequence n_seq;
		n_seq.init(filename, params);
		seqs.emplace_back(n_seq);
	}

	if(options[PRINT_MGL]) {
		for(auto &seq : seqs) seq.print_mgl();
	}

	if(options[PRINT_EE]) {
		for(auto &seq : seqs) seq.print_ee();
	}

	return 0;
}
