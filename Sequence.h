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

	void init_from_sequence(const std::string &sequence, ParameterMap &params);
	void init_from_file(const std::string &filename, ParameterMap &params);
	void compute_bending(int bracket);
	void compute_curvature(int bracket);
	void set_filename(const std::string &new_filename);

	bool empty() const { return _empty; }
	std::string filename() const { return _filename; }

	float end_to_end() const;

	void print_mgl() const;
	void print_ee() const;
	void print_tep() const;
	void print_bending() const;
	void print_curvature() const;
	void print_sequence() const;

private:
	std::string _get_mgl_line(const glm::vec3 &v, float r, std::string color) const;
	std::string _get_conf_line(const glm::vec3 &p, const glm::vec3 &v1, const glm::vec3 &v3, const glm::vec3 &velocity, const glm::vec3 &omega) const;
	std::string _get_top_line(const int i, const double theta_0, const double beta_0) const;
	bool _is_valid(char c) const;

	bool _empty = true;
	float _perfect_length = 0.f;;
	glm::vec3 _bounding_box;
	std::string _filename;
	std::string _sequence;
	std::vector<BasePair> _bps;
};

} /* namespace curveDNA */

#endif /* SEQUENCE_H_ */
