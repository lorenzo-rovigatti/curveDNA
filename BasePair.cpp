/*

 * BasePair.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "BasePair.h"

#include "ParameterMap.h"

#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtc/constants.hpp"

#include <iostream>

using namespace std;

namespace curveDNA {

const float BasePair::UNINITIALISED_ANGLE = -10.f;

BasePair::BasePair() :
				_trasf_matrix(1.0),
				_lab_trasf_matrix(1.0),
				_base_centre(0.f, 0.f, 0.f, 1.f),
				_base_phosphate_53(-0.0975688f, +0.9258795f, -0.18f, 1.f),
				_base_phosphate_35(-0.0975688f, -0.9258795f, +0.18f, 1.f),
				_normal(0.f, 0.f, 1.f),
				_avg_normal(0.f, 0.f, 1.f),
				_bending(UNINITIALISED_ANGLE),
				_curvature(UNINITIALISED_ANGLE) {

}

//BasePair::BasePair(const BasePair &other) {
//	_init(other);
//}
//
//BasePair::BasePair(BasePair &&other) {
//	_init(other);
//}

BasePair::~BasePair() {

}

BasePair& BasePair::operator=(const BasePair &rhs) {
	_init(rhs);
	return *this;
}

void BasePair::_init(const BasePair &other) {
	_trasf_matrix = other._trasf_matrix;
	_inv_trasf_matrix = other._inv_trasf_matrix;

	set_sites(other._lab_trasf_matrix);
	set_index(other._index);
	set_bending(other._bending);
	set_curvature(other._curvature);
	set_avg_normal(other._avg_normal);
}

void BasePair::init_trasf_matrix(Params &base_step_params) {
	_trasf_matrix = glm::translate(_trasf_matrix, glm::vec3(0.f, 0.f, base_step_params.rise_per_residue / 2.f));
	_trasf_matrix = glm::rotate(_trasf_matrix, base_step_params.twist / 2.f, glm::vec3(0.f, 0.f, 1.f));
	_trasf_matrix = glm::rotate(_trasf_matrix, base_step_params.direction - glm::half_pi<float>(), glm::vec3(0.f, 0.f, 1.f));
	_trasf_matrix = glm::rotate(_trasf_matrix, -base_step_params.wedge, glm::vec3(1.f, 0.f, 0.f));
	_trasf_matrix = glm::rotate(_trasf_matrix, glm::half_pi<float>() - base_step_params.direction, glm::vec3(0.f, 0.f, 1.f));
	_trasf_matrix = glm::rotate(_trasf_matrix, base_step_params.twist / 2.f, glm::vec3(0.f, 0.f, 1.f));
	_trasf_matrix = glm::translate(_trasf_matrix, glm::vec3(0.f, 0.f, base_step_params.rise_per_residue / 2.f));

	_inv_trasf_matrix = glm::inverse(_trasf_matrix);
}

void BasePair::set_sites(const glm::mat4 &lab_matrix) {
	_lab_trasf_matrix = lab_matrix;
	_centre = lab_matrix * _base_centre;
	_phosphate_53 = lab_matrix * _base_phosphate_53;
	_phosphate_35 = lab_matrix * _base_phosphate_35;

	_normal = glm::mat3(lab_matrix) * _normal;
}
void BasePair::set_index(int index){ _index = index;}

void BasePair::set_bending(float bending) {
	_bending = bending;
}

void BasePair::set_curvature(float curvature) {
	_curvature = curvature;
}

void BasePair::set_avg_normal(const glm::vec3 &avg_normal) {
	_avg_normal = avg_normal;
}

} /* namespace curveDNA */
