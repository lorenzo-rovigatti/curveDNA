/*
 * BasePair.h
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#ifndef BASEPAIR_H_
#define BASEPAIR_H_

#include "glm/glm.hpp"

namespace curveDNA {

class Params;

class BasePair {
public:
	BasePair();
	virtual ~BasePair();

	const glm::mat4 &trasf_matrix() const { return _trasf_matrix; }
	const glm::mat4 &inv_trasf_matrix() const { return _inv_trasf_matrix; }
	void init_trasf_matrix(Params &base_step_params);
	void set_sites(glm::mat4 &rot_matrix);

	const glm::vec4 &centre() const { return _centre; }
	const glm::vec4 &phosphate_53() const { return _phosphate_53; }
	const glm::vec4 &phosphate_35() const { return _phosphate_35; }

private:
	glm::mat4 _trasf_matrix;
	glm::mat4 _inv_trasf_matrix;
	const glm::vec4 _base_centre;
	const glm::vec4 _base_phosphate_35;
	const glm::vec4 _base_phosphate_53;
	glm::vec4 _centre;
	glm::vec4 _phosphate_53;
	glm::vec4 _phosphate_35;
};

} /* namespace curveDNA */

#endif /* BASEPAIR_H_ */
