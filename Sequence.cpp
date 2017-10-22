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
#include <math.h>

#include "glm/ext.hpp"
#include "glm/gtx/vector_angle.hpp"

namespace curveDNA {

using namespace std;

Sequence::Sequence() {

}

Sequence::~Sequence() {

}

void Sequence::init_from_sequence(const string &sequence, ParameterMap &params) {
	stringstream sequence_stream(sequence);

	_perfect_length = 0.f;
	_bps.clear();
	// this is signed so that it can store a negative value
	signed char last_c = -1;
	while(sequence_stream.good()) {
		char c;
		sequence_stream.get(c);
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
		}
		else if(!isspace(c)) {
			cerr << "WARNING: Invalid character '" << c << "'" << endl;
		}
	}
	if(!_bps.size()) throw string("String '") + sequence + string("' is not a meaningful sequence");

	glm::mat4 inv_trasf_matrix(1.0f);
	glm::vec3 min_coords(1e10, 1e10, 1e10);
	glm::vec3 max_coords(-1e10, -1e10, -1e10);
	int i = 0;
	for(auto &bp : _bps) {
		bp.set_sites(inv_trasf_matrix);
		bp.set_index(i);
		glm::vec3 centre = bp.centre();
		for(int c = 0; c < 3; c++) {
			min_coords[c] = glm::min(min_coords[c], centre[c]);
			max_coords[c] = glm::max(max_coords[c], centre[c]);
		}
		inv_trasf_matrix *= bp.inv_trasf_matrix();
		i++;
	}

	_bounding_box = max_coords - min_coords;
	_empty = false;
	_sequence = sequence;
}

void Sequence::init_from_file(const string &filename, ParameterMap &params) {
	ifstream seq(filename);
	if(!seq.good()) throw string("File '") + filename + string("' is unreadable");
	_filename = filename;

	std::string sequence((std::istreambuf_iterator<char>(seq)), std::istreambuf_iterator<char>());
	seq.close();

	init_from_sequence(sequence, params);
}

void Sequence::compute_curvature(int bracket) {
	if(_bps.size() < 2 * bracket) return;

	int normal_bracket = 5;
	for(int bp = normal_bracket; bp < _bps.size() - normal_bracket; bp++) {
		glm::vec3 avg_normal(0.f, 0.f, 0.f);

		for(int j = -normal_bracket; j <= normal_bracket; j++) {
			float factor = (abs(j) == normal_bracket) ? 0.5f : 1.f;
			avg_normal += factor * _bps[bp + j].normal();
		}
		avg_normal /= 2 * normal_bracket;
		_bps[bp].set_avg_normal(avg_normal);
	}

	for(int bp = bracket + normal_bracket; bp < _bps.size() - (bracket + normal_bracket); bp++) {
		auto &bp_before = _bps[bp - bracket];
		auto &bp_after = _bps[bp + bracket];
		float curvature = glm::acos(glm::dot(bp_before.avg_normal(), bp_after.avg_normal()));
		_bps[bp].set_curvature(curvature);
	}
}

void Sequence::print_curvature() const {
	string crv_filename = _filename + string(".crv");
	ofstream out(crv_filename);

	int idx = 0;
	for(auto bp : _bps) {
		if(bp.curvature() != BasePair::UNINITIALISED_ANGLE) out << idx << " " << bp.curvature() << endl;
		idx++;
	}

	out.close();
}

void Sequence::compute_bending(int bracket) {
	if(_bps.size() < 2 * bracket) return;

	for(int i = bracket; i < _bps.size() - bracket; i++) {
		auto &bp_before = _bps[i - bracket];
		auto &bp_after = _bps[i + bracket];
		float bending_angle = glm::acos(glm::dot(bp_before.normal(), bp_after.normal()));
		_bps[i].set_bending(bending_angle);
	}
}

void Sequence::set_filename(const string &new_filename) {
	_filename = new_filename;
}

