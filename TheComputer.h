/*
 * TheComputer.h
 *
 *  Created on: 20 ott 2017
 *      Author: lorenzo
 */

#ifndef THECOMPUTER_H_
#define THECOMPUTER_H_

#include "Sequence.h"
#include "ParameterMap.h"

#include "optionparser.h"

#include <vector>
#include <string>

namespace curveDNA {

class TheComputer {
public:
	TheComputer(option::Parser &parser, std::vector<option::Option> &options);
	virtual ~TheComputer();

	void compute();
	void print_output();

private:
	enum {
		ANALYSE_SEQS,
		FIND_SEQS
	};

	ParameterMap _params;
	std::vector<Sequence> _seqs;
	std::vector<std::string> _input_files;
	std::vector<option::Option> &_options;

	int _mode;
	int _bending_bracket = 1;
	int _curvature_bracket = 15;
	int _N = -1;
	long long int _tries = 10000;
	long int _seed;

	void _analyse();
	void _find();
};

} /* namespace curveDNA */

#endif /* THECOMPUTER_H_ */
