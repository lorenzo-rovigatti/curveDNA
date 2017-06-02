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
	enum {
		OLSON,
		BOLSHOI,
		CACCHIONE,
		NUMBER_OF_MODELS
	};

	ParameterMap();
	virtual ~ParameterMap();

	void set_model(int model);

	const Params &operator[](std::string &key) const;
private:
	int _model;
	std::unordered_map<std::string, Params> _map[NUMBER_OF_MODELS];

	void _init_Olson();
	void _init_Bolshoi();
	void _init_Cacchione();
};

} /* namespace curveDNA */

#endif /* PARAMETERMAP_H_ */
