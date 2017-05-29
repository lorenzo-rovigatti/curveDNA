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
	static const float UNINITIALISED_ANGLE;

	BasePair();
	virtual ~BasePair();

	void init_trasf_matrix(Params &base_step_params);
	void set_sites(glm::mat4 &rot_matrix);
	void set_bending(float bending);
	void set_curvature(float curvature);
	void set_avg_normal(glm::vec3 &avg_normal);

	const glm::mat4 &trasf_matrix() const { return _trasf_matrix; }
	const glm::mat4 &inv_trasf_matrix() const { return _inv_trasf_matrix; }

	glm::vec3 centre() const { return _centre; }
	glm::vec3 phosphate_53() const { return _phosphate_53; }
	glm::vec3 phosphate_35() const { return _phosphate_35; }
	glm::vec3 normal() const { return _normal; }
	glm::vec3 avg_normal() const { return _avg_normal; }

	float bending() const { return _bending; }
	float curvature() const { return _curvature; }

private:
	glm::mat4 _trasf_matrix;
	glm::mat4 _inv_trasf_matrix;
	glm::mat4 _lab_trasf_matrix;
	const glm::vec4 _base_centre;
	const glm::vec4 _base_phosphate_35;
	const glm::vec4 _base_phosphate_53;
	glm::vec4 _centre;
	glm::vec4 _phosphate_53;
	glm::vec4 _phosphate_35;
	glm::vec3 _normal;
	glm::vec3 _avg_normal;

	float _bending;
	float _curvature;
};

} /* namespace curveDNA */

#endif /* BASEPAIR_H_ */
