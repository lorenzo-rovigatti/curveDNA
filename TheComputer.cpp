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
#include <algorithm>

namespace curveDNA {

using namespace std;

TheComputer::TheComputer(option::Parser &parser, vector<option::Option> &options) :
				_options(options),
				_mode(ANALYSE_SEQS),
				_algorithm(ALG_MC) {
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
		if(options[FIND_ALGORITHM]) {
			string new_algo(options[FIND_ALGORITHM].arg);
			transform(new_algo.begin(), new_algo.end(), new_algo.begin(), ::tolower);
			if(new_algo == "mc") {
				_algorithm = ALG_MC;
			}
			else if(new_algo == "random") {
				_algorithm = ALG_RANDOM;
			}
			else {
				cerr << "Unsupported algorithm '" << options[FIND_ALGORITHM].arg << "'" << endl;
				exit(1);
			}
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

	_seed = (options[SEED]) ? atol(options[SEED].arg) : -1;
	if(_seed == -1) _seed = time(NULL);
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
		} catch (string &s) {
			cerr << s << endl;
		}
	}
}

void TheComputer::_set_random_sequence(std::string &sequence) {
	for(int j = 0; j < sequence.size(); j++) {
		sequence[j] = _charset[lrand48() % _charset.size()];
	}
}

void TheComputer::_find() {
	srand48(_seed);
	string sequence(_N, 0);
	Sequence seq_attempt;
	Sequence seq_best;
	_set_random_sequence(sequence);
	for(int i = 0; i < _tries; i++) {
		switch(_algorithm) {
		case ALG_RANDOM: {
			_set_random_sequence(sequence);
			break;
		}
		case ALG_MC: {
			sequence[lrand48() % _N] = _charset[lrand48() % _charset.size()];
			break;
		}
		default:
			break;
		}

		seq_attempt.init_from_sequence(sequence, _params);
		if(seq_best.empty() || seq_best.end_to_end() > seq_attempt.end_to_end()) {
			seq_best = seq_attempt;
		}
	}

	// TODO: be sure that the filename does not exist
	seq_best.set_filename("best");
	seq_best.compute_bending(_bending_bracket);
	seq_best.compute_curvature(_curvature_bracket);
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
			if(_options[PRINT_OXDNA]) seq.print_oxDNA();
			if(_options[PRINT_LOCAL_BENDING]) seq.print_bending();
			if(_options[PRINT_CURVATURE]) seq.print_curvature();
		}
	}
}

} /* namespace curveDNA */
