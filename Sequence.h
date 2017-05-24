/*
 * Sequence.h
 *
 *  Created on: 24 mag 2017
 *      Author: lorenzo
 */

#ifndef SEQUENCE_H_
#define SEQUENCE_H_

#include "BasePair.h"

#include "glm/glm.hpp"

#include <vector>
#include <string>

namespace curveDNA {

class ParameterMap;

class Sequence {
public:
	Sequence();
	virtual ~Sequence();

	void init(std::string &filename, ParameterMap &params);
	void print_mgl() const;
	void print_ee() const;

private:
	std::string _get_mgl_line(const glm::vec3 &v, float r, std::string color) const;
	bool _is_valid(char c) const;

	bool _empty = true;
	float _perfect_length;
	glm::vec3 _bounding_box;
	std::string _filename;
	std::vector<BasePair> _bps;
};

} /* namespace curveDNA */

#endif /* SEQUENCE_H_ */
