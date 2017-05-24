/*
 * ParameterMap.h
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#ifndef PARAMETERMAP_H_
#define PARAMETERMAP_H_

#include <unordered_map>
#include <string>

namespace curveDNA {

struct Params {
	float rise_per_residue;
	float twist;
	float wedge;
	float direction;

	Params(float rpr, float t, float w, float d) :
			rise_per_residue(rpr), twist(t), wedge(w), direction(d) {
	}


	Params() : Params(0., 0., 0., 0.) {

	}
};

class ParameterMap {
public:
	ParameterMap();
	virtual ~ParameterMap();

	Params &operator[](std::string &key);
private:
	std::unordered_map<std::string, Params> _map;
};

} /* namespace curveDNA */

#endif /* PARAMETERMAP_H_ */
