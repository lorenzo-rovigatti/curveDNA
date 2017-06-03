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
#include <memory>

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

	int bending_bracket = 1;
	if(options[PRINT_LOCAL_BENDING] && options[PRINT_LOCAL_BENDING].arg != NULL) {
		bending_bracket = atoi(options[PRINT_LOCAL_BENDING].arg);
		cerr << "Setting the bending bracket to " << bending_bracket << endl;
		if(bending_bracket < 1) {
			cerr << "The bending bracket should be larger than 1" << endl;
			exit(1);
		}
	}

	int curvature_bracket = 15;
	if(options[PRINT_CURVATURE] && options[PRINT_CURVATURE].arg != NULL) {
		curvature_bracket = atoi(options[PRINT_CURVATURE].arg);
		cerr << "Setting the curvature bracket to " << curvature_bracket << endl;
		if(curvature_bracket < 10) {
			cerr << "The curvature bracket should be larger than 10" << endl;
			exit(1);
		}
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

	if(options[PARAMS]) {
		string arg(options[PARAMS].arg);
		if(arg == "b") params.set_model(ParameterMap::BOLSHOI);
		else if(arg == "c") params.set_model(ParameterMap::CACCHIONE);
		else if(arg == "o") params.set_model(ParameterMap::OLSON);
		else {
			cerr << "Unsupported model '" << arg << "'" << endl;
			exit(1);
		}
	}

	for(auto &filename : input_files) {
		Sequence n_seq;
		try {
			n_seq.init(filename, params);
			n_seq.compute_bending(bending_bracket);
			n_seq.compute_curvature(curvature_bracket);
			seqs.emplace_back(n_seq);
		}
		catch (string &s) {
			cerr << s << endl;
		}
	}

	for(auto &seq : seqs) {
		if(!seq.empty()) {
			if(options[PRINT_MGL]) seq.print_mgl();
			if(options[PRINT_EE]) seq.print_ee();
			if(options[PRINT_TEP]) seq.print_tep();
			if(options[PRINT_LOCAL_BENDING]) seq.print_bending();
			if(options[PRINT_CURVATURE]) seq.print_curvature();
		}
	}

	return 0;
}
