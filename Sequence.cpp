/*
 * Sequence.cpp
 *
 *  Created on: 24 mag 2017
 *      Author: lorenzo
 */

#include "Sequence.h"

#include "ParameterMap.h"

#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

namespace curveDNA {

Sequence::Sequence() :
				_perfect_length(0.f) {

}

Sequence::~Sequence() {

}

void Sequence::init(std::string &filename, ParameterMap &params) {
	ifstream seq(filename);
	if(!seq.good()) {
		cerr << "The file '" << filename << "' is unreadable";
		exit(1);
	}
	_filename = filename;

	_perfect_length = 0.f;
	// this is signed so that it can store a negative value
	signed char last_c = -1;
	while(seq.good()) {
		char c;
		seq.get(c);
		char upper_c = toupper(c);
		if(_is_valid(upper_c)) {
			if(last_c != -1) {
				// brace (universal) initialisation (c++11 only)
				string base_step { last_c, upper_c };
				Params base_step_params = params[base_step];
				BasePair new_bp;
				new_bp.init_trasf_matrix(base_step_params);
				_bps.emplace_back(new_bp);
				_perfect_length += base_step_params.rise_per_residue;
			}
			last_c = upper_c;
		} else if(!isspace(c)) {
			cerr << "WARNING: Invalid character '" << c << "'" << endl;
		}
	}
	seq.close();

	glm::mat4 inv_trasf_matrix(1.0f);
	glm::vec3 min_coords(1e10, 1e10, 1e10);
	glm::vec3 max_coords(-1e10, -1e10, -1e10);
	for(auto &bp : _bps) {
		bp.set_sites(inv_trasf_matrix);
		glm::vec3 centre = bp.centre();
		for(int c = 0; c < 3; c++) {
			min_coords[c] = glm::min(min_coords[c], centre[c]);
			max_coords[c] = glm::max(max_coords[c], centre[c]);
		}
		inv_trasf_matrix *= bp.inv_trasf_matrix();
	}

	_bounding_box = max_coords - min_coords;

	_empty = false;
}

void Sequence::print_mgl() const {
	string mgl_filename = _filename + string(".mgl");
	ofstream out(mgl_filename);

	out << ".Box:" << 1.5 * _bounding_box.x << "," << 1.5 * _bounding_box.y << "," << 1.5 * _bounding_box.z << endl;
	for(auto bp : _bps) {
		out << _get_mgl_line(bp.centre(), 0.15, "blue");
		out << _get_mgl_line(bp.phosphate_35(), 0.4, "red");
		out << _get_mgl_line(bp.phosphate_53(), 0.4, "red");
	}

	out.close();
}

void Sequence::print_ee() const {
	cout << _filename << " " << glm::distance(_bps.front().centre(), _bps.back().centre()) << " " << _perfect_length << endl;
}

string Sequence::_get_mgl_line(const glm::vec3 &v, float r, string color) const {
	stringstream ss;
	ss << v[0] << " " << v[1] << " " << v[2] << " @ " << r << " C[" << color << "]" << endl;
	return ss.str();
}

bool Sequence::_is_valid(char c) const {
	return (c == 'A' || c == 'C' || c == 'G' || c == 'T');
}

} /* namespace curveDNA */
