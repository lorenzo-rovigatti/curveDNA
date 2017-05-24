/*
 * ParameterMap.cpp
 *
 *  Created on: 23 mag 2017
 *      Author: lorenzo
 */

#include "ParameterMap.h"

namespace curveDNA {

ParameterMap::ParameterMap() {
	// default values
	_map["AA"] = Params(0.339000, 0.612611, 0.022756, 1.004067);
	_map["AC"] = Params(0.339000, 0.553269, 0.029824, -0.358771);
	_map["AG"] = Params(0.339000, 0.567232, 0.074089, 0.262120);
	_map["AT"] = Params(0.339000, 0.520108, 0.017453, 0.000000);
	_map["CA"] = Params(0.339000, 0.610865, 0.089029, -0.019605);
	_map["CC"] = Params(0.339000, 0.574213, 0.088118, 0.139096);
	_map["CG"] = Params(0.339000, 0.600393, 0.095993, 0.000000);
	_map["CT"] = Params(0.339000, 0.567232, 0.074089, -0.262120);
	_map["GA"] = Params(0.339000, 0.619592, 0.042250, 0.668289);
	_map["GC"] = Params(0.339000, 0.588176, 0.020944, 0.000000);
	_map["GG"] = Params(0.339000, 0.574213, 0.088118, -0.139096);
	_map["GT"] = Params(0.339000, 0.553269, 0.029824, 0.358771);
	_map["TA"] = Params(0.339000, 0.652753, 0.043633, 0.000000);
	_map["TC"] = Params(0.339000, 0.619592, 0.042250, -0.668289);
	_map["TG"] = Params(0.339000, 0.610865, 0.089029, 0.019605);
	_map["TT"] = Params(0.339000, 0.612611, 0.022756, -1.004067);
}

ParameterMap::~ParameterMap() {

}

Params &ParameterMap::operator[](std::string &key) {
	return _map[key];
}

} /* namespace curveDNA */
