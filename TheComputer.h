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
private:
	ParameterMap _params;
	std::vector<Sequence> _seqs;
	std::vector<std::string> _input_files;
	std::vector<option::Option> &_options;

	int _bending_bracket;
	int _curvature_bracket;
public:
	TheComputer(option::Parser &parser, std::vector<option::Option> &options);
	virtual ~TheComputer();

	void compute();
	void print_output();
};

} /* namespace curveDNA */

#endif /* THECOMPUTER_H_ */
