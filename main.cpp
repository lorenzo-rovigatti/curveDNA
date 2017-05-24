/*
 * main.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "BasePair.h"
#include "ParameterMap.h"

#include "optionparser.h"
#include "cl_args.h"
#include "glm/glm.hpp"

#include <iostream>
#include <fstream>
#include <vector>
#include <queue>

using namespace std;
using namespace curveDNA;

bool is_valid(char c) {
	return (c == 'A' || c == 'C' || c == 'G' || c == 'T');
}

void print_vec4_mgl(const glm::vec4 &v, float r, string color) {
	cout << v[0] << " " << v[1] << " " << v[2] << " @ " << r << " C[" << color << "]" << endl;
}

void print_mgl(vector<BasePair> &bps, ostream &out) {
	cout << ".Box:200,200,200" << endl;
	for(auto bp : bps) {
		print_vec4_mgl(bp.centre(), 0.15, "blue");
		print_vec4_mgl(bp.phosphate_35(), 0.4, "red");
		print_vec4_mgl(bp.phosphate_53(), 0.4, "red");
	}
}

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
		option::printUsage(std::cerr, usage);
		cerr << endl;
		return 0;
	}

	// get the filenames
	std::queue<std::string> input_files;
	for (int i = 0; i < parser.nonOptionsCount(); ++i) input_files.push(string(parser.nonOption(i)));
	if(input_files.size() == 0) {
		cerr << "No sequence file given" << endl;
		exit(1);
	}

	ifstream seq(input_files.front());
	if(!seq.good()) {
		cerr << "The file '" << argv[1] << "' is unreadable";
		exit(1);
	}

	vector<BasePair> bps;
	ParameterMap params;

	// this is signed so that it can store a negative value
	signed char last_c = -1;
	while(seq.good()) {
		char c;
		seq.get(c);
		char upper_c = toupper(c);
		if(is_valid(upper_c)) {
			if(last_c != -1) {
				// brace (universal) initialisation (c++11 only)
				string base_step { last_c, upper_c };
				Params base_step_params = params[base_step];
				BasePair new_bp;
				new_bp.init_trasf_matrix(base_step_params);
				bps.emplace_back(new_bp);
			}
			last_c = upper_c;
		} else {
			cerr << "WARNING: Invalid character '" << c << "'";
		}
	}
	seq.close();

	glm::mat4 inv_trasf_matrix(1.0f);
	for(auto &bp : bps) {
		bp.set_sites(inv_trasf_matrix);
		inv_trasf_matrix *= bp.inv_trasf_matrix();
	}

	if(options[PRINT_MGL]) print_mgl(bps, cout);
	if(options[PRINT_EE]) {
		cout << glm::distance(bps.front().centre(), bps.back().centre()) << endl;
	}

	return 0;
}
