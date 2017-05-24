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

	const glm::mat4 &trasf_matrix() { return _trasf_matrix; }
	const glm::mat4 &inv_trasf_matrix() { return _inv_trasf_matrix; }
	void init_trasf_matrix(Params &base_step_params);

private:
	glm::mat4 _trasf_matrix;
	glm::mat4 _inv_trasf_matrix;
};

} /* namespace curveDNA */

#endif /* BASEPAIR_H_ */
