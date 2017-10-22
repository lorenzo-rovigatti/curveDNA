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
				_options(options),
				_mode(ANALYSE_SEQS) {
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

	if(options[FIND]) {
		_mode = FIND_SEQS;
		_N = atoi(options[FIND].arg);
		if(parser.nonOptionsCount()) {
			cerr << "WARNING: Non-option command-line arguments are not considered when --find is used" << endl;
		}
		if(options[FIND_TRIES]) {
			_tries = atol(options[FIND_TRIES].arg);
		}
	}
	else {
		// get the filenames out of the parser
		for(int i = 0; i < parser.nonOptionsCount(); ++i)
			_input_files.push_back(string(parser.nonOption(i)));

		if(_input_files.size() == 0) {
			cerr << "No sequence file given" << endl;
			exit(1);
		}
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

	// TODO: initialise it from a command-line argument
	_seed = 12345;
}

TheComputer::~TheComputer() {

}

void TheComputer::_analyse() {
	for(auto &filename : _input_files) {
		Sequence n_seq;
		try {
			n_seq.init_from_file(filename, _params);
			n_seq.compute_bending(_bending_bracket);
			n_seq.compute_curvature(_curvature_bracket);
			_seqs.emplace_back(n_seq);
		}
		catch(string &s) {
			cerr << s << endl;
		}
	}
}

void TheComputer::_find() {
	srand48(_seed);
	string sequence(_N, 0);
	Sequence seq_attempt;
	Sequence seq_best;
	const string charset = "ACGT";
	for(int i = 0; i < _tries; i++) {
		// generate a random string
		for(int j = 0; j < _N; j++) {
			sequence[j] = charset[lrand48() % charset.size()];
		}

		seq_attempt.init_from_sequence(sequence, _params);
		if(seq_best.empty() || seq_best.end_to_end() > seq_attempt.end_to_end()) {
			seq_best = seq_attempt;
		}
	}

	// TODO: be sure that the filename does not exist
	seq_best.set_filename("best");
	_seqs.emplace_back(seq_best);
}

void TheComputer::compute() {
	if(_mode == FIND_SEQS) _find();
	else _analyse();
}

void TheComputer::print_output() {
	for(auto &seq : _seqs) {
		if(!seq.empty()) {
			if(_mode == FIND_SEQS) {
				cerr << "Printing the best sequence in '" << seq.filename() << ".seq'" << endl;
				seq.print_sequence();
			}
			if(_options[PRINT_MGL]) seq.print_mgl();
			if(_options[PRINT_EE]) seq.print_ee();
			if(_options[PRINT_TEP]) seq.print_tep();
			if(_options[PRINT_LOCAL_BENDING]) seq.print_bending();
			if(_options[PRINT_CURVATURE]) seq.print_curvature();
		}
	}
}

} /* namespace curveDNA */
