/*
 * ParameterMap.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "ParameterMap.h"

namespace curveDNA {

ParameterMap::ParameterMap(): _model(OLSON) {
	_init_Olson();
	_init_Bolshoi();
	_init_Cacchione();
}

ParameterMap::~ParameterMap() {

}

void ParameterMap::set_model(int model) {
	if(model < 0 || model >= NUMBER_OF_MODELS) throw std::string("Unsopported model");
	_model = model;
}

const Params &ParameterMap::operator[](std::string &key) const {
	return _map[_model].at(key);
}

void ParameterMap::_init_Olson() {
	_map[OLSON]["AA"] = Params(0.339000, 0.612611, 0.022756, 1.004067);
	_map[OLSON]["AC"] = Params(0.339000, 0.553269, 0.029824, -0.358771);
	_map[OLSON]["AG"] = Params(0.339000, 0.567232, 0.074089, 0.262120);
	_map[OLSON]["AT"] = Params(0.339000, 0.520108, 0.017453, 0.000000);
	_map[OLSON]["CA"] = Params(0.339000, 0.610865, 0.089029, -0.019605);
	_map[OLSON]["CC"] = Params(0.339000, 0.574213, 0.088118, 0.139096);
	_map[OLSON]["CG"] = Params(0.339000, 0.600393, 0.095993, 0.000000);
	_map[OLSON]["CT"] = Params(0.339000, 0.567232, 0.074089, -0.262120);
	_map[OLSON]["GA"] = Params(0.339000, 0.619592, 0.042250, 0.668289);
	_map[OLSON]["GC"] = Params(0.339000, 0.588176, 0.020944, 0.000000);
	_map[OLSON]["GG"] = Params(0.339000, 0.574213, 0.088118, -0.139096);
	_map[OLSON]["GT"] = Params(0.339000, 0.553269, 0.029824, 0.358771);
	_map[OLSON]["TA"] = Params(0.339000, 0.652753, 0.043633, 0.000000);
	_map[OLSON]["TC"] = Params(0.339000, 0.619592, 0.042250, -0.668289);
	_map[OLSON]["TG"] = Params(0.339000, 0.610865, 0.089029, 0.019605);
	_map[OLSON]["TT"] = Params(0.339000, 0.612611, 0.022756, -1.004067);
}

void ParameterMap::_init_Bolshoi() {
	_map[BOLSHOI]["AA"] = Params(0.339000, 0.621686, 0.126239, -2.684118);
	_map[BOLSHOI]["AC"] = Params(0.339000, 0.600393, 0.019899, 2.480549);
	_map[BOLSHOI]["AG"] = Params(0.339000, 0.483456, 0.146698, 0.035699);
	_map[BOLSHOI]["AT"] = Params(0.339000, 0.549779, 0.045379, -0.000000);
	_map[BOLSHOI]["CA"] = Params(0.339000, 0.602139, 0.060862, -1.094329);
	_map[BOLSHOI]["CC"] = Params(0.339000, 0.587652, 0.037750, -0.982794);
	_map[BOLSHOI]["CG"] = Params(0.339000, 0.520108, 0.116937, -0.000000);
	_map[BOLSHOI]["CT"] = Params(0.339000, 0.483456, 0.146698, -0.035699);
	_map[BOLSHOI]["GA"] = Params(0.339000, 0.644026, 0.092991, 2.101570);
	_map[BOLSHOI]["GC"] = Params(0.339000, 0.698132, 0.087266, -3.141593);
	_map[BOLSHOI]["GG"] = Params(0.339000, 0.587652, 0.037750, 0.982794);
	_map[BOLSHOI]["GT"] = Params(0.339000, 0.600393, 0.019899, -2.480549);
	_map[BOLSHOI]["TA"] = Params(0.339000, 0.628319, 0.015708, -0.000000);
	_map[BOLSHOI]["TC"] = Params(0.339000, 0.644026, 0.092991, -2.101570);
	_map[BOLSHOI]["TG"] = Params(0.339000, 0.602139, 0.060862, 1.094329);
	_map[BOLSHOI]["TT"] = Params(0.339000, 0.621686, 0.126239, 2.684118);
}

void ParameterMap::_init_Cacchione() {
	_map[CACCHIONE]["AA"] = Params(0.339000, 0.626573, 0.094646, 3.049263);
	_map[CACCHIONE]["AC"] = Params(0.339000, 0.603884, 0.063009, 2.297439);
	_map[CACCHIONE]["AG"] = Params(0.339000, 0.621337, 0.032926, 1.012197);
	_map[CACCHIONE]["AT"] = Params(0.339000, 0.610865, 0.127409, -3.141593);
	_map[CACCHIONE]["CA"] = Params(0.339000, 0.602139, 0.117142, -0.059631);
	_map[CACCHIONE]["CC"] = Params(0.339000, 0.575959, 0.024988, -0.432408);
	_map[CACCHIONE]["CG"] = Params(0.339000, 0.588176, 0.080285, -0.000000);
	_map[CACCHIONE]["CT"] = Params(0.339000, 0.621337, 0.032926, -1.012197);
	_map[CACCHIONE]["GA"] = Params(0.339000, 0.624828, 0.045797, 0.704494);
	_map[CACCHIONE]["GC"] = Params(0.339000, 0.581195, 0.064577, -3.141593);
	_map[CACCHIONE]["GG"] = Params(0.339000, 0.575959, 0.024988, 0.432408);
	_map[CACCHIONE]["GT"] = Params(0.339000, 0.603884, 0.063009, -2.297439);
	_map[CACCHIONE]["TA"] = Params(0.339000, 0.603884, 0.139626, -0.000000);
	_map[CACCHIONE]["TC"] = Params(0.339000, 0.624828, 0.045797, -0.704494);
	_map[CACCHIONE]["TG"] = Params(0.339000, 0.602139, 0.117142, 0.059631);
	_map[CACCHIONE]["TT"] = Params(0.339000, 0.626573, 0.094646, -3.049263);
}

} /* namespace curveDNA */
