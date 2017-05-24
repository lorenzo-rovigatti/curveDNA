/*
 * main.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "BasePair.h"
#include "ParameterMap.h"

#include "glm/glm.hpp"

#include <iostream>
#include <fstream>
#include <vector>

using namespace std;
using namespace curveDNA;

bool is_valid(char c) {
	return (c == 'A' || c == 'C' || c == 'G' || c == 'T');
}

void print_vec4_mgl(glm::vec4 &v, float r, string color) {
	cout << v[0] << " " << v[1] << " " << v[2] << " @ " << r << " C[" << color << "]" << endl;
}

int main(int argc, char *argv[]) {
	if(argc < 2) {
		std::cerr << "Usage is " << argv[0] << " sequence_file";
		exit(1);
	}

	ifstream seq(argv[1]);
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
//				cout << base_step << " " << base_step_params.direction << endl;
				BasePair new_bp;
				new_bp.init_trasf_matrix(base_step_params);
				bps.emplace_back(new_bp);
			}
			last_c = upper_c;
		} else {
			cerr << "WARNING: Invalid character '" << c << "'";
		}
	}

	glm::vec4 base_centre(0.f, 0.f, 0.f, 1.f);
	glm::vec4 base_phosphate_53(-0.0975688f, +0.9258795f, -0.18f, 1.f);
	glm::vec4 base_phosphate_35(-0.0975688f, -0.9258795f, +0.18f, 1.f);
	glm::mat4 inv_trasf_matrix(1.0f);

	cout << ".Box:200,200,200" << endl;
	for(auto bp : bps) {
		glm::vec4 centre = inv_trasf_matrix * base_centre;
		glm::vec4 phosphate_53 = inv_trasf_matrix * base_phosphate_53;
		glm::vec4 phosphate_35 = inv_trasf_matrix * base_phosphate_35;

		print_vec4_mgl(centre, 0.15, "blue");
		print_vec4_mgl(phosphate_35, 0.4, "red");
		print_vec4_mgl(phosphate_53, 0.4, "red");

		inv_trasf_matrix *= bp.inv_trasf_matrix();
	}

	seq.close();

	return 0;
}