void Sequence::print_bending() const {
	string bnd_filename = _filename + string(".bnd");
	ofstream out(bnd_filename);

	int idx = 0;
	for(auto bp : _bps) {
		if(bp.bending() != BasePair::UNINITIALISED_ANGLE) out << idx << " " << bp.bending() << endl;
		idx++;
	}

	out.close();
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

void Sequence::print_tep() const {
	double nm_in_SUL = 1. / 2.5;
	double bp_per_segment = 7.4;

	// open the topology and conf files
	string top_filename = _filename + string(".top");
	ofstream top_out(top_filename);

	string conf_filename = _filename + string(".conf");
	ofstream conf_out(conf_filename);
	// print the headers
	int N_segments = _bps.size() / bp_per_segment;
	int box_size = N_segments + 2;
	conf_out << "t = 0" << endl;
	conf_out << "b = " << box_size << " " << box_size << " " << box_size << endl;
	conf_out << "E = -1 -1" << endl; //prints -1 since it doesn't really compute the energy.

	top_out << N_segments << " " << 1 << endl;
	top_out << N_segments << endl;

	glm::vec3 zero(0., 0., 0.);
	// generate the 
	int prev_segment = 0;
	int nbp = _bps.size();
	std::vector<glm::vec3> u1(nbp), f1(nbp), pos(nbp);
	std::vector<double> beta_0(nbp), theta0(nbp);

	for(int i = 0; i < nbp; i++) {
		auto bp = _bps[i];
		int curr_segment = int(bp.index() / bp_per_segment);
		float part = fmod(bp.index(), bp_per_segment); //float is needed or glm will complain when performing vector-scalar multiplication
		if(bp.index() == 0) {
			pos[prev_segment] = bp.centre();
		}
		if(prev_segment != curr_segment) {
			// compute the position of the interpolation point
			pos[curr_segment] = part * _bps[i - 1].centre() + (1 - part) * bp.centre() + glm::vec3(1., 1., 1.) * box_size * 0.5;
			// compute the orientation of the previous segment
			//the u1 vector is simply the normalised displacement
			u1[prev_segment] = glm::normalize(pos[curr_segment] - pos[prev_segment]);
			//the f1 vector is initialised arbitrarily, and then is simply rotated to follow u1
			glm::vec3 &u1_p = u1[prev_segment];
			glm::vec3 &f1_p = f1[prev_segment];
			glm::vec3 v1_p = glm::cross(u1_p, f1_p);
			glm::vec3 &u1_pp = u1[prev_segment - 1];
			glm::vec3 &f1_pp = f1[prev_segment - 1];
			glm::vec3 v1_pp = glm::cross(u1_pp, f1_pp);

			if(curr_segment == 1) {
				if(u1_p.x != 0) f1_p = glm::normalize(glm::vec3(0., -u1_p.z / u1_p.y, 1.));
				else f1_p = glm::normalize(glm::vec3(-u1_p.z / u1_p.x, 0., 1.));
			}
			else if(curr_segment > 1) {
				glm::vec3 axis = glm::cross(u1_pp, u1_p);
				double angle = glm::angle(u1_pp, u1_p);
				axis = glm::normalize(axis);
				f1_p = glm::rotate(f1_pp, (float) angle, axis);
				// notice that the angle is actually -theta0
				theta0[curr_segment - 2] = -angle * 1;
				// Relax all the excess twist
				double A = glm::dot(f1_p, f1_pp) + glm::dot(v1_p, v1_pp);
				double B = glm::dot(v1_p, f1_pp) + glm::dot(f1_p, v1_pp);
				double gamma = 0.;
				if(A >= 0) gamma = atan(B / A);
				else gamma = atan(B / A) + M_PI;
				f1_p = glm::rotate(f1_p, (float) gamma, u1_p);
				// and the angle beta is actually the angle between f x u = -v and and the projections of u' on u_perp
				glm::vec3 m_v1_pp = -glm::cross(f1_pp, u1_pp);
				glm::vec3 up_proj = glm::normalize(u1_p - glm::dot(u1_p, u1_pp) * u1_pp);
				glm::vec3 axis_2 = glm::cross(m_v1_pp, up_proj);
				beta_0[curr_segment - 2] = glm::orientedAngle(m_v1_pp, up_proj, u1_p);

			}
			prev_segment = curr_segment;
		}
	}
	// print the body of the configuration and topology
	for(int i = 0; i < N_segments; i++) {
		conf_out << _get_conf_line(pos[i] * nm_in_SUL + glm::vec3(1., 1., 1.) * box_size * 0.5, u1[i], f1[i], zero, zero);
		//check that everything is orthogonal
		float dot = glm::dot(u1[i], f1[i]);

		if(fabs(dot) > 1e-5) {
			//printf("ERROR: vectors u1[%d] and f1[%d], should be orthogonal, but they aren't.\n",);
			std::cout << "WARNING: vectors u1[" << i << "] = " << u1[i].x << " " << u1[i].y << " " << u1[i].z << " and f1[" << i << "] = " << f1[i].x << " " << f1[i].y << " " << f1[i].z << " should be orthogonal, but they aren't." << endl;
			std::cout << "       their scalar product is. You be the judge of whether that's orthogonal enough for you." << dot << endl;
		}
	}

	for(int i = 0; i < N_segments; i++) {
		top_out << _get_top_line(i, theta0[i], beta_0[i]);
	}

	conf_out.close();
	top_out.close();
}

float Sequence::end_to_end() const {
	return glm::distance(_bps.front().centre(), _bps.back().centre());
}

void Sequence::print_ee() const {
	cout << _filename << " " << end_to_end() << " " << _perfect_length << endl;
}

void Sequence::print_sequence() const {
	string seq_filename = _filename + string(".seq");
	ofstream out(seq_filename);

	out << _sequence << endl;

	out.close();
}

string Sequence::_get_mgl_line(const glm::vec3 &v, float r, string color) const {
	stringstream ss;
	ss << v[0] << " " << v[1] << " " << v[2] << " @ " << r << " C[" << color << "]" << endl;
	return ss.str();
}

string Sequence::_get_conf_line(const glm::vec3 &p, const glm::vec3 &v1, const glm::vec3 &v3, const glm::vec3 &velocity = glm::vec3(0., 0., 0.), const glm::vec3 &omega = glm::vec3(0., 0., 0.)) const {
	stringstream ss;
	ss << p[0] << " " << p[1] << " " << p[2] << " " << v1[0] << " " << v1[1] << " " << v1[2] << " " << v3[0] << " " << v3[1] << " " << v3[2] << " " << velocity[0] << " " << velocity[1] << " " << velocity[2] << " " << omega[0] << " " << omega[1] << " " << omega[2] << endl;
	return ss.str();
}

string Sequence::_get_top_line(int i, double theta_0, double beta_0) const {
	stringstream ss;
	std::string default_string = "1 1 0.80 0.952319757 1.14813301";
	ss << i << " " << default_string << " " << theta_0 << " " << beta_0 << endl;
	return ss.str();
}

bool Sequence::_is_valid(char c) const {
	return (c == 'A' || c == 'C' || c == 'G' || c == 'T');
}

} /* namespace curveDNA */
