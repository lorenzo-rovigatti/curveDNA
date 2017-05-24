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

namespace curveDNA {

BasePair::BasePair() :
				_trasf_matrix(1.0) {

}

BasePair::~BasePair() {

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

} /* namespace curveDNA */
