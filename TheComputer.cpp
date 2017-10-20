/*
 * TheComputer.cpp
 *
 *  Created on: 20 ott 2017
 *      Author: lorenzo
 */

#include "TheComputer.h"

#include "cl_args.h"

#include <iostream>
#include <fstream>
#include <memory>

namespace curveDNA {

using namespace std;

TheComputer::TheComputer(option::Parser &parser, vector<option::Option> &options) :
				_bending_bracket(1),
				_curvature_bracket(15),
				_options(options) {
	if(options[PRINT_LOCAL_BENDING] && options[PRINT_LOCAL_BENDING].arg != NULL) {
		_bending_bracket = atoi(options[PRINT_LOCAL_BENDING].arg);
		cerr << "Setting the bending bracket to " << _bending_bracket << endl;
		if(_bending_bracket < 1) {
			cerr << "The bending bracket should be larger than 1" << endl;
			exit(1);
		}
	}

	if(options[PRINT_CURVATURE] && options[PRINT_CURVATURE].arg != NULL) {
		_curvature_bracket = atoi(options[PRINT_CURVATURE].arg);
		cerr << "Setting the curvature bracket to " << _curvature_bracket << endl;
		if(_curvature_bracket < 10) {
			cerr << "The curvature bracket should be larger than 10" << endl;
			exit(1);
		}
	}

	// get the filenames
	for(int i = 0; i < parser.nonOptionsCount(); ++i)
		_input_files.push_back(string(parser.nonOption(i)));

	if(_input_files.size() == 0) {
		cerr << "No sequence file given" << endl;
		exit(1);
	}

	if(options[PARAMS]) {
		string arg(options[PARAMS].arg);
		if(arg == "b") _params.set_model(ParameterMap::BOLSHOI);
		else if(arg == "c") _params.set_model(ParameterMap::CACCHIONE);
		else if(arg == "o") _params.set_model(ParameterMap::OLSON);
		else {
			cerr << "Unsupported model '" << arg << "'" << endl;
			exit(1);
		}
	}
}

TheComputer::~TheComputer() {

}

void TheComputer::compute() {
	for(auto &filename : _input_files) {
		Sequence n_seq;
		try {
			n_seq.init(filename, _params);
			n_seq.compute_bending(_bending_bracket);
			n_seq.compute_curvature(_curvature_bracket);
			_seqs.emplace_back(n_seq);
		}
		catch(string &s) {
			cerr << s << endl;
		}
	}
}

void TheComputer::print_output() {
	for(auto &seq : _seqs) {
		if(!seq.empty()) {
			if(_options[PRINT_MGL]) seq.print_mgl();
			if(_options[PRINT_EE]) seq.print_ee();
			if(_options[PRINT_TEP]) seq.print_tep();
			if(_options[PRINT_LOCAL_BENDING]) seq.print_bending();
			if(_options[PRINT_CURVATURE]) seq.print_curvature();
		}
	}
}

} /* namespace curveDNA */
