// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.3
		phong_size 40.
	}
}

// original window dimensions: 1024x768


// camera settings

camera {
	orthographic
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.33333 * <1, 0, 0>
	location <118.201, 111.688, 228.241>
	look_at <118.201, 111.688, 99.9927>
	direction <0, 0, -128.248>
	angle 57.8224
}


# declare cpy_camera_pos = <118.201, 111.688, 228.241>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 160
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}


// particle 0
sphere {
	<174.163422, 114.118080, 98.477089> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1
sphere {
	<174.110962, 113.363129, 99.048462> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 2
sphere {
	<174.127869, 114.965591, 98.053253> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 3
sphere {
	<173.868408, 114.093590, 98.311966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 4
sphere {
	<173.621140, 113.760773, 99.164757> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 5
sphere {
	<174.058426, 114.598183, 97.531929> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 6
sphere {
	<173.578049, 114.050751, 98.143105> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 7
sphere {
	<173.236481, 114.277267, 98.998199> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 8
sphere {
	<173.901642, 114.015259, 97.252480> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 9
sphere {
	<173.289551, 113.979530, 97.980637> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 10
sphere {
	<172.992676, 114.670326, 98.558434> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 11
sphere {
	<173.612350, 113.434135, 97.275284> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 12
sphere {
	<173.000122, 113.889290, 97.829109> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 13
sphere {
	<172.856766, 114.823105, 97.910461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 14
sphere {
	<173.217438, 113.002419, 97.573395> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 15
sphere {
	<172.710999, 113.789536, 97.682938> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 16
sphere {
	<172.825958, 114.635895, 97.271088> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 17
sphere {
	<172.696014, 112.877144, 97.940781> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 18
sphere {
	<172.420441, 113.685585, 97.542633> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 19
sphere {
	<172.803970, 114.152679, 96.811943> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 20
sphere {
	<172.128494, 113.064163, 98.196686> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 21
sphere {
	<172.126831, 113.581490, 97.409027> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 22
sphere {
	<172.691315, 113.515594, 96.649963> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 23
sphere {
	<171.614105, 113.461578, 98.197624> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 24
sphere {
	<171.830948, 113.481148, 97.277512> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 25
sphere {
	<172.438995, 112.989914, 96.740738> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 26
sphere {
	<171.224945, 113.813065, 97.926949> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 27
sphere {
	<171.537140, 113.393387, 97.133759> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 28
sphere {
	<172.009491, 112.575371, 97.050682> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 29
sphere {
	<170.997803, 114.132645, 97.382355> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 30
sphere {
	<171.247452, 113.317894, 96.974739> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 31
sphere {
	<171.468323, 112.470444, 97.338333> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 32
sphere {
	<170.926727, 114.188141, 96.777252> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 33
sphere {
	<170.962341, 113.238655, 96.809525> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 34
sphere {
	<170.893433, 112.682480, 97.574432> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 35
sphere {
	<170.929031, 113.921402, 96.152328> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 36
sphere {
	<170.687332, 113.140656, 96.637886> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 37
sphere {
	<170.356720, 113.082191, 97.524704> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 38
sphere {
	<170.940964, 113.378372, 95.755653> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 39
sphere {
	<170.424667, 113.018677, 96.462105> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 40
sphere {
	<169.958527, 113.444336, 97.169701> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 41
sphere {
	<170.865494, 112.763168, 95.662376> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 42
sphere {
	<170.169800, 112.878746, 96.287949> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 43
sphere {
	<169.753174, 113.683319, 96.567696> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 44
sphere {
	<170.634583, 112.177780, 95.850014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 45
sphere {
	<169.918350, 112.728943, 96.116966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 46
sphere {
	<169.751602, 113.637413, 95.902351> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 47
sphere {
	<170.193283, 111.822929, 96.169189> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 48
sphere {
	<169.661026, 112.576088, 95.958290> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 49
sphere {
	<169.812485, 113.295349, 95.359207> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 50
sphere {
	<169.631485, 111.759789, 96.439911> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 51
sphere {
	<169.393921, 112.425743, 95.813545> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 52
sphere {
	<169.838974, 112.759155, 95.045471> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 53
sphere {
	<169.054413, 111.931633, 96.548248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 54
sphere {
	<169.123306, 112.283142, 95.667587> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 55
sphere {
	<169.796265, 112.104248, 95.023956> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 56
sphere {
	<168.499649, 112.286964, 96.381897> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 57
sphere {
	<168.850220, 112.159172, 95.510239> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 58
sphere {
	<169.505219, 111.549660, 95.196136> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 59
sphere {
	<168.166290, 112.634727, 95.963272> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 60
sphere {
	<168.580536, 112.055199, 95.333740> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 61
sphere {
	<169.002228, 111.221390, 95.495361> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 62
sphere {
	<168.058609, 112.846878, 95.334167> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 63
sphere {
	<168.317993, 111.958038, 95.142586> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 64
sphere {
	<168.442337, 111.185646, 95.678421> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 65
sphere {
	<168.069382, 112.783455, 94.747559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 66
sphere {
	<168.058075, 111.857117, 94.949829> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 67
sphere {
	<167.851212, 111.438194, 95.774986> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 68
sphere {
	<168.154831, 112.421463, 94.193962> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 69
sphere {
	<167.798447, 111.749573, 94.760262> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 70
sphere {
	<167.381042, 111.853767, 95.605301> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 71
sphere {
	<168.158203, 111.829605, 93.886581> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 72
sphere {
	<167.536148, 111.635086, 94.578697> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 73
sphere {
	<167.105362, 112.248863, 95.159103> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 74
sphere {
	<167.978516, 111.174377, 93.877808> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 75
sphere {
	<167.267441, 111.511658, 94.413376> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 76
sphere {
	<166.986023, 112.404602, 94.563805> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 77
sphere {
	<167.612518, 110.688843, 94.092339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 78
sphere {
	<166.988129, 111.381989, 94.272430> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 79
sphere {
	<166.962891, 112.257065, 93.908012> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 80
sphere {
	<167.107300, 110.462616, 94.471680> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 81
sphere {
	<166.700287, 111.251831, 94.149582> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 82
sphere {
	<166.934586, 111.842323, 93.445602> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 83
sphere {
	<166.566711, 110.530159, 94.750031> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 84
sphere {
	<166.408417, 111.128967, 94.028778> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 85
sphere {
	<166.913910, 111.221748, 93.231888> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 86
sphere {
	<165.974640, 110.854706, 94.826149> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 87
sphere {
	<166.111786, 111.026764, 93.901291> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 88
sphere {
	<166.705841, 110.588150, 93.306427> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 89
sphere {
	<165.523926, 111.296989, 94.594536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 90
sphere {
	<165.810883, 110.942352, 93.769958> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 91
sphere {
	<166.299377, 110.147774, 93.599106> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 92
sphere {
	<165.274139, 111.647484, 94.107407> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 93
sphere {
	<165.508636, 110.865067, 93.637444> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 94
sphere {
	<165.765976, 110.018295, 93.977928> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 95
sphere {
	<165.168060, 111.734451, 93.471992> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 96
sphere {
	<165.208420, 110.787888, 93.500221> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 97
sphere {
	<165.233322, 110.182831, 94.229927> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 98
sphere {
	<165.092300, 111.510262, 92.897026> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 99
sphere {
	<164.917725, 110.696953, 93.352097> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 100
sphere {
	<164.690598, 110.538437, 94.259010> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 101
sphere {
	<165.064972, 111.030655, 92.476822> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 102
sphere {
	<164.640106, 110.581894, 93.195938> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 103
sphere {
	<164.246460, 110.926506, 93.986786> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 104
sphere {
	<164.992493, 110.413353, 92.331879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 105
sphere {
	<164.370758, 110.440430, 93.047241> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 106
sphere {
	<163.950836, 111.179848, 93.466888> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 107
sphere {
	<164.802795, 109.820786, 92.474022> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 108
sphere {
	<164.102020, 110.279030, 92.919006> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 109
sphere {
	<163.804642, 111.175415, 92.833969> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 110
sphere {
	<164.462158, 109.407326, 92.820923> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 111
sphere {
	<163.826248, 110.110641, 92.817627> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 112
sphere {
	<163.760101, 110.874725, 92.259995> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 113
sphere {
	<163.986359, 109.268547, 93.223068> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 114
sphere {
	<163.537476, 109.952354, 92.738747> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 115
sphere {
	<163.763092, 110.313812, 91.891632> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 116
sphere {
	<163.406265, 109.432907, 93.521126> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 117
sphere {
	<163.239502, 109.805267, 92.671700> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 118
sphere {
	<163.692383, 109.651772, 91.852852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 119
sphere {
	<162.860367, 109.785187, 93.540611> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 120
sphere {
	<162.938309, 109.662643, 92.609497> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 121
sphere {
	<163.506683, 109.074272, 92.130020> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 122
sphere {
	<162.398041, 110.125999, 93.236084> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 123
sphere {
	<162.633942, 109.526588, 92.548279> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 124
sphere {
	<163.164032, 108.741783, 92.595657> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 125
sphere {
	<162.078186, 110.281357, 92.691956> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 126
sphere {
	<162.327515, 109.396767, 92.483704> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 127
sphere {
	<162.679382, 108.725502, 93.053551> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 128
sphere {
	<161.907516, 110.144829, 92.079788> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 129
sphere {
	<162.021759, 109.267914, 92.414421> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 130
sphere {
	<162.169800, 108.915779, 93.282318> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 131
sphere {
	<161.788193, 109.766830, 91.642563> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 132
sphere {
	<161.719254, 109.131172, 92.346161> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 133
sphere {
	<161.639206, 109.302612, 93.275330> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 134
sphere {
	<161.719238, 109.136703, 91.397919> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 135
sphere {
	<161.424957, 108.975227, 92.284691> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 136
sphere {
	<161.145905, 109.581757, 92.958054> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 137
sphere {
	<161.646027, 108.509270, 91.488968> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 138
sphere {
	<161.139511, 108.798576, 92.239632> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 139
sphere {
	<160.775879, 109.658821, 92.403625> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 140
sphere {
	<161.490402, 107.990799, 91.888123> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 141
sphere {
	<160.857941, 108.611374, 92.219521> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 142
sphere {
	<160.534927, 109.424309, 91.853378> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 143
sphere {
	<161.217209, 107.752502, 92.399460> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 144
sphere {
	<160.577545, 108.420952, 92.218689> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 145
sphere {
	<160.443695, 108.910828, 91.417908> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 146
sphere {
	<160.797241, 107.801147, 92.901909> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 147
sphere {
	<160.296967, 108.230965, 92.228783> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 148
sphere {
	<160.451462, 108.255630, 91.293533> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 149
sphere {
	<160.251205, 108.044373, 93.157356> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 150
sphere {
	<160.014420, 108.044144, 92.241966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 151
sphere {
	<160.424011, 107.691040, 91.463028> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 152
sphere {
	<159.701599, 108.254395, 93.112083> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 153
sphere {
	<159.727509, 107.863960, 92.249146> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 154
sphere {
	<160.337753, 107.202652, 91.950134> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 155
sphere {
	<159.160294, 108.456085, 92.725418> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 156
sphere {
	<159.438263, 107.687164, 92.245934> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 157
sphere {
	<160.062714, 107.006432, 92.460175> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 158
sphere {
	<158.797440, 108.385788, 92.225380> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 159
sphere {
	<159.154114, 107.504448, 92.223038> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 160
sphere {
	<159.589218, 107.040215, 92.926140> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 161
sphere {
	<158.633392, 108.067123, 91.665024> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 162
sphere {
	<158.876648, 107.315010, 92.178734> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 163
sphere {
	<158.971527, 107.246689, 93.119728> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 164
sphere {
	<158.667908, 107.535942, 91.280479> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 165
sphere {
	<158.603745, 107.120010, 92.129776> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 166
sphere {
	<158.419067, 107.474953, 92.989464> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 167
sphere {
	<158.686249, 106.918808, 91.206779> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 168
sphere {
	<158.340851, 106.910225, 92.089760> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 169
sphere {
	<157.921188, 107.597374, 92.590622> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 170
sphere {
	<158.694397, 106.322739, 91.434738> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 171
sphere {
	<158.088745, 106.684906, 92.071960> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 172
sphere {
	<157.590271, 107.490143, 92.023590> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 173
sphere {
	<158.581390, 105.888039, 91.925385> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 174
sphere {
	<157.841736, 106.452827, 92.075920> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 175
sphere {
	<157.455673, 107.091034, 91.490395> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 176
sphere {
	<158.296600, 105.735207, 92.497009> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 177
sphere {
	<157.597290, 106.218475, 92.090324> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 178
sphere {
	<157.510498, 106.498833, 91.188599> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 179
sphere {
	<157.806152, 105.805260, 92.917824> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 180
sphere {
	<157.352112, 105.985321, 92.111908> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 181
sphere {
	<157.640930, 105.845512, 91.219597> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 182
sphere {
	<157.196152, 105.988731, 93.047256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 183
sphere {
	<157.097748, 105.762650, 92.133858> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 184
sphere {
	<157.672302, 105.290215, 91.545753> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 185
sphere {
	<156.615555, 106.133957, 92.861023> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 186
sphere {
	<156.831894, 105.552887, 92.138718> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 187
sphere {
	<157.539749, 104.927605, 92.053955> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 188
sphere {
	<156.143707, 106.144028, 92.414627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 189
sphere {
	<156.560654, 105.350235, 92.123520> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 190
sphere {
	<157.157928, 104.787109, 92.598190> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 191
sphere {
	<155.907776, 105.970627, 91.826889> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 192
sphere {
	<156.286957, 105.151817, 92.098526> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 193
sphere {
	<156.604645, 104.895500, 92.954422> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 194
sphere {
	<155.864731, 105.538864, 91.342896> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 195
sphere {
	<156.013916, 104.953613, 92.066261> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 196
sphere {
	<155.983307, 105.134079, 92.996658> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 197
sphere {
	<155.930801, 104.931122, 91.121918> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 198
sphere {
	<155.749451, 104.744713, 92.031509> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 199
sphere {
	<155.422379, 105.301155, 92.726196> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 200
sphere {
	<155.984406, 104.314346, 91.219864> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 201
sphere {
	<155.493866, 104.524170, 92.000870> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 202
sphere {
	<155.019485, 105.313446, 92.227089> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 203
sphere {
	<155.937515, 103.793159, 91.591019> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 204
sphere {
	<155.239395, 104.301109, 91.989326> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 205
sphere {
	<154.797928, 105.068497, 91.649681> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 206
sphere {
	<155.712723, 103.493515, 92.140701> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 207
sphere {
	<154.979233, 104.084930, 92.005524> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 208
sphere {
	<154.736542, 104.585205, 91.237396> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 209
sphere {
	<155.303406, 103.463478, 92.644173> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 210
sphere {
	<154.711441, 103.879059, 92.034622> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 211
sphere {
	<154.768707, 103.961243, 91.091682> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 212
sphere {
	<154.768616, 103.641052, 92.950798> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 213
sphere {
	<154.432678, 103.688965, 92.062614> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 214
sphere {
	<154.800919, 103.321198, 91.269928> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 215
sphere {
	<154.161102, 103.911896, 92.943359> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 216
sphere {
	<154.139572, 103.519844, 92.076187> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 217
sphere {
	<154.700562, 102.856606, 91.695892> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 218
sphere {
	<153.625946, 104.097496, 92.625427> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 219
sphere {
	<153.838882, 103.363457, 92.073586> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 220
sphere {
	<154.404175, 102.625778, 92.262085> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 221
sphere {
	<153.261627, 104.115730, 92.079315> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 222
sphere {
	<153.534836, 103.213997, 92.063286> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 223
sphere {
	<153.951340, 102.703796, 92.745468> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 224
sphere {
	<153.057785, 103.835663, 91.529343> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 225
sphere {
	<153.230957, 103.064407, 92.048065> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 226
sphere {
	<153.449875, 102.928459, 92.960678> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 227
sphere {
	<152.926819, 103.363022, 91.201118> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 228
sphere {
	<152.931778, 102.906059, 92.031136> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 229
sphere {
	<152.867828, 103.301979, 92.890381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 230
sphere {
	<152.907959, 102.673874, 91.112068> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 231
sphere {
	<152.637375, 102.738586, 92.018166> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 232
sphere {
	<152.395386, 103.486588, 92.548370> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 233
sphere {
	<152.819275, 102.101982, 91.339363> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 234
sphere {
	<152.347305, 102.563789, 92.023293> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 235
sphere {
	<152.005569, 103.448105, 92.003487> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 236
sphere {
	<152.670013, 101.689362, 91.849106> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 237
sphere {
	<152.059311, 102.386772, 92.046738> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 238
sphere {
	<151.771149, 103.131569, 91.535416> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 239
sphere {
	<152.379868, 101.560432, 92.383743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 240
sphere {
	<151.765533, 102.221634, 92.081192> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 241
sphere {
	<151.652679, 102.602875, 91.220291> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 242
sphere {
	<151.945038, 101.686111, 92.842934> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 243
sphere {
	<151.461304, 102.079536, 92.125923> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 244
sphere {
	<151.572708, 101.935486, 91.195343> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 245
sphere {
	<151.426651, 102.044922, 93.072899> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 246
sphere {
	<151.149231, 101.957474, 92.176224> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 247
sphere {
	<151.457840, 101.348679, 91.517975> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 248
sphere {
	<150.910004, 102.434235, 92.960205> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 249
sphere {
	<150.833527, 101.845505, 92.228378> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 250
sphere {
	<151.281143, 101.024109, 92.073212> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 251
sphere {
	<150.428604, 102.631775, 92.570557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 252
sphere {
	<150.515228, 101.740143, 92.278137> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 253
sphere {
	<150.994812, 101.025116, 92.675537> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 254
sphere {
	<150.038284, 102.530312, 92.060837> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 255
sphere {
	<150.194809, 101.638557, 92.322113> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 256
sphere {
	<150.587708, 101.310242, 93.120232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 257
sphere {
	<149.765610, 102.125931, 91.631104> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 258
sphere {
	<149.875168, 101.533257, 92.362663> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 259
sphere {
	<150.128723, 101.688736, 93.263039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 260
sphere {
	<149.558563, 101.562393, 91.469261> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 261
sphere {
	<149.562988, 101.409897, 92.407661> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 262
sphere {
	<149.587524, 102.052414, 93.104630> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 263
sphere {
	<149.457504, 100.911949, 91.607628> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 264
sphere {
	<149.258072, 101.271942, 92.461426> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 265
sphere {
	<149.104584, 102.163376, 92.745865> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 266
sphere {
	<149.348312, 100.445930, 92.004509> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 267
sphere {
	<148.959351, 101.129715, 92.533813> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 268
sphere {
	<148.667633, 101.999542, 92.293991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 269
sphere {
	<149.216476, 100.218491, 92.586105> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 270
sphere {
	<148.666183, 100.992317, 92.633057> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 271
sphere {
	<148.359161, 101.536049, 91.919449> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 272
sphere {
	<148.982483, 100.309509, 93.210068> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 273
sphere {
	<148.373413, 100.864937, 92.746864> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 274
sphere {
	<148.169342, 100.984726, 91.828583> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 275
sphere {
	<148.631561, 100.566208, 93.609047> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 276
sphere {
	<148.077301, 100.746872, 92.862000> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 277
sphere {
	<148.116150, 100.317764, 92.017311> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 278
sphere {
	<148.123932, 101.012718, 93.771011> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 279
sphere {
	<147.777618, 100.639198, 92.978218> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 280
sphere {
	<148.063629, 99.867828, 92.506714> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 281
sphere {
	<147.580200, 101.325989, 93.601540> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 282
sphere {
	<147.475525, 100.538475, 93.094582> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 283
sphere {
	<147.958374, 99.724213, 93.149490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 284
sphere {
	<147.054260, 101.378250, 93.223091> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 285
sphere {
	<147.171722, 100.437851, 93.206169> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 286
sphere {
	<147.743607, 99.868294, 93.703926> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 287
sphere {
	<146.614731, 101.124649, 92.863647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 288
sphere {
	<146.869156, 100.321983, 93.304817> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 289
sphere {
	<147.353256, 100.227654, 94.114784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 290
sphere {
	<146.333832, 100.589233, 92.569267> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 291
sphere {
	<146.570572, 100.189713, 93.395569> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 292
sphere {
	<146.855835, 100.569038, 94.216461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 293
sphere {
	<146.197693, 99.982834, 92.548584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 294
sphere {
	<146.282120, 100.041901, 93.493690> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 295
sphere {
	<146.260300, 100.819839, 94.035439> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 296
sphere {
	<146.197174, 99.371330, 92.828621> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 297
sphere {
	<146.003357, 99.882721, 93.602760> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 298
sphere {
	<145.745102, 100.789169, 93.707016> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 299
sphere {
	<146.179184, 98.994019, 93.322617> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 300
sphere {
	<145.732590, 99.724388, 93.730240> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 301
sphere {
	<145.307861, 100.477707, 93.341278> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 302
sphere {
	<146.117050, 98.885529, 93.948410> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 303
sphere {
	<145.469849, 99.575386, 93.883453> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 304
sphere {
	<145.029007, 99.932846, 93.123878> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 305
sphere {
	<145.927307, 99.057625, 94.532982> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 306
sphere {
	<145.207245, 99.448082, 94.055313> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 307
sphere {
	<144.905670, 99.296700, 93.169128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 308
sphere {
	<145.577866, 99.417419, 94.927635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 309
sphere {
	<144.935486, 99.346909, 94.230339> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 310
sphere {
	<144.912766, 98.722847, 93.516800> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 311
sphere {
	<145.059052, 99.831551, 95.035934> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 312
sphere {
	<144.654037, 99.259712, 94.397789> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 313
sphere {
	<144.922684, 98.420113, 94.048355> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 314
sphere {
	<144.490753, 100.045708, 94.902435> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 315
sphere {
	<144.362488, 99.175575, 94.548271> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 316
sphere {
	<144.852203, 98.376526, 94.692596> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 317
sphere {
	<143.940384, 100.024086, 94.580208> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 318
sphere {
	<144.060852, 99.085754, 94.673347> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 319
sphere {
	<144.631638, 98.626106, 95.275146> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 320
sphere {
	<143.494720, 99.686272, 94.206490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 321
sphere {
	<143.755341, 98.987335, 94.782318> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 322
sphere {
	<144.222015, 99.035049, 95.606445> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 323
sphere {
	<143.242126, 99.125107, 93.996956> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 324
sphere {
	<143.448593, 98.885780, 94.884796> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 325
sphere {
	<143.694321, 99.442787, 95.611801> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 326
sphere {
	<143.124069, 98.492104, 94.085457> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 327
sphere {
	<143.143738, 98.779739, 94.988396> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 328
sphere {
	<143.171143, 99.647614, 95.369492> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 329
sphere {
	<143.030579, 98.002434, 94.457214> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 330
sphere {
	<142.847916, 98.666862, 95.108513> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 331
sphere {
	<142.637283, 99.585541, 95.004776> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 332
sphere {
	<142.983261, 97.731377, 95.033058> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 333
sphere {
	<142.564423, 98.552689, 95.254440> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 334
sphere {
	<142.196121, 99.223557, 94.694557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 335
sphere {
	<142.893707, 97.763489, 95.664124> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 336
sphere {
	<142.287186, 98.454491, 95.422333> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 337
sphere {
	<141.909378, 98.629639, 94.570442> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 338
sphere {
	<142.679382, 98.096291, 96.207901> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 339
sphere {
	<142.010132, 98.380569, 95.602692> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 340
sphere {
	<141.748016, 98.034805, 94.759544> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 341
sphere {
	<142.334534, 98.544273, 96.478561> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 342
sphere {
	<141.731506, 98.325607, 95.787720> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 343
sphere {
	<141.716431, 97.553238, 95.237839> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 344
sphere {
	<141.847488, 98.984329, 96.459908> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 345
sphere {
	<141.451187, 98.281509, 95.973068> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 346
sphere {
	<141.737640, 97.382088, 95.882141> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 347
sphere {
	<141.272186, 99.177460, 96.226830> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 348
sphere {
	<141.163406, 98.241028, 96.147209> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 349
sphere {
	<141.669159, 97.524330, 96.507263> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 350
sphere {
	<140.728363, 99.057526, 95.939178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 351
sphere {
	<140.868225, 98.197960, 96.308319> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 352
sphere {
	<141.477402, 97.915802, 96.977951> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 353
sphere {
	<140.277802, 98.654907, 95.723656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 354
sphere {
	<140.573746, 98.136497, 96.463760> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 355
sphere {
	<141.095474, 98.409935, 97.206886> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 356
sphere {
	<139.999298, 98.050903, 95.714249> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 357
sphere {
	<140.281708, 98.052414, 96.613693> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 358
sphere {
	<140.534851, 98.790062, 97.153122> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 359
sphere {
	<139.933487, 97.449577, 95.969833> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 360
sphere {
	<139.992996, 97.960770, 96.765816> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 361
sphere {
	<139.983185, 98.897713, 96.911453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 362
sphere {
	<139.900803, 97.068062, 96.459724> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 363
sphere {
	<139.714813, 97.867210, 96.934837> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 364
sphere {
	<139.431931, 98.715820, 96.620125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 365
sphere {
	<139.911896, 96.952347, 97.087257> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 366
sphere {
	<139.449417, 97.782013, 97.127121> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 367
sphere {
	<139.003464, 98.237534, 96.425156> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 368
sphere {
	<139.858398, 97.167389, 97.722305> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 369
sphere {
	<139.190994, 97.707123, 97.333389> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 370
sphere {
	<138.766510, 97.617561, 96.490143> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 371
sphere {
	<139.652847, 97.606422, 98.155334> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 372
sphere {
	<138.932434, 97.645721, 97.543488> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 373
sphere {
	<138.694458, 97.072342, 96.826675> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 374
sphere {
	<139.258118, 98.060280, 98.331665> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 375
sphere {
	<138.663284, 97.604347, 97.744812> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 376
sphere {
	<138.728470, 96.736458, 97.368393> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 377
sphere {
	<138.706345, 98.396255, 98.264664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 378
sphere {
	<138.383636, 97.571060, 97.933548> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 379
sphere {
	<138.751587, 96.700378, 98.008469> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 380
sphere {
	<138.118500, 98.477379, 98.020584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 381
sphere {
	<138.095947, 97.530975, 98.107635> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 382
sphere {
	<138.673676, 96.976166, 98.615250> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 383
sphere {
	<137.568054, 98.222305, 97.730148> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 384
sphere {
	<137.799515, 97.474648, 98.261597> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 385
sphere {
	<138.382126, 97.398277, 99.005829> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 386
sphere {
	<137.203186, 97.737564, 97.572853> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 387
sphere {
	<137.504761, 97.395164, 98.408295> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 388
sphere {
	<137.936920, 97.839478, 99.125931> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 389
sphere {
	<136.996994, 97.126968, 97.653671> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 390
sphere {
	<137.216263, 97.294724, 98.555046> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 391
sphere {
	<137.337616, 98.128937, 98.989227> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 392
sphere {
	<136.990799, 96.564888, 97.993134> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 393
sphere {
	<136.931213, 97.183853, 98.701233> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 394
sphere {
	<136.753586, 98.114677, 98.667503> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 395
sphere {
	<137.020172, 96.250229, 98.561211> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 396
sphere {
	<136.653748, 97.070107, 98.858795> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 397
sphere {
	<136.276779, 97.793610, 98.375389> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 398
sphere {
	<136.977890, 96.241425, 99.186508> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 399
sphere {
	<136.385483, 96.958687, 99.033417> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 400
sphere {
	<135.959244, 97.211998, 98.225128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 401
sphere {
	<136.825699, 96.530624, 99.756073> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 402
sphere {
	<136.119873, 96.860397, 99.219330> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 403
sphere {
	<135.818405, 96.597343, 98.359650> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 404
sphere {
	<136.488449, 96.940506, 100.089371> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 405
sphere {
	<135.851898, 96.776566, 99.409241> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 406
sphere {
	<135.824982, 96.091484, 98.754189> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 407
sphere {
	<135.987198, 97.333984, 100.164352> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 408
sphere {
	<135.573700, 96.701782, 99.587212> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 409
sphere {
	<135.869202, 95.827415, 99.369522> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 410
sphere {
	<135.380325, 97.548080, 99.968773> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 411
sphere {
	<135.285141, 96.635780, 99.752472> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 412
sphere {
	<135.811966, 95.897903, 100.030273> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 413
sphere {
	<134.829727, 97.459183, 99.634827> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 414
sphere {
	<134.994446, 96.568298, 99.913307> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 415
sphere {
	<135.625107, 96.208366, 100.523148> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 416
sphere {
	<134.382401, 97.089973, 99.410980> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 417
sphere {
	<134.703796, 96.483109, 100.064766> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 418
sphere {
	<135.243134, 96.635025, 100.829681> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 419
sphere {
	<134.113113, 96.517975, 99.323730> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 420
sphere {
	<134.418793, 96.370872, 100.209190> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 421
sphere {
	<134.699844, 96.988640, 100.871262> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 422
sphere {
	<134.034348, 95.903885, 99.478798> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 423
sphere {
	<134.147980, 96.234589, 100.360222> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 424
sphere {
	<134.088440, 97.119720, 100.695305> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 425
sphere {
	<134.087036, 95.415558, 99.886292> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 426
sphere {
	<133.895187, 96.085510, 100.529251> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 427
sphere {
	<133.524506, 96.951447, 100.420395> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 428
sphere {
	<134.169022, 95.179367, 100.473557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 429
sphere {
	<133.656937, 95.940895, 100.721741> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 430
sphere {
	<133.112610, 96.485542, 100.168289> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 431
sphere {
	<134.164856, 95.258888, 101.141373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 432
sphere {
	<133.426346, 95.804428, 100.929169> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 433
sphere {
	<132.926544, 95.846535, 100.124458> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 434
sphere {
	<133.974182, 95.583855, 101.671066> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 435
sphere {
	<133.198959, 95.671173, 101.142441> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 436
sphere {
	<132.967361, 95.217690, 100.342522> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 437
sphere {
	<133.547287, 95.971085, 101.971832> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 438
sphere {
	<132.965332, 95.550354, 101.355957> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 439
sphere {
	<133.088699, 94.787056, 100.806870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 440
sphere {
	<132.978363, 96.230164, 102.016815> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 441
sphere {
	<132.720932, 95.442017, 101.564339> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 442
sphere {
	<133.179291, 94.628044, 101.401123> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 443
sphere {
	<132.383362, 96.269905, 101.880157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 444
sphere {
	<132.469604, 95.333473, 101.764099> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 445
sphere {
	<133.182816, 94.792328, 102.076584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 446
sphere {
	<131.812210, 95.995453, 101.594414> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 447
sphere {
	<132.215408, 95.217613, 101.956146> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 448
sphere {
	<132.950012, 95.108498, 102.545776> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 449
sphere {
	<131.463058, 95.500694, 101.453133> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 450
sphere {
	<131.965149, 95.083565, 102.140808> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 451
sphere {
	<132.488754, 95.463348, 102.834183> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 452
sphere {
	<131.345444, 94.873352, 101.454590> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 453
sphere {
	<131.728027, 94.925041, 102.323380> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 454
sphere {
	<131.859741, 95.695816, 102.859749> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 455
sphere {
	<131.452606, 94.259209, 101.706848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 456
sphere {
	<131.502701, 94.752274, 102.508446> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 457
sphere {
	<131.219315, 95.640282, 102.682114> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 458
sphere {
	<131.657654, 93.873329, 102.188049> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 459
sphere {
	<131.282242, 94.573959, 102.694191> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 460
sphere {
	<130.725494, 95.285995, 102.407524> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 461
sphere {
	<131.774063, 93.772972, 102.819763> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 462
sphere {
	<131.063873, 94.397461, 102.884155> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 463
sphere {
	<130.481537, 94.754890, 102.226685> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 464
sphere {
	<131.658203, 93.888229, 103.419701> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 465
sphere {
	<130.842850, 94.237625, 103.084831> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 466
sphere {
	<130.418808, 94.108681, 102.246521> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 467
sphere {
	<131.347260, 94.192627, 103.886566> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 468
sphere {
	<130.611023, 94.102791, 103.291824> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 469
sphere {
	<130.526855, 93.519463, 102.548897> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 470
sphere {
	<130.820175, 94.551590, 104.100464> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 471
sphere {
	<130.363068, 93.989052, 103.492599> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 472
sphere {
	<130.623840, 93.173813, 103.084549> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 473
sphere {
	<130.229752, 94.752457, 104.038994> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 474
sphere {
	<130.105164, 93.883881, 103.685799> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 475
sphere {
	<130.673248, 93.125511, 103.722321> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 476
sphere {
	<129.632889, 94.696693, 103.810226> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 477
sphere {
	<129.840088, 93.770256, 103.863220> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 478
sphere {
	<130.544937, 93.347557, 104.336075> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 479
sphere {
	<129.154755, 94.332153, 103.525772> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 480
sphere {
	<129.567886, 93.644989, 104.021729> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 481
sphere {
	<130.162949, 93.720886, 104.756073> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 482
sphere {
	<128.917587, 93.748825, 103.339417> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 483
sphere {
	<129.296432, 93.512474, 104.175438> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 484
sphere {
	<129.656769, 94.043968, 104.873199> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 485
sphere {
	<128.831635, 93.140869, 103.437279> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 486
sphere {
	<129.035767, 93.370102, 104.338333> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 487
sphere {
	<129.065109, 94.218147, 104.761604> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 488
sphere {
	<128.876587, 92.607811, 103.797318> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 489
sphere {
	<128.785629, 93.224770, 104.514923> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 490
sphere {
	<128.483765, 94.122627, 104.471527> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 491
sphere {
	<128.980896, 92.304504, 104.396240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 492
sphere {
	<128.544281, 93.088623, 104.709648> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 493
sphere {
	<128.024719, 93.707108, 104.212875> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 494
sphere {
	<129.010666, 92.344322, 105.067001> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 495
sphere {
	<128.312851, 92.967209, 104.925110> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 496
sphere {
	<127.761299, 93.120255, 104.169136> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 497
sphere {
	<128.880951, 92.634247, 105.607430> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 498
sphere {
	<128.086304, 92.859978, 105.153244> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 499
sphere {
	<127.722626, 92.471748, 104.368248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 500
sphere {
	<128.543762, 93.077782, 105.954819> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 501
sphere {
	<127.857536, 92.760818, 105.382927> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 502
sphere {
	<127.832657, 92.030960, 104.778008> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 503
sphere {
	<128.016937, 93.383621, 106.079987> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 504
sphere {
	<127.614861, 92.670723, 105.601273> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 505
sphere {
	<127.954109, 91.813896, 105.378014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 506
sphere {
	<127.402077, 93.516830, 105.972839> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 507
sphere {
	<127.353287, 92.586014, 105.799011> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 508
sphere {
	<127.954704, 91.888031, 106.023361> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 509
sphere {
	<126.829720, 93.373482, 105.729645> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 510
sphere {
	<127.078545, 92.491608, 105.973145> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 511
sphere {
	<127.754219, 92.186386, 106.564285> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 512
sphere {
	<126.407631, 92.957962, 105.491966> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 513
sphere {
	<126.802429, 92.374870, 106.130714> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 514
sphere {
	<127.334976, 92.603668, 106.881180> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 515
sphere {
	<126.196686, 92.325508, 105.402855> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 516
sphere {
	<126.529205, 92.241425, 106.280518> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 517
sphere {
	<126.749054, 92.921471, 106.903648> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 518
sphere {
	<126.197205, 91.699303, 105.576981> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 519
sphere {
	<126.257355, 92.101479, 106.427032> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 520
sphere {
	<126.131310, 93.009903, 106.668266> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 521
sphere {
	<126.274940, 91.240257, 106.030624> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 522
sphere {
	<125.988434, 91.958076, 106.575325> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 523
sphere {
	<125.647179, 92.822678, 106.387642> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 524
sphere {
	<126.255424, 91.048317, 106.588318> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 525
sphere {
	<125.719666, 91.820869, 106.729614> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 526
sphere {
	<125.300041, 92.362053, 106.073647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 527
sphere {
	<126.127258, 91.140427, 107.249268> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 528
sphere {
	<125.448227, 91.703079, 106.894211> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 529
sphere {
	<125.107712, 91.722336, 106.009460> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 530
sphere {
	<125.832817, 91.498466, 107.736511> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 531
sphere {
	<125.172714, 91.602577, 107.064316> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 532
sphere {
	<125.045059, 91.157845, 106.236664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 533
sphere {
	<125.389481, 91.881836, 107.944168> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 534
sphere {
	<124.887825, 91.517952, 107.226654> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 535
sphere {
	<125.024559, 90.726723, 106.722130> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 536
sphere {
	<124.849258, 92.213455, 107.870041> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 537
sphere {
	<124.590408, 91.444809, 107.371559> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 538
sphere {
	<124.982452, 90.582405, 107.330643> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 539
sphere {
	<124.276176, 92.312126, 107.591385> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 540
sphere {
	<124.285423, 91.369186, 107.498550> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 541
sphere {
	<124.828804, 90.762474, 107.984299> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 542
sphere {
	<123.772072, 92.093521, 107.165634> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 543
sphere {
	<123.976944, 91.283333, 107.609100> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 544
sphere {
	<124.479744, 91.115791, 108.395355> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 545
sphere {
	<123.446724, 91.627136, 106.901978> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 546
sphere {
	<123.671867, 91.175766, 107.709381> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 547
sphere {
	<124.006096, 91.523125, 108.526001> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 548
sphere {
	<123.259079, 91.005951, 106.872742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 549
sphere {
	<123.373840, 91.047569, 107.807495> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 550
sphere {
	<123.412994, 91.813255, 108.365402> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 551
sphere {
	<123.240540, 90.400772, 107.126923> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 552
sphere {
	<123.079865, 90.909164, 107.903992> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 553
sphere {
	<122.867645, 91.830124, 107.981857> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 554
sphere {
	<123.222549, 90.008308, 107.644791> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 555
sphere {
	<122.789360, 90.764893, 108.002663> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 556
sphere {
	<122.454514, 91.529716, 107.553108> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 557
sphere {
	<123.106750, 89.914627, 108.277557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 558
sphere {
	<122.502563, 90.617424, 108.106880> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 559
sphere {
	<122.218170, 90.971672, 107.274529> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 560
sphere {
	<122.829620, 90.104317, 108.834183> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 561
sphere {
	<122.215004, 90.473763, 108.214462> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 562
sphere {
	<122.129509, 90.366394, 107.276115> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 563
sphere {
	<122.382507, 90.404289, 109.145226> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 564
sphere {
	<121.918762, 90.348038, 108.320023> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 565
sphere {
	<122.069756, 89.789520, 107.568756> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 566
sphere {
	<121.855164, 90.762894, 109.170441> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 567
sphere {
	<121.610100, 90.245537, 108.414467> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 568
sphere {
	<121.959457, 89.424171, 108.094444> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 569
sphere {
	<121.325989, 91.004082, 108.907532> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 570
sphere {
	<121.291359, 90.155746, 108.485390> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 571
sphere {
	<121.735947, 89.345970, 108.699280> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 572
sphere {
	<120.869537, 91.004662, 108.461449> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 573
sphere {
	<120.969727, 90.060692, 108.532768> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 574
sphere {
	<121.405708, 89.540657, 109.195023> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 575
sphere {
	<120.509544, 90.708878, 108.015747> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 576
sphere {
	<120.652718, 89.945236, 108.562622> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 577
sphere {
	<120.921974, 89.917572, 109.471390> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 578
sphere {
	<120.314606, 90.149498, 107.700539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 579
sphere {
	<120.341225, 89.813072, 108.582848> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 580
sphere {
	<120.397095, 90.247543, 109.423851> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 581
sphere {
	<120.207245, 89.547432, 107.682457> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 582
sphere {
	<120.032799, 89.674942, 108.608261> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 583
sphere {
	<119.905945, 90.495796, 109.065697> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 584
sphere {
	<120.097626, 88.954308, 107.995377> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 585
sphere {
	<119.730324, 89.529480, 108.653580> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 586
sphere {
	<119.462891, 90.437347, 108.594292> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 587
sphere {
	<119.961304, 88.619392, 108.521217> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 588
sphere {
	<119.433609, 89.383095, 108.726196> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 589
sphere {
	<119.139885, 90.066277, 108.137848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 590
sphere {
	<119.732132, 88.590714, 109.152977> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 591
sphere {
	<119.138023, 89.248917, 108.823174> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 592
sphere {
	<118.916481, 89.496529, 107.935043> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 593
sphere {
	<119.404221, 88.829414, 109.630852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 594
sphere {
	<118.841263, 89.125496, 108.930824> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 595
sphere {
	<118.818832, 88.867958, 108.018486> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 596
sphere {
	<118.944290, 89.207397, 109.869820> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 597
sphere {
	<118.536827, 89.017265, 109.032303> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 598
sphere {
	<118.758118, 88.331085, 108.416420> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 599
sphere {
	<118.393265, 89.582474, 109.779968> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 600
sphere {
	<118.224464, 88.921204, 109.122215> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 601
sphere {
	<118.631111, 88.080231, 108.959763> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 602
sphere {
	<117.876572, 89.732697, 109.468353> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 603
sphere {
	<117.909203, 88.821182, 109.195686> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 604
sphere {
	<118.409737, 88.095947, 109.545982> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 605
sphere {
	<117.421082, 89.616402, 109.027122> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 606
sphere {
	<117.594696, 88.710022, 109.255562> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 607
sphere {
	<118.054497, 88.383133, 110.017715> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 608
sphere {
	<117.097755, 89.191338, 108.607018> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 609
sphere {
	<117.286278, 88.579773, 109.306702> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 610
sphere {
	<117.543427, 88.737015, 110.205719> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 611
sphere {
	<116.948059, 88.599472, 108.421051> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 612
sphere {
	<116.989052, 88.423805, 109.351830> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 613
sphere {
	<116.970055, 89.019386, 110.089546> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 614
sphere {
	<116.910660, 87.970535, 108.522675> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 615
sphere {
	<116.706642, 88.246109, 109.409500> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 616
sphere {
	<116.426491, 89.099152, 109.714432> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 617
sphere {
	<116.906288, 87.449234, 108.935860> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 618
sphere {
	<116.435669, 88.060982, 109.492935> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 619
sphere {
	<116.018158, 88.883789, 109.273819> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 620
sphere {
	<116.815971, 87.192993, 109.525902> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 621
sphere {
	<116.171005, 87.876801, 109.597420> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 622
sphere {
	<115.758430, 88.375916, 108.904579> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 623
sphere {
	<116.615959, 87.246925, 110.149017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 624
sphere {
	<115.907288, 87.701035, 109.717148> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 625
sphere {
	<115.665535, 87.746284, 108.801323> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 626
sphere {
	<116.231102, 87.486214, 110.582092> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 627
sphere {
	<115.633713, 87.546410, 109.843384> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 628
sphere {
	<115.681038, 87.136597, 108.989624> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 629
sphere {
	<115.690132, 87.801323, 110.755028> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 630
sphere {
	<115.350189, 87.406464, 109.965599> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 631
sphere {
	<115.692337, 86.688797, 109.448845> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 632
sphere {
	<115.109032, 88.041451, 110.627403> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 633
sphere {
	<115.058578, 87.271278, 110.072327> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 634
sphere {
	<115.612000, 86.501343, 110.088188> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 635
sphere {
	<114.556679, 88.057304, 110.244034> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 636
sphere {
	<114.759201, 87.140533, 110.162643> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 637
sphere {
	<115.342010, 86.608589, 110.688499> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 638
sphere {
	<114.172630, 87.787926, 109.793991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 639
sphere {
	<114.457016, 87.011810, 110.246567> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 640
sphere {
	<114.909599, 86.936310, 111.076347> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 641
sphere {
	<113.948944, 87.261246, 109.485687> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 642
sphere {
	<114.156029, 86.878761, 110.327850> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 643
sphere {
	<114.405968, 87.275345, 111.152184> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 644
sphere {
	<113.818314, 86.653442, 109.470963> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 645
sphere {
	<113.864845, 86.729347, 110.414932> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 646
sphere {
	<113.822601, 87.496132, 110.971191> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 647
sphere {
	<113.804550, 86.072159, 109.734032> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 648
sphere {
	<113.589195, 86.561333, 110.517250> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 649
sphere {
	<113.279205, 87.451775, 110.618103> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 650
sphere {
	<113.816490, 85.683418, 110.240028> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 651
sphere {
	<113.327316, 86.387993, 110.644096> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 652
sphere {
	<112.861931, 87.114967, 110.251511> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 653
sphere {
	<113.758156, 85.572990, 110.866013> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 654
sphere {
	<113.071472, 86.226959, 110.796577> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 655
sphere {
	<112.626564, 86.537903, 110.019043> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 656
sphere {
	<113.543922, 85.754021, 111.469162> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 657
sphere {
	<112.815559, 86.080894, 110.964226> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 658
sphere {
	<112.545219, 85.923508, 110.069061> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 659
sphere {
	<113.171715, 86.063812, 111.842934> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 660
sphere {
	<112.554855, 85.941643, 111.129906> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 661
sphere {
	<112.636093, 85.356659, 110.388016> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 662
sphere {
	<112.592339, 86.399124, 111.959648> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 663
sphere {
	<112.280678, 85.813507, 111.282158> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 664
sphere {
	<112.660416, 85.014862, 110.939819> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 665
sphere {
	<112.001816, 86.567268, 111.785461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 666
sphere {
	<111.991287, 85.695503, 111.412498> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 667
sphere {
	<112.554993, 84.951187, 111.577545> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 668
sphere {
	<111.478165, 86.492874, 111.428192> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 669
sphere {
	<111.692818, 85.573517, 111.515984> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 670
sphere {
	<112.266075, 85.133636, 112.129959> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 671
sphere {
	<111.104652, 86.147453, 111.042854> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 672
sphere {
	<111.396065, 85.432228, 111.597542> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 673
sphere {
	<111.796913, 85.474411, 112.455811> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 674
sphere {
	<110.917023, 85.561668, 110.789452> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 675
sphere {
	<111.105362, 85.272263, 111.666664> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 676
sphere {
	<111.196144, 85.791901, 112.454559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 677
sphere {
	<110.912285, 84.905540, 110.813744> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 678
sphere {
	<110.818352, 85.103508, 111.730270> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 679
sphere {
	<110.622520, 85.933418, 112.145119> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 680
sphere {
	<110.930832, 84.355042, 111.159042> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 681
sphere {
	<110.535049, 84.928398, 111.793594> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 682
sphere {
	<110.173943, 85.796600, 111.671028> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 683
sphere {
	<110.864143, 84.041748, 111.724640> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 684
sphere {
	<110.253983, 84.751175, 111.860641> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 685
sphere {
	<109.905655, 85.428452, 111.295807> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 686
sphere {
	<110.623497, 83.974106, 112.259193> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 687
sphere {
	<109.969475, 84.581047, 111.931084> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 688
sphere {
	<109.815216, 84.834572, 111.030457> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 689
sphere {
	<110.196686, 84.164795, 112.752220> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 690
sphere {
	<109.674362, 84.431686, 112.003883> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 691
sphere {
	<109.766678, 84.174423, 111.095810> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 692
sphere {
	<109.667686, 84.517288, 112.948265> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 693
sphere {
	<109.366318, 84.307449, 112.070000> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 694
sphere {
	<109.684174, 83.655952, 111.458748> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 695
sphere {
	<109.117523, 84.836594, 112.816528> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 696
sphere {
	<109.048691, 84.198303, 112.113655> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 697
sphere {
	<109.498001, 83.371201, 111.998779> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 698
sphere {
	<108.628151, 84.991600, 112.418610> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 699
sphere {
	<108.727501, 84.093178, 112.139961> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 700
sphere {
	<109.183083, 83.374046, 112.557632> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 701
sphere {
	<108.261215, 84.884171, 111.903366> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 702
sphere {
	<108.409248, 83.978195, 112.155167> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 703
sphere {
	<108.764862, 83.616737, 112.956497> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 704
sphere {
	<107.998070, 84.487259, 111.468834> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 705
sphere {
	<108.096680, 83.847176, 112.160545> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 706
sphere {
	<108.221252, 84.031364, 113.082352> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 707
sphere {
	<107.892975, 83.841293, 111.234428> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 708
sphere {
	<107.792435, 83.698334, 112.164207> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 709
sphere {
	<107.677956, 84.312019, 112.878036> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 710
sphere {
	<107.829041, 83.227127, 111.342171> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 711
sphere {
	<107.497055, 83.532181, 112.170120> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 712
sphere {
	<107.199203, 84.401512, 112.404160> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 713
sphere {
	<107.756081, 82.720589, 111.753716> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 714
sphere {
	<107.206947, 83.357132, 112.179489> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 715
sphere {
	<106.892235, 84.189293, 111.851418> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 716
sphere {
	<107.541412, 82.480812, 112.318504> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 717
sphere {
	<106.916626, 83.182648, 112.193924> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 718
sphere {
	<106.749229, 83.748741, 111.451782> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 719
sphere {
	<107.148994, 82.491905, 112.800674> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 720
sphere {
	<106.619339, 83.022606, 112.220146> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 721
sphere {
	<106.660095, 83.128998, 111.278824> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 722
sphere {
	<106.659973, 82.742592, 113.125298> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 723
sphere {
	<106.310921, 82.887253, 112.255577> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 724
sphere {
	<106.558174, 82.504135, 111.424187> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 725
sphere {
	<106.136086, 83.105270, 113.161781> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 726
sphere {
	<105.992119, 82.776077, 112.281685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 727
sphere {
	<106.394234, 82.025246, 111.864761> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 728
sphere {
	<105.628296, 83.430328, 112.863647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 729
sphere {
	<105.667725, 82.678795, 112.296532> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 730
sphere {
	<106.100777, 81.846939, 112.436432> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 731
sphere {
	<105.239311, 83.522980, 112.351128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 732
sphere {
	<105.341492, 82.587234, 112.307091> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 733
sphere {
	<105.704872, 81.994987, 112.952423> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 734
sphere {
	<104.949585, 83.296783, 111.815063> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 735
sphere {
	<105.015907, 82.493202, 112.313248> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 736
sphere {
	<105.266418, 82.332397, 113.213539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 737
sphere {
	<104.712891, 82.829498, 111.479996> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 738
sphere {
	<104.696518, 82.380569, 112.315056> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 739
sphere {
	<104.748878, 82.724541, 113.197098> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 740
sphere {
	<104.573273, 82.213264, 111.389801> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 741
sphere {
	<104.387329, 82.242546, 112.321678> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 742
sphere {
	<104.238045, 83.005348, 112.864723> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 743
sphere {
	<104.473000, 81.594879, 111.634453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 744
sphere {
	<104.087990, 82.085724, 112.345581> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 745
sphere {
	<103.799324, 82.987785, 112.392601> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 746
sphere {
	<104.343636, 81.204308, 112.107315> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 747
sphere {
	<103.793213, 81.922554, 112.382401> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 748
sphere {
	<103.510788, 82.690346, 111.902863> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 749
sphere {
	<104.094795, 81.075851, 112.684525> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 750
sphere {
	<103.496559, 81.767876, 112.435242> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 751
sphere {
	<103.325546, 82.154236, 111.586243> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 752
sphere {
	<103.721329, 81.225632, 113.179871> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 753
sphere {
	<103.193604, 81.634247, 112.506462> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 754
sphere {
	<103.202034, 81.516869, 111.565475> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 755
sphere {
	<103.257164, 81.570198, 113.450386> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 756
sphere {
	<102.881096, 81.527275, 112.581039> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 757
sphere {
	<103.078056, 80.949158, 111.855736> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 758
sphere {
	<102.751923, 81.958542, 113.415627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 759
sphere {
	<102.558533, 81.443062, 112.640503> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 760
sphere {
	<102.904198, 80.595764, 112.391815> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 761
sphere {
	<102.252403, 82.230690, 113.070709> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 762
sphere {
	<102.230789, 81.367935, 112.683624> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 763
sphere {
	<102.636139, 80.561241, 112.973618> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 764
sphere {
	<101.836823, 82.224403, 112.582024> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 765
sphere {
	<101.902855, 81.287216, 112.709518> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 766
sphere {
	<102.247086, 80.790642, 113.440407> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 767
sphere {
	<101.527359, 81.921646, 112.113174> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 768
sphere {
	<101.579208, 81.187767, 112.715195> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 769
sphere {
	<101.761589, 81.206062, 113.645546> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 770
sphere {
	<101.332687, 81.351357, 111.814354> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 771
sphere {
	<101.260391, 81.072777, 112.711685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 772
sphere {
	<101.242188, 81.598419, 113.500626> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 773
sphere {
	<101.219620, 80.711578, 111.835838> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 774
sphere {
	<100.943710, 80.951942, 112.704239> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 775
sphere {
	<100.787270, 81.815338, 113.063782> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 776
sphere {
	<101.069946, 80.176559, 112.173195> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 777
sphere {
	<100.628143, 80.828224, 112.700996> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 778
sphere {
	<100.461548, 81.749405, 112.550140> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 779
sphere {
	<100.797821, 79.896294, 112.657021> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 780
sphere {
	<100.311905, 80.708199, 112.717392> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 781
sphere {
	<100.187767, 81.397346, 112.077950> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 782
sphere {
	<100.462463, 79.905952, 113.199921> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 783
sphere {
	<99.993034, 80.601685, 112.758789> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 784
sphere {
	<99.964569, 80.835541, 111.840248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 785
sphere {
	<100.064064, 80.189720, 113.609840> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 786
sphere {
	<99.669052, 80.519882, 112.813637> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 787
sphere {
	<99.757919, 80.224548, 111.916954> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 788
sphere {
	<99.625984, 80.630783, 113.754425> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 789
sphere {
	<99.338814, 80.465965, 112.865921> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 790
sphere {
	<99.528488, 79.740974, 112.284889> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 791
sphere {
	<99.184792, 81.060913, 113.588020> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 792
sphere {
	<99.003983, 80.427925, 112.900475> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 793
sphere {
	<99.275604, 79.523277, 112.815536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 794
sphere {
	<98.748581, 81.298241, 113.176788> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 795
sphere {
	<98.667427, 80.390663, 112.907707> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 796
sphere {
	<98.927299, 79.612907, 113.383873> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 797
sphere {
	<98.394302, 81.248184, 112.609169> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 798
sphere {
	<98.331108, 80.349602, 112.897369> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 799
sphere {
	<98.529404, 79.966660, 113.741852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 800
sphere {
	<98.107605, 80.896469, 112.155640> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 801
sphere {
	<97.997826, 80.292641, 112.878448> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 802
sphere {
	<98.082458, 80.432625, 113.812492> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 803
sphere {
	<97.872826, 80.343552, 111.939850> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 804
sphere {
	<97.670349, 80.208527, 112.858856> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 805
sphere {
	<97.632233, 80.855797, 113.550758> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 806
sphere {
	<97.667923, 79.712624, 112.050598> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 807
sphere {
	<97.349129, 80.101135, 112.852051> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 808
sphere {
	<97.208549, 81.008446, 113.089287> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 809
sphere {
	<97.465294, 79.258797, 112.432526> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 810
sphere {
	<97.031197, 79.985451, 112.868019> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 811
sphere {
	<96.874802, 80.869652, 112.563255> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 812
sphere {
	<97.185196, 79.056854, 112.982681> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 813
sphere {
	<96.714737, 79.870125, 112.905800> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 814
sphere {
	<96.598305, 80.416275, 112.139381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 815
sphere {
	<96.864502, 79.182816, 113.541656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 816
sphere {
	<96.397552, 79.763512, 112.958717> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 817
sphere {
	<96.390587, 79.819366, 112.012169> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 818
sphere {
	<96.455231, 79.521973, 113.873840> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 819
sphere {
	<96.074371, 79.680084, 113.015854> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 820
sphere {
	<96.222588, 79.231071, 112.193970> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 821
sphere {
	<95.975479, 79.957787, 113.917107> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 822
sphere {
	<95.746033, 79.612930, 113.066856> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 823
sphere {
	<96.024971, 78.813805, 112.639412> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 824
sphere {
	<95.510201, 80.315582, 113.658310> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 825
sphere {
	<95.414375, 79.553848, 113.101822> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 826
sphere {
	<95.745041, 78.671608, 113.208023> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 827
sphere {
	<95.095085, 80.442459, 113.190331> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 828
sphere {
	<95.081146, 79.493759, 113.112541> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 829
sphere {
	<95.399277, 78.826981, 113.707130> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 830
sphere {
	<94.741837, 80.266602, 112.680420> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 831
sphere {
	<94.750145, 79.421158, 113.108223> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 832
sphere {
	<94.950073, 79.255310, 114.020256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 833
sphere {
	<94.505898, 79.766197, 112.259453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 834
sphere {
	<94.421028, 79.340927, 113.096069> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 835
sphere {
	<94.471855, 79.716934, 113.965172> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 836
sphere {
	<94.327103, 79.147369, 112.172638> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 837
sphere {
	<94.093376, 79.255432, 113.079094> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 838
sphere {
	<94.034409, 80.052231, 113.589760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 839
sphere {
	<94.128593, 78.578323, 112.416229> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 840
sphere {
	<93.767807, 79.162857, 113.061333> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 841
sphere {
	<93.677963, 80.106277, 113.028671> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 842
sphere {
	<93.863747, 78.233528, 112.899498> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 843
sphere {
	<93.442879, 79.067215, 113.047195> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 844
sphere {
	<93.410583, 79.877174, 112.555115> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 845
sphere {
	<93.505066, 78.175873, 113.364510> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 846
sphere {
	<93.116684, 78.975754, 113.035225> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 847
sphere {
	<93.228920, 79.376053, 112.182976> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 848
sphere {
	<93.052315, 78.410881, 113.794151> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 849
sphere {
	<92.788216, 78.894096, 113.019188> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 850
sphere {
	<93.059814, 78.744377, 112.123100> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 851
sphere {
	<92.558380, 78.854660, 113.938232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 852
sphere {
	<92.455910, 78.832939, 112.995949> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 853
sphere {
	<92.777466, 78.208885, 112.358452> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 854
sphere {
	<92.145409, 79.306152, 113.756760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 855
sphere {
	<92.121773, 78.794075, 112.956161> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 856
sphere {
	<92.407692, 77.899452, 112.825188> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 857
sphere {
	<91.811867, 79.632607, 113.272430> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 858
sphere {
	<91.788445, 78.766571, 112.901550> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 859
sphere {
	<91.961021, 77.933037, 113.319351> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 860
sphere {
	<91.580452, 79.661179, 112.665680> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 861
sphere {
	<91.455940, 78.738220, 112.841988> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 862
sphere {
	<91.538651, 78.235970, 113.641968> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 863
sphere {
	<91.335884, 79.389061, 112.162872> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 864
sphere {
	<91.127556, 78.693169, 112.772224> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 865
sphere {
	<91.089615, 78.698914, 113.719742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 866
sphere {
	<91.127541, 78.878075, 111.842247> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 867
sphere {
	<90.805283, 78.619896, 112.698685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 868
sphere {
	<90.677475, 79.157036, 113.469513> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 869
sphere {
	<90.907608, 78.250450, 111.831383> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 870
sphere {
	<90.487526, 78.524216, 112.629715> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 871
sphere {
	<90.327698, 79.405014, 112.942329> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 872
sphere {
	<90.657181, 77.728851, 112.141991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 873
sphere {
	<90.172386, 78.418190, 112.563644> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 874
sphere {
	<90.098618, 79.331749, 112.320312> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 875
sphere {
	<90.293434, 77.479408, 112.619415> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 876
sphere {
	<89.858116, 78.306946, 112.502701> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 877
sphere {
	<89.953400, 78.938316, 111.801704> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 878
sphere {
	<89.832314, 77.549210, 113.072182> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 879
sphere {
	<89.543060, 78.193970, 112.448837> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 880
sphere {
	<89.829079, 78.331284, 111.555214> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 881
sphere {
	<89.325790, 77.876106, 113.315414> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 882
sphere {
	<89.226387, 78.084045, 112.398315> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 883
sphere {
	<89.650040, 77.771553, 111.609749> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 884
sphere {
	<88.850479, 78.221184, 113.258072> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 885
sphere {
	<88.909416, 77.978668, 112.340668> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 886
sphere {
	<89.411789, 77.270088, 111.960365> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 887
sphere {
	<88.410469, 78.576675, 112.881668> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 888
sphere {
	<88.595268, 77.880661, 112.260902> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 889
sphere {
	<88.993584, 77.035057, 112.421112> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 890
sphere {
	<88.143669, 78.713951, 112.287994> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 891
sphere {
	<88.284622, 77.787086, 112.162727> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 892
sphere {
	<88.479729, 77.110542, 112.797852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 893
sphere {
	<88.011131, 78.556343, 111.680458> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 894
sphere {
	<87.982567, 77.681656, 112.051971> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 895
sphere {
	<87.918907, 77.427673, 112.963364> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 896
sphere {
	<87.957130, 78.098694, 111.200737> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 897
sphere {
	<87.691368, 77.560585, 111.927750> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 898
sphere {
	<87.400658, 77.830940, 112.788879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 899
sphere {
	<87.927170, 77.469917, 111.013733> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 900
sphere {
	<87.407654, 77.423752, 111.803078> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 901
sphere {
	<87.031105, 78.108871, 112.339561> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 902
sphere {
	<87.774712, 76.872131, 111.124664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 903
sphere {
	<87.125526, 77.270035, 111.695877> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 904
sphere {
	<86.823723, 78.167938, 111.738861> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 905
sphere {
	<87.464706, 76.414803, 111.466293> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 906
sphere {
	<86.840408, 77.109581, 111.607277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 907
sphere {
	<86.710617, 77.941353, 111.170990> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 908
sphere {
	<87.050323, 76.224136, 111.873978> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 909
sphere {
	<86.552902, 76.951019, 111.522781> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 910
sphere {
	<86.724182, 77.456093, 110.738708> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 911
sphere {
	<86.483330, 76.306847, 112.215149> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 912
sphere {
	<86.260223, 76.802231, 111.438881> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 913
sphere {
	<86.712082, 76.773933, 110.605629> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 914
sphere {
	<85.886452, 76.653511, 112.297501> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 915
sphere {
	<85.963196, 76.663498, 111.352814> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 916
sphere {
	<86.551659, 76.205994, 110.766754> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 917
sphere {
	<85.407730, 76.969681, 112.057724> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 918
sphere {
	<85.666870, 76.533653, 111.252197> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 919
sphere {
	<86.239456, 75.790047, 111.116562> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 920
sphere {
	<85.062714, 77.195496, 111.562088> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 921
sphere {
	<85.374023, 76.406494, 111.138229> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 922
sphere {
	<85.766518, 75.640884, 111.536957> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 923
sphere {
	<84.900330, 77.197083, 110.915184> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 924
sphere {
	<85.084724, 76.273216, 111.022400> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 925
sphere {
	<85.204018, 75.787247, 111.827904> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 926
sphere {
	<84.862389, 76.880852, 110.329208> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 927
sphere {
	<84.797600, 76.133179, 110.908936> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 928
sphere {
	<84.649986, 76.126770, 111.845596> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 929
sphere {
	<84.855896, 76.312943, 109.979675> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 930
sphere {
	<84.510544, 75.988594, 110.801147> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 931
sphere {
	<84.199554, 76.486862, 111.545540> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 932
sphere {
	<84.776505, 75.651207, 109.955795> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 933
sphere {
	<84.221550, 75.843040, 110.700333> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 934
sphere {
	<83.910194, 76.687378, 110.999123> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 935
sphere {
	<84.546585, 75.087578, 110.228302> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 936
sphere {
	<83.928391, 75.695061, 110.617615> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 937
sphere {
	<83.739754, 76.586868, 110.356308> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 938
sphere {
	<84.170998, 74.781448, 110.692688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 939
sphere {
	<83.626900, 75.551346, 110.561119> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 940
sphere {
	<83.642159, 76.193298, 109.863419> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 941
sphere {
	<83.684654, 74.789749, 111.123085> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 942
sphere {
	<83.317970, 75.417442, 110.522850> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 943
sphere {
	<83.543106, 75.568954, 109.614288> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 944
sphere {
	<83.170471, 75.089722, 111.400330> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 945
sphere {
	<83.002556, 75.297577, 110.492813> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 946
sphere {
	<83.381126, 74.950294, 109.695862> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 947
sphere {
	<82.675468, 75.472672, 111.365547> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 948
sphere {
	<82.681854, 75.191895, 110.462364> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 949
sphere {
	<83.144226, 74.472519, 110.052666> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 950
sphere {
	<82.237427, 75.804039, 111.034164> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 951
sphere {
	<82.360527, 75.095490, 110.416199> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 952
sphere {
	<82.766602, 74.246216, 110.530167> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 953
sphere {
	<81.922241, 75.932701, 110.494270> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 954
sphere {
	<82.042786, 75.004669, 110.342201> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 955
sphere {
	<82.270798, 74.309067, 110.945038> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 956
sphere {
	<81.744156, 75.787857, 109.898773> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 957
sphere {
	<81.735481, 74.901840, 110.243759> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 958
sphere {
	<81.718727, 74.619354, 111.148766> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 959
sphere {
	<81.666313, 75.345184, 109.408394> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 960
sphere {
	<81.438553, 74.783989, 110.130768> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 961
sphere {
	<81.191818, 75.026512, 111.013634> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 962
sphere {
	<81.627472, 74.722557, 109.203636> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 963
sphere {
	<81.146912, 74.658768, 110.011665> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 964
sphere {
	<80.818665, 75.353195, 110.567818> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 965
sphere {
	<81.472168, 74.101555, 109.316849> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 966
sphere {
	<80.858521, 74.527077, 109.891678> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 967
sphere {
	<80.619919, 75.443665, 109.937637> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 968
sphere {
	<81.151993, 73.654663, 109.663719> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 969
sphere {
	<80.571877, 74.388962, 109.774780> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 970
sphere {
	<80.561554, 75.217201, 109.313049> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 971
sphere {
	<80.676857, 73.496712, 110.078255> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 972
sphere {
	<80.282936, 74.251877, 109.662354> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 973
sphere {
	<80.546646, 74.760223, 108.906494> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 974
sphere {
	<80.118034, 73.599754, 110.330727> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 975
sphere {
	<79.984665, 74.131073, 109.556763> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 976
sphere {
	<80.452744, 74.141594, 108.732254> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 977
sphere {
	<79.578918, 73.935974, 110.391403> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 978
sphere {
	<79.677109, 74.036568, 109.451218> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 979
sphere {
	<80.216949, 73.526741, 108.861435> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 980
sphere {
	<79.139984, 74.385063, 110.150558> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 981
sphere {
	<79.368179, 73.957886, 109.335854> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 982
sphere {
	<79.836349, 73.152222, 109.159920> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 983
sphere {
	<78.855789, 74.677231, 109.680946> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 984
sphere {
	<79.065269, 73.885796, 109.202621> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 985
sphere {
	<79.309250, 73.025391, 109.517731> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 986
sphere {
	<78.732666, 74.762375, 109.060593> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 987
sphere {
	<78.774704, 73.815247, 109.043633> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 988
sphere {
	<78.725220, 73.186607, 109.751862> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 989
sphere {
	<78.721420, 74.557671, 108.456161> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 990
sphere {
	<78.499031, 73.729591, 108.866653> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 991
sphere {
	<78.181480, 73.579857, 109.747536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 992
sphere {
	<78.736717, 74.055801, 108.008606> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 993
sphere {
	<78.232925, 73.629967, 108.681648> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 994
sphere {
	<77.787842, 74.012253, 109.426605> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 995
sphere {
	<78.662827, 73.427040, 107.861130> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 996
sphere {
	<77.971085, 73.525177, 108.493568> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 997
sphere {
	<77.607559, 74.319405, 108.862762> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 998
sphere {
	<78.391235, 72.848381, 107.979187> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 999
sphere {
	<77.711639, 73.413536, 108.306183> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1000
sphere {
	<77.609253, 74.349808, 108.196457> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1001
sphere {
	<77.923752, 72.490692, 108.254959> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1002
sphere {
	<77.451057, 73.298782, 108.122330> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1003
sphere {
	<77.651794, 74.103149, 107.662079> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1004
sphere {
	<77.373718, 72.413956, 108.454575> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1005
sphere {
	<77.186073, 73.191208, 107.940338> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1006
sphere {
	<77.725952, 73.583961, 107.266861> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1007
sphere {
	<76.740730, 72.634689, 108.565689> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1008
sphere {
	<76.914177, 73.104851, 107.757843> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1009
sphere {
	<77.597679, 72.941650, 107.121094> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1010
sphere {
	<76.252357, 73.078636, 108.436417> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1011
sphere {
	<76.635979, 73.035988, 107.576752> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1012
sphere {
	<77.233826, 72.391701, 107.220871> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1013
sphere {
	<75.991272, 73.538063, 108.057770> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1014
sphere {
	<76.359680, 72.979355, 107.389107> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1015
sphere {
	<76.702881, 72.096634, 107.437218> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1016
sphere {
	<75.913292, 73.808823, 107.497902> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1017
sphere {
	<76.096230, 72.929703, 107.182144> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1018
sphere {
	<76.101463, 72.105293, 107.650742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1019
sphere {
	<75.962570, 73.807816, 106.850189> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1020
sphere {
	<75.846970, 72.878426, 106.958344> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1021
sphere {
	<75.495712, 72.408531, 107.703323> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1022
sphere {
	<76.098198, 73.499023, 106.286774> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1023
sphere {
	<75.604996, 72.827080, 106.726501> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1024
sphere {
	<75.076874, 72.890724, 107.511513> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1025
sphere {
	<76.102768, 72.955833, 105.929787> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1026
sphere {
	<75.368011, 72.772232, 106.490440> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1027
sphere {
	<74.897926, 73.357483, 107.069885> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1028
sphere {
	<75.889954, 72.351532, 105.819908> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1029
sphere {
	<75.134094, 72.710922, 106.252991> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1030
sphere {
	<74.936035, 73.615715, 106.456177> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1031
sphere {
	<75.449020, 71.883270, 105.913857> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1032
sphere {
	<74.900391, 72.642326, 106.017181> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1033
sphere {
	<75.089134, 73.548363, 105.810577> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1034
sphere {
	<74.852486, 71.698448, 106.094261> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1035
sphere {
	<74.663788, 72.571846, 105.784805> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1036
sphere {
	<75.174896, 73.224670, 105.324638> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1037
sphere {
	<74.273392, 71.792503, 106.158157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1038
sphere {
	<74.418312, 72.515160, 105.558594> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1039
sphere {
	<75.151016, 72.652107, 104.972412> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1040
sphere {
	<73.733292, 72.189613, 106.127792> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1041
sphere {
	<74.166801, 72.485657, 105.333679> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1042
sphere {
	<74.877258, 72.089600, 104.846268> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1043
sphere {
	<73.417984, 72.698219, 105.875214> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1044
sphere {
	<73.917633, 72.473648, 105.104202> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1045
sphere {
	<74.388176, 71.677338, 104.895248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1046
sphere {
	<73.342537, 73.153633, 105.429710> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1047
sphere {
	<73.679184, 72.471519, 104.863693> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1048
sphere {
	<73.764374, 71.538750, 105.011490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1049
sphere {
	<73.450302, 73.391548, 104.847412> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1050
sphere {
	<73.461151, 72.472542, 104.604546> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1051
sphere {
	<73.127823, 71.733528, 105.096405> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1052
sphere {
	<73.661789, 73.312912, 104.213844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1053
sphere {
	<73.257248, 72.470245, 104.333694> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1054
sphere {
	<72.649712, 72.189545, 105.005501> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1055
sphere {
	<73.801239, 72.929718, 103.707581> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1056
sphere {
	<73.059296, 72.466858, 104.058609> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1057
sphere {
	<72.434441, 72.749229, 104.713646> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1058
sphere {
	<73.714188, 72.375694, 103.378906> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1059
sphere {
	<72.865685, 72.458321, 103.780479> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1060
sphere {
	<72.486763, 73.203461, 104.228165> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1061
sphere {
	<73.358620, 71.847366, 103.248642> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1062
sphere {
	<72.673370, 72.442627, 103.501793> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1063
sphere {
	<72.714005, 73.381706, 103.626953> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1064
sphere {
	<72.790550, 71.531830, 103.265366> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1065
sphere {
	<72.478729, 72.420235, 103.225136> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1066
sphere {
	<72.959877, 73.213760, 103.030228> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1067
sphere {
	<72.143181, 71.538940, 103.324142> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1068
sphere {
	<72.280365, 72.396896, 102.951202> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1069
sphere {
	<73.037407, 72.834595, 102.584633> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1070
sphere {
	<71.615799, 71.796417, 103.262650> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1071
sphere {
	<72.076431, 72.389931, 102.681015> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1072
sphere {
	<72.914047, 72.261108, 102.255775> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1073
sphere {
	<71.231499, 72.323807, 103.106339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1074
sphere {
	<71.869690, 72.400787, 102.412514> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1075
sphere {
	<72.517807, 71.777840, 102.110802> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1076
sphere {
	<71.127693, 72.864876, 102.777588> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1077
sphere {
	<71.672836, 72.425728, 102.138046> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1078
sphere {
	<71.925430, 71.514313, 102.070328> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1079
sphere {
	<71.265244, 73.266273, 102.300842> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1080
sphere {
	<71.497818, 72.462013, 101.850426> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1081
sphere {
	<71.257095, 71.573486, 102.077866> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1082
sphere {
	<71.575066, 73.397964, 101.718582> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1083
sphere {
	<71.338829, 72.500710, 101.553535> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1084
sphere {
	<70.713440, 71.953926, 102.010872> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1085
sphere {
	<71.859695, 73.194443, 101.170746> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1086
sphere {
	<71.186340, 72.540436, 101.253403> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1087
sphere {
	<70.431305, 72.529678, 101.826981> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1088
sphere {
	<71.934784, 72.744110, 100.708015> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1089
sphere {
	<71.039543, 72.576775, 100.950043> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1090
sphere {
	<70.457184, 73.100998, 101.484001> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1091
sphere {
	<71.716797, 72.220894, 100.389709> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1092
sphere {
	<70.895630, 72.606583, 100.644577> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1093
sphere {
	<70.725327, 73.470123, 100.997482> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1094
sphere {
	<71.228653, 71.825615, 100.222404> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1095
sphere {
	<70.750565, 72.629204, 100.339088> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1096
sphere {
	<71.081635, 73.512611, 100.435280> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1097
sphere {
	<70.591888, 71.712120, 100.157768> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1098
sphere {
	<70.601532, 72.649605, 100.035278> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1099
sphere {
	<71.296860, 73.286484, 99.934563> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1100
sphere {
	<70.036949, 71.888245, 100.061691> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1101
sphere {
	<70.446976, 72.677429, 99.734894> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1102
sphere {
	<71.352852, 72.771591, 99.470917> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1103
sphere {
	<69.570847, 72.394211, 99.961548> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1104
sphere {
	<70.287720, 72.723785, 99.439514> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1105
sphere {
	<71.076988, 72.299095, 99.129784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1106
sphere {
	<69.426414, 72.967270, 99.752640> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1107
sphere {
	<70.129150, 72.785080, 99.146294> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1108
sphere {
	<70.561127, 71.965370, 98.944885> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1109
sphere {
	<69.548782, 73.490158, 99.401711> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1110
sphere {
	<69.986954, 72.854424, 98.846947> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1111
sphere {
	<69.905090, 71.909805, 98.850525> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1112
sphere {
	<69.888512, 73.794899, 98.917870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1113
sphere {
	<69.865509, 72.931519, 98.540024> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1114
sphere {
	<69.299103, 72.203812, 98.760880> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1115
sphere {
	<70.290817, 73.767288, 98.399582> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1116
sphere {
	<69.754257, 73.011467, 98.229996> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1117
sphere {
	<68.939850, 72.752792, 98.641151> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1118
sphere {
	<70.520233, 73.448540, 97.881577> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1119
sphere {
	<69.649521, 73.089867, 97.917274> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1120
sphere {
	<68.903419, 73.382416, 98.424156> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1121
sphere {
	<70.458427, 72.980621, 97.434708> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1122
sphere {
	<69.549164, 73.163040, 97.601852> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1123
sphere {
	<69.162613, 73.888115, 98.075035> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1124
sphere {
	<70.087471, 72.558678, 97.107635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1125
sphere {
	<69.447433, 73.231415, 97.285851> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1126
sphere {
	<69.504913, 74.106445, 97.646812> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1127
sphere {
	<69.574570, 72.388527, 96.870567> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1128
sphere {
	<69.336174, 73.299805, 96.973015> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1129
sphere {
	<69.933006, 74.024849, 97.105156> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1130
sphere {
	<68.895073, 72.487312, 96.762070> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1131
sphere {
	<69.216446, 73.373665, 96.664658> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1132
sphere {
	<70.097839, 73.717850, 96.602356> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1133
sphere {
	<68.414841, 72.867241, 96.653870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1134
sphere {
	<69.091080, 73.465317, 96.363739> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1135
sphere {
	<69.991516, 73.299484, 96.117035> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1136
sphere {
	<68.162857, 73.445473, 96.556641> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1137
sphere {
	<68.966049, 73.583794, 96.072098> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1138
sphere {
	<69.593285, 72.958481, 95.733620> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1139
sphere {
	<68.212883, 74.060951, 96.395203> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1140
sphere {
	<68.856598, 73.726051, 95.784897> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1141
sphere {
	<69.007904, 72.841972, 95.477203> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1142
sphere {
	<68.522858, 74.547134, 96.121689> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1143
sphere {
	<68.774117, 73.878632, 95.494072> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1144
sphere {
	<68.382561, 73.027557, 95.347336> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1145
sphere {
	<68.988197, 74.777687, 95.706017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1146
sphere {
	<68.714432, 74.032349, 95.198029> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1147
sphere {
	<67.920135, 73.520653, 95.278633> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1148
sphere {
	<69.404770, 74.682343, 95.207520> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1149
sphere {
	<68.665413, 74.185699, 94.899704> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1150
sphere {
	<67.776855, 74.170235, 95.230324> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1151
sphere {
	<69.562103, 74.375320, 94.656601> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1152
sphere {
	<68.622337, 74.335693, 94.598709> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1153
sphere {
	<67.972336, 74.796906, 95.112534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1154
sphere {
	<69.390038, 74.020081, 94.140076> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1155
sphere {
	<68.581833, 74.479553, 94.294495> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1156
sphere {
	<68.416382, 75.224312, 94.857727> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1157
sphere {
	<68.931854, 73.797897, 93.735901> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1158
sphere {
	<68.538605, 74.619705, 93.988853> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1159
sphere {
	<68.850143, 75.366333, 94.483521> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1160
sphere {
	<68.415993, 73.846672, 93.453506> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1161
sphere {
	<68.492188, 74.763039, 93.685280> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1162
sphere {
	<69.257362, 75.229034, 93.995834> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1163
sphere {
	<67.857803, 74.175766, 93.295509> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1164
sphere {
	<68.439102, 74.921326, 93.390564> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1165
sphere {
	<69.387154, 74.926392, 93.409348> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1166
sphere {
	<67.514023, 74.751518, 93.269661> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1167
sphere {
	<68.384064, 75.103394, 93.110321> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1168
sphere {
	<69.184479, 74.656494, 92.867714> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1169
sphere {
	<67.496613, 75.400757, 93.262665> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1170
sphere {
	<68.336021, 75.300003, 92.838486> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1171
sphere {
	<68.725800, 74.535019, 92.435905> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1172
sphere {
	<67.777641, 75.974319, 93.202774> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1173
sphere {
	<68.305161, 75.501961, 92.568375> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1174
sphere {
	<68.124489, 74.662224, 92.166679> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1175
sphere {
	<68.291885, 76.351677, 92.989243> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1176
sphere {
	<68.292206, 75.708862, 92.300171> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1177
sphere {
	<67.618179, 75.084480, 92.065445> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1178
sphere {
	<68.818665, 76.431168, 92.616768> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1179
sphere {
	<68.286339, 75.917465, 92.033005> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1180
sphere {
	<67.365532, 75.700745, 92.099243> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1181
sphere {
	<69.159782, 76.283188, 92.083527> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1182
sphere {
	<68.287453, 76.124252, 91.764404> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1183
sphere {
	<67.456238, 76.359039, 92.155830> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1184
sphere {
	<69.188675, 76.033981, 91.483864> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1185
sphere {
	<68.292892, 76.326355, 91.492325> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1186
sphere {
	<67.855034, 76.892036, 92.114784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1187
sphere {
	<68.892792, 75.846619, 90.936295> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1188
sphere {
	<68.296822, 76.524727, 91.217453> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1189
sphere {
	<68.328598, 77.175705, 91.906128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1190
sphere {
	<68.459641, 75.884453, 90.537231> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1191
sphere {
	<68.296616, 76.725220, 90.944206> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1192
sphere {
	<68.858978, 77.212524, 91.532021> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1193
sphere {
	<67.901535, 76.157883, 90.295303> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1194
sphere {
	<68.290512, 76.933159, 90.676521> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1195
sphere {
	<69.193184, 77.032089, 90.949814> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1196
sphere {
	<67.459351, 76.694168, 90.287750> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1197
sphere {
	<68.276230, 77.146729, 90.413788> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1198
sphere {
	<69.161179, 76.819817, 90.318436> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1199
sphere {
	<67.345276, 77.325737, 90.390656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1200
sphere {
	<68.262421, 77.364334, 90.154236> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1201
sphere {
	<68.848236, 76.705437, 89.805367> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1202
sphere {
	<67.537674, 77.916473, 90.417236> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1203
sphere {
	<68.265991, 77.589401, 89.901154> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1204
sphere {
	<68.315643, 76.783058, 89.404556> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1205
sphere {
	<68.024246, 78.378319, 90.368431> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1206
sphere {
	<68.285652, 77.821281, 89.654724> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1207
sphere {
	<67.789536, 77.145111, 89.212082> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1208
sphere {
	<68.605835, 78.565865, 90.146835> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1209
sphere {
	<68.311516, 78.055649, 89.411232> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1210
sphere {
	<67.445435, 77.716072, 89.228210> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1211
sphere {
	<69.081955, 78.523148, 89.706390> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1212
sphere {
	<68.344727, 78.289436, 89.167976> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1213
sphere {
	<67.418503, 78.370155, 89.355339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1214
sphere {
	<69.289719, 78.347809, 89.115921> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1215
sphere {
	<68.383636, 78.519402, 88.921936> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1216
sphere {
	<67.730042, 78.951393, 89.456039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1217
sphere {
	<69.163971, 78.185715, 88.499115> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1218
sphere {
	<68.424728, 78.744034, 88.671417> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1219
sphere {
	<68.276299, 79.330086, 89.402031> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1220
sphere {
	<68.761185, 78.178070, 87.989029> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1221
sphere {
	<68.462723, 78.966087, 88.418137> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1222
sphere {
	<68.789787, 79.473724, 89.149239> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1223
sphere {
	<68.322098, 78.405258, 87.666298> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1224
sphere {
	<68.491798, 79.191757, 88.167068> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1225
sphere {
	<69.277412, 79.383926, 88.662003> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1226
sphere {
	<67.822952, 78.879395, 87.572098> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1227
sphere {
	<68.507431, 79.428574, 87.925186> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1228
sphere {
	<69.433403, 79.265015, 88.047829> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1229
sphere {
	<67.596512, 79.456917, 87.662643> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1230
sphere {
	<68.516533, 79.675186, 87.692848> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1231
sphere {
	<69.271645, 79.162621, 87.435440> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1232
sphere {
	<67.666077, 80.074203, 87.823074> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1233
sphere {
	<68.538078, 79.930893, 87.472000> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1234
sphere {
	<68.846878, 79.219261, 86.926682> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1235
sphere {
	<68.055450, 80.600891, 87.938293> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1236
sphere {
	<68.576241, 80.196243, 87.264557> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1237
sphere {
	<68.320038, 79.534332, 86.636261> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1238
sphere {
	<68.641449, 80.895477, 87.901764> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1239
sphere {
	<68.622475, 80.465271, 87.063576> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1240
sphere {
	<67.893677, 80.047516, 86.622772> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1241
sphere {
	<69.211250, 80.979568, 87.600357> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1242
sphere {
	<68.673477, 80.733421, 86.862564> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1243
sphere {
	<67.740997, 80.603012, 86.750626> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1244
sphere {
	<69.551598, 80.984024, 87.118240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1245
sphere {
	<68.722397, 80.998955, 86.657578> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1246
sphere {
	<67.860886, 81.189148, 87.004669> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1247
sphere {
	<69.646851, 80.915779, 86.461700> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1248
sphere {
	<68.764893, 81.264305, 86.450989> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1249
sphere {
	<68.280487, 81.659531, 87.163986> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1250
sphere {
	<69.406067, 80.925705, 85.839767> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1251
sphere {
	<68.796288, 81.532051, 86.245537> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1252
sphere {
	<68.869415, 81.942451, 87.097504> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1253
sphere {
	<68.918381, 81.111717, 85.404488> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1254
sphere {
	<68.807220, 81.803535, 86.043518> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1255
sphere {
	<69.384888, 82.098808, 86.734604> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1256
sphere {
	<68.393776, 81.448296, 85.266991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1257
sphere {
	<68.790955, 82.081512, 85.850571> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1258
sphere {
	<69.684151, 82.153839, 86.160683> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1259
sphere {
	<67.978859, 81.917969, 85.388275> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1260
sphere {
	<68.765472, 82.371140, 85.676949> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1261
sphere {
	<69.678879, 82.161407, 85.534035> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1262
sphere {
	<67.824120, 82.485939, 85.651245> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1263
sphere {
	<68.747246, 82.673744, 85.525833> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1264
sphere {
	<69.359818, 82.239410, 84.946899> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1265
sphere {
	<68.000381, 83.045509, 85.976883> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1266
sphere {
	<68.737885, 82.985359, 85.392746> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1267
sphere {
	<68.824417, 82.472939, 84.599632> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1268
sphere {
	<68.460503, 83.480469, 86.152565> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1269
sphere {
	<68.734512, 83.300827, 85.269012> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1270
sphere {
	<68.269775, 82.842552, 84.580887> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1271
sphere {
	<69.020615, 83.786850, 86.031158> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1272
sphere {
	<68.735329, 83.616692, 85.145950> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1273
sphere {
	<67.928665, 83.284126, 84.773483> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1274
sphere {
	<69.426140, 84.008286, 85.664101> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1275
sphere {
	<68.736320, 83.930832, 85.018631> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1276
sphere {
	<67.809639, 83.791008, 85.162743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1277
sphere {
	<69.658951, 84.145546, 85.054352> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1278
sphere {
	<68.730576, 84.243317, 84.887161> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1279
sphere {
	<68.022102, 84.293480, 85.515503> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1280
sphere {
	<69.548355, 84.259010, 84.406769> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1281
sphere {
	<68.717789, 84.555717, 84.756027> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1282
sphere {
	<68.487900, 84.723831, 85.660698> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1283
sphere {
	<69.130783, 84.422409, 83.912964> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1284
sphere {
	<68.694000, 84.867828, 84.626198> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1285
sphere {
	<69.065887, 85.063583, 85.476921> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1286
sphere {
	<68.509506, 84.666664, 83.718307> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1287
sphere {
	<68.651794, 85.179565, 84.500816> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1288
sphere {
	<69.434647, 85.322495, 85.015732> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1289
sphere {
	<67.994293, 85.002090, 83.840431> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1290
sphere {
	<68.592865, 85.495087, 84.392838> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1291
sphere {
	<69.540276, 85.496033, 84.410652> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1292
sphere {
	<67.668655, 85.443733, 84.187836> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1293
sphere {
	<68.529953, 85.815659, 84.301811> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1294
sphere {
	<69.332306, 85.650024, 83.823990> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1295
sphere {
	<67.641373, 85.920280, 84.616074> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1296
sphere {
	<68.480148, 86.141693, 84.225746> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1297
sphere {
	<68.850037, 85.838585, 83.407013> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1298
sphere {
	<67.938850, 86.407433, 84.957741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1299
sphere {
	<68.445312, 86.473503, 84.165329> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1300
sphere {
	<68.244331, 86.129921, 83.304535> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1301
sphere {
	<68.453537, 86.804276, 85.053925> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1302
sphere {
	<68.418869, 86.807205, 84.112282> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1303
sphere {
	<67.734116, 86.489296, 83.539085> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1304
sphere {
	<68.960381, 87.135323, 84.817688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1305
sphere {
	<68.399399, 87.141762, 84.061012> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1306
sphere {
	<67.483292, 86.906517, 83.994980> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1307
sphere {
	<69.273819, 87.404083, 84.315598> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1308
sphere {
	<68.387032, 87.476105, 84.007233> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1309
sphere {
	<67.576302, 87.350555, 84.483368> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1310
sphere {
	<69.272217, 87.633598, 83.707458> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1311
sphere {
	<68.378174, 87.809639, 83.947205> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1312
sphere {
	<67.973038, 87.780876, 84.804039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1313
sphere {
	<68.948898, 87.861320, 83.191689> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1314
sphere {
	<68.369843, 88.141792, 83.880142> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1315
sphere {
	<68.520248, 88.161644, 84.816223> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1316
sphere {
	<68.414032, 88.125336, 82.932892> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1317
sphere {
	<68.356125, 88.473732, 83.812515> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1318
sphere {
	<68.972404, 88.461945, 84.533836> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1319
sphere {
	<67.900848, 88.472534, 82.981125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1320
sphere {
	<68.327942, 88.806862, 83.758530> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1321
sphere {
	<69.237122, 88.765404, 84.024178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1322
sphere {
	<67.491669, 88.833252, 83.312515> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1323
sphere {
	<68.285919, 89.141655, 83.729507> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1324
sphere {
	<69.189949, 89.071304, 83.453217> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1325
sphere {
	<67.342850, 89.198219, 83.814575> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1326
sphere {
	<68.244461, 89.477806, 83.728394> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1327
sphere {
	<68.847382, 89.389069, 83.001892> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1328
sphere {
	<67.505478, 89.557472, 84.316742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1329
sphere {
	<68.220963, 89.814919, 83.750626> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1330
sphere {
	<68.324066, 89.724022, 82.812347> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1331
sphere {
	<67.926788, 89.902840, 84.647827> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1332
sphere {
	<68.225372, 90.152161, 83.780304> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1333
sphere {
	<67.772400, 90.068092, 82.951736> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1334
sphere {
	<68.499252, 90.241074, 84.684296> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1335
sphere {
	<68.253632, 90.488808, 83.808304> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1336
sphere {
	<67.403358, 90.429718, 83.393021> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1337
sphere {
	<69.000465, 90.545090, 84.389168> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1338
sphere {
	<68.292053, 90.824570, 83.834602> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1339
sphere {
	<67.357368, 90.749695, 83.976181> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1340
sphere {
	<69.236748, 90.883621, 83.886948> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1341
sphere {
	<68.336349, 91.159874, 83.856491> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1342
sphere {
	<67.652267, 91.037148, 84.501236> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1343
sphere {
	<69.140991, 91.257423, 83.363998> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1344
sphere {
	<68.383270, 91.495285, 83.871536> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1345
sphere {
	<68.191605, 91.309814, 84.781425> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1346
sphere {
	<68.759995, 91.652901, 83.015709> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1347
sphere {
	<68.427666, 91.831207, 83.882767> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1348
sphere {
	<68.712692, 91.586220, 84.753288> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1349
sphere {
	<68.330818, 92.054619, 82.966232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1350
sphere {
	<68.455406, 92.168167, 83.901276> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1351
sphere {
	<69.201874, 91.913567, 84.428024> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1352
sphere {
	<67.839378, 92.428276, 83.229187> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1353
sphere {
	<68.466553, 92.504265, 83.941765> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1354
sphere {
	<69.392616, 92.302299, 83.959198> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1355
sphere {
	<67.570885, 92.736687, 83.733955> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1356
sphere {
	<68.472916, 92.838219, 83.999542> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1357
sphere {
	<69.270401, 92.730827, 83.497765> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1358
sphere {
	<67.593842, 92.979446, 84.326927> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1359
sphere {
	<68.488060, 93.168541, 84.073021> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1360
sphere {
	<68.892715, 93.177612, 83.215553> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1361
sphere {
	<67.919083, 93.196899, 84.831207> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1362
sphere {
	<68.525192, 93.493126, 84.161377> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1363
sphere {
	<68.366577, 93.594490, 83.232178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1364
sphere {
	<68.491394, 93.418617, 85.106155> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1365
sphere {
	<68.581055, 93.814041, 84.255661> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1366
sphere {
	<67.923019, 93.944702, 83.585907> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1367
sphere {
	<69.085953, 93.675171, 85.046082> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1368
sphere {
	<68.642975, 94.133102, 84.351685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1369
sphere {
	<67.713898, 94.188637, 84.170235> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1370
sphere {
	<69.513702, 94.035118, 84.714371> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1371
sphere {
	<68.711899, 94.451439, 84.445465> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1372
sphere {
	<67.839203, 94.354691, 84.803741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1373
sphere {
	<69.641998, 94.484688, 84.262718> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1374
sphere {
	<68.785995, 94.770348, 84.533897> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1375
sphere {
	<68.276573, 94.499680, 85.286514> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1376
sphere {
	<69.446976, 94.977448, 83.886314> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1377
sphere {
	<68.856094, 95.090897, 84.618790> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1378
sphere {
	<68.830421, 94.680244, 85.473099> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1379
sphere {
	<69.072296, 95.460602, 83.772758> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1380
sphere {
	<68.905663, 95.413872, 84.707626> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1381
sphere {
	<69.416405, 94.980713, 85.379036> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1382
sphere {
	<68.564896, 95.856430, 83.941139> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1383
sphere {
	<68.936890, 95.737671, 84.802872> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1384
sphere {
	<69.784264, 95.396568, 85.057594> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1385
sphere {
	<68.180031, 96.121468, 84.380539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1386
sphere {
	<68.963295, 96.056244, 84.914658> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1387
sphere {
	<69.855415, 95.908134, 84.629128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1388
sphere {
	<68.047234, 96.278137, 85.020844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1389
sphere {
	<68.990807, 96.368446, 85.043785> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1390
sphere {
	<69.634308, 96.404640, 84.348289> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1391
sphere {
	<68.226105, 96.402344, 85.603554> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1392
sphere {
	<69.033478, 96.675842, 85.179688> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1393
sphere {
	<69.212296, 96.860916, 84.267014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1394
sphere {
	<68.672516, 96.544197, 86.046616> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1395
sphere {
	<69.102478, 96.977051, 85.318253> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1396
sphere {
	<68.721344, 97.259407, 84.496834> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1397
sphere {
	<69.301376, 96.714302, 86.207397> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1398
sphere {
	<69.193176, 97.273148, 85.455902> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1399
sphere {
	<68.390900, 97.534042, 85.023125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1400
sphere {
	<69.878754, 96.979675, 86.041595> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1401
sphere {
	<69.294327, 97.566643, 85.592155> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1402
sphere {
	<68.354103, 97.655121, 85.677948> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1403
sphere {
	<70.223190, 97.399864, 85.684814> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1404
sphere {
	<69.401672, 97.859741, 85.724289> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1405
sphere {
	<68.648575, 97.690941, 86.275307> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1406
sphere {
	<70.252365, 97.931236, 85.311470> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1407
sphere {
	<69.511925, 98.154602, 85.850037> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1408
sphere {
	<69.202820, 97.737198, 86.643326> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1409
sphere {
	<69.991379, 98.489075, 85.103401> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1410
sphere {
	<69.619942, 98.451790, 85.972076> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1411
sphere {
	<69.767891, 97.888634, 86.720490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1412
sphere {
	<69.655968, 98.968803, 85.177979> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1413
sphere {
	<69.722092, 98.748405, 86.100494> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1414
sphere {
	<70.332565, 98.149590, 86.510208> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1415
sphere {
	<69.250038, 99.363060, 85.554039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1416
sphere {
	<69.813904, 99.039284, 86.247635> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1417
sphere {
	<70.661575, 98.622284, 86.165649> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1418
sphere {
	<69.012321, 99.538025, 86.158493> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1419
sphere {
	<69.895432, 99.325676, 86.409714> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1420
sphere {
	<70.662170, 99.216347, 85.862640> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1421
sphere {
	<69.061310, 99.539742, 86.806709> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1422
sphere {
	<69.972679, 99.609848, 86.577362> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1423
sphere {
	<70.363640, 99.798782, 85.734467> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1424
sphere {
	<69.424728, 99.508926, 87.344688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1425
sphere {
	<70.049683, 99.890442, 86.751366> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1426
sphere {
	<69.906990, 100.259346, 85.889603> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1427
sphere {
	<70.002510, 99.558640, 87.638481> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1428
sphere {
	<70.130424, 100.168579, 86.927406> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1429
sphere {
	<69.552124, 100.535652, 86.271713> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1430
sphere {
	<70.545433, 99.784348, 87.688507> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1431
sphere {
	<70.214409, 100.450272, 87.096268> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1432
sphere {
	<69.310135, 100.630058, 86.874817> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1433
sphere {
	<71.042984, 100.198723, 87.482666> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1434
sphere {
	<70.296997, 100.741623, 87.248062> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1435
sphere {
	<69.384857, 100.667068, 87.496017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1436
sphere {
	<71.241966, 100.726555, 87.170380> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1437
sphere {
	<70.371269, 101.045685, 87.377274> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1438
sphere {
	<69.773453, 100.728539, 88.041504> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1439
sphere {
	<71.106560, 101.288857, 86.830086> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1440
sphere {
	<70.435822, 101.359200, 87.488800> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1441
sphere {
	<70.369667, 100.902412, 88.317062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1442
sphere {
	<70.691940, 101.774101, 86.675522> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1443
sphere {
	<70.494797, 101.676720, 87.591827> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1444
sphere {
	<70.967178, 101.192406, 88.256287> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1445
sphere {
	<70.193573, 102.160255, 86.833801> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1446
sphere {
	<70.548988, 101.994415, 87.696655> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1447
sphere {
	<71.352669, 101.574310, 87.973694> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1448
sphere {
	<69.845749, 102.454208, 87.257050> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1449
sphere {
	<70.596893, 102.305878, 87.820839> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1450
sphere {
	<71.487175, 102.090134, 87.575844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1451
sphere {
	<69.699020, 102.603142, 87.888596> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1452
sphere {
	<70.640594, 102.609818, 87.964279> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1453
sphere {
	<71.327484, 102.629509, 87.310852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1454
sphere {
	<69.846169, 102.674072, 88.478149> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1455
sphere {
	<70.691002, 102.910660, 88.111954> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1456
sphere {
	<70.894112, 103.111961, 87.207809> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1457
sphere {
	<70.308121, 102.767654, 88.967636> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1458
sphere {
	<70.760719, 103.209259, 88.256012> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1459
sphere {
	<70.439476, 103.493111, 87.410133> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1460
sphere {
	<70.896553, 102.949974, 89.157867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1461
sphere {
	<70.848541, 103.506706, 88.392685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1462
sphere {
	<70.060104, 103.757263, 87.929276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1463
sphere {
	<71.515594, 103.227646, 89.006172> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1464
sphere {
	<70.942856, 103.806145, 88.520607> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1465
sphere {
	<69.999252, 103.899712, 88.521164> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1466
sphere {
	<71.859856, 103.646492, 88.701851> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1467
sphere {
	<71.034859, 104.113388, 88.629028> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1468
sphere {
	<70.240860, 103.994354, 89.133545> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1469
sphere {
	<71.916481, 104.160217, 88.283066> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1470
sphere {
	<71.121689, 104.428154, 88.720253> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1471
sphere {
	<70.734665, 104.111420, 89.525993> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1472
sphere {
	<71.675095, 104.678513, 87.992081> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1473
sphere {
	<71.192436, 104.748283, 88.805267> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1474
sphere {
	<71.336700, 104.326096, 89.642014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1475
sphere {
	<71.239807, 105.142807, 87.944260> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1476
sphere {
	<71.239365, 105.071884, 88.893600> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1477
sphere {
	<71.852303, 104.640724, 89.474602> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1478
sphere {
	<70.781075, 105.520279, 88.194870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1479
sphere {
	<71.276573, 105.392738, 88.996246> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1480
sphere {
	<72.162766, 105.066826, 89.083130> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1481
sphere {
	<70.449188, 105.772903, 88.731323> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1482
sphere {
	<71.317062, 105.706680, 89.116943> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1483
sphere {
	<72.159698, 105.566940, 88.705246> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1484
sphere {
	<70.426399, 105.926331, 89.357132> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1485
sphere {
	<71.367935, 106.009293, 89.260208> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1486
sphere {
	<71.867081, 106.121429, 88.461784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1487
sphere {
	<70.724457, 105.979309, 89.956062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1488
sphere {
	<71.429581, 106.304161, 89.415695> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1489
sphere {
	<71.422501, 106.581444, 88.508980> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1490
sphere {
	<71.246941, 106.071747, 90.316772> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1491
sphere {
	<71.505615, 106.597794, 89.566635> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1492
sphere {
	<70.993500, 106.906151, 88.830536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1493
sphere {
	<71.847054, 106.293343, 90.397278> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1494
sphere {
	<71.592087, 106.893242, 89.708519> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1495
sphere {
	<70.719803, 107.087585, 89.391602> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1496
sphere {
	<72.371788, 106.648994, 90.189865> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1497
sphere {
	<71.675255, 107.192177, 89.844925> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1498
sphere {
	<70.747742, 107.151398, 90.037903> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1499
sphere {
	<72.622406, 107.149406, 89.827301> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1500
sphere {
	<71.752785, 107.496147, 89.973221> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1501
sphere {
	<71.127991, 107.191864, 90.618439> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1502
sphere {
	<72.509499, 107.720779, 89.447807> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1503
sphere {
	<71.818413, 107.808006, 90.087997> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1504
sphere {
	<71.675972, 107.362038, 90.912537> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1505
sphere {
	<72.148361, 108.209747, 89.294907> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1506
sphere {
	<71.869431, 108.126755, 90.191605> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1507
sphere {
	<72.288239, 107.656334, 90.900444> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1508
sphere {
	<71.629028, 108.596626, 89.403839> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1509
sphere {
	<71.903053, 108.446953, 90.296890> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1510
sphere {
	<72.703865, 108.079346, 90.647339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1511
sphere {
	<71.214035, 108.859764, 89.792854> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1512
sphere {
	<71.922096, 108.765488, 90.411041> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1513
sphere {
	<72.842682, 108.571350, 90.293312> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1514
sphere {
	<71.012924, 109.027039, 90.345947> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1515
sphere {
	<71.943466, 109.081024, 90.532822> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1516
sphere {
	<72.659988, 109.073555, 89.911736> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1517
sphere {
	<71.123863, 109.157814, 91.003441> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1518
sphere {
	<71.981689, 109.391380, 90.663300> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1519
sphere {
	<72.265732, 109.539978, 89.770935> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1520
sphere {
	<71.523827, 109.300270, 91.488647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1521
sphere {
	<72.045746, 109.694717, 90.799561> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1522
sphere {
	<71.767204, 109.961243, 89.933273> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1523
sphere {
	<72.136894, 109.455841, 91.712738> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1524
sphere {
	<72.129288, 109.993538, 90.936111> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1525
sphere {
	<71.426132, 110.260315, 90.358536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1526
sphere {
	<72.689926, 109.708786, 91.645905> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1527
sphere {
	<72.216743, 110.294334, 91.065315> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1528
sphere {
	<71.277260, 110.394264, 90.983932> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1529
sphere {
	<73.113808, 110.133644, 91.327240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1530
sphere {
	<72.299484, 110.603203, 91.177246> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1531
sphere {
	<71.447586, 110.493286, 91.578934> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1532
sphere {
	<73.217949, 110.642075, 90.944626> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1533
sphere {
	<72.373650, 110.919731, 91.273178> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1534
sphere {
	<71.942780, 110.600113, 92.055077> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1535
sphere {
	<72.967201, 111.178474, 90.580475> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1536
sphere {
	<72.438362, 111.239677, 91.364616> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1537
sphere {
	<72.503220, 110.797195, 92.200836> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1538
sphere {
	<72.565552, 111.649094, 90.518883> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1539
sphere {
	<72.483482, 111.561653, 91.459373> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1540
sphere {
	<73.048965, 111.130577, 92.086716> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1541
sphere {
	<72.081200, 112.009148, 90.726486> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1542
sphere {
	<72.504501, 111.881691, 91.568069> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1543
sphere {
	<73.390961, 111.591621, 91.739235> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1544
sphere {
	<71.692383, 112.233223, 91.227455> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1545
sphere {
	<72.517303, 112.196609, 91.692810> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1546
sphere {
	<73.407379, 112.089256, 91.383667> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1547
sphere {
	<71.596138, 112.378662, 91.824249> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1548
sphere {
	<72.535965, 112.503555, 91.834778> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1549
sphere {
	<73.146667, 112.622162, 91.119202> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1550
sphere {
	<71.795288, 112.459335, 92.425232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1551
sphere {
	<72.570381, 112.798546, 91.997345> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1552
sphere {
	<72.699097, 113.092697, 91.105125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1553
sphere {
	<72.255501, 112.553001, 92.857399> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1554
sphere {
	<72.632294, 113.085724, 92.165878> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1555
sphere {
	<72.209824, 113.438728, 91.393852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1556
sphere {
	<72.875061, 112.737480, 93.013794> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1557
sphere {
	<72.720627, 113.372910, 92.322121> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1558
sphere {
	<71.906982, 113.643394, 91.917023> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1559
sphere {
	<73.421043, 113.063461, 92.881317> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1560
sphere {
	<72.822281, 113.667694, 92.454163> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1561
sphere {
	<71.882545, 113.756607, 92.544601> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1562
sphere {
	<73.752792, 113.510139, 92.546127> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1563
sphere {
	<72.927635, 113.969254, 92.567764> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1564
sphere {
	<72.150665, 113.848953, 93.098053> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1565
sphere {
	<73.795570, 114.003891, 92.187424> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1566
sphere {
	<73.026665, 114.274460, 92.676773> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1567
sphere {
	<72.685730, 113.894417, 93.475906> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1568
sphere {
	<73.537697, 114.581573, 91.939423> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1569
sphere {
	<73.103180, 114.586075, 92.785110> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1570
sphere {
	<73.316528, 114.086998, 93.562759> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1571
sphere {
	<73.079201, 115.062820, 91.965805> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1572
sphere {
	<73.151794, 114.900558, 92.900925> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1573
sphere {
	<73.820984, 114.435867, 93.386261> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1574
sphere {
	<72.626747, 115.398949, 92.288536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1575
sphere {
	<73.184082, 115.213120, 93.028198> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1576
sphere {
	<74.081718, 114.912651, 93.083977> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1577
sphere {
	<72.341148, 115.581497, 92.797890> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1578
sphere {
	<73.215546, 115.523766, 93.160133> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1579
sphere {
	<74.038475, 115.433701, 92.697716> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1580
sphere {
	<72.330505, 115.692963, 93.455307> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1581
sphere {
	<73.254883, 115.830429, 93.298866> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1582
sphere {
	<73.667175, 115.969429, 92.456360> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1583
sphere {
	<72.682526, 115.757149, 94.051331> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1584
sphere {
	<73.299606, 116.132446, 93.446121> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1585
sphere {
	<73.166267, 116.400536, 92.546432> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1586
sphere {
	<73.239639, 115.886749, 94.360062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1587
sphere {
	<73.348419, 116.431267, 93.598610> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1588
sphere {
	<72.708038, 116.677483, 92.943985> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1589
sphere {
	<73.832237, 116.153954, 94.365555> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1590
sphere {
	<73.401978, 116.729370, 93.750923> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1591
sphere {
	<72.500534, 116.831017, 93.474762> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1592
sphere {
	<74.224075, 116.559593, 94.191933> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1593
sphere {
	<73.458076, 117.031227, 93.894348> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1594
sphere {
	<72.562775, 116.876289, 94.165588> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1595
sphere {
	<74.398247, 117.101685, 93.793076> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1596
sphere {
	<73.513435, 117.337456, 94.028763> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1597
sphere {
	<72.887321, 116.983521, 94.646683> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1598
sphere {
	<74.272018, 117.615906, 93.532608> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1599
sphere {
	<73.554520, 117.649254, 94.154480> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1600
sphere {
	<73.454910, 117.160599, 94.960960> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1601
sphere {
	<73.844803, 118.109726, 93.377960> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1602
sphere {
	<73.577698, 117.966095, 94.272560> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1603
sphere {
	<73.982712, 117.488464, 94.984581> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1604
sphere {
	<73.355217, 118.458046, 93.493134> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1605
sphere {
	<73.594345, 118.281319, 94.396088> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1606
sphere {
	<74.406723, 117.913239, 94.718285> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1607
sphere {
	<72.891426, 118.706848, 93.922882> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1608
sphere {
	<73.604691, 118.587494, 94.540192> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1609
sphere {
	<74.527298, 118.461494, 94.361359> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1610
sphere {
	<72.681618, 118.804710, 94.546463> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1611
sphere {
	<73.616348, 118.880280, 94.710144> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1612
sphere {
	<74.330719, 119.009590, 94.100098> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1613
sphere {
	<72.796227, 118.843575, 95.184723> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1614
sphere {
	<73.636925, 119.164688, 94.893448> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1615
sphere {
	<73.903572, 119.484718, 94.041611> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1616
sphere {
	<73.191681, 118.897484, 95.686928> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1617
sphere {
	<73.674522, 119.444122, 95.081024> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1618
sphere {
	<73.404617, 119.837578, 94.261559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1619
sphere {
	<73.754028, 119.057137, 95.943024> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1620
sphere {
	<73.740700, 119.721748, 95.263252> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1621
sphere {
	<73.003525, 120.033470, 94.754753> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1622
sphere {
	<74.341843, 119.366211, 95.904572> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1623
sphere {
	<73.824821, 120.001808, 95.434563> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1624
sphere {
	<72.887512, 120.123375, 95.359001> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1625
sphere {
	<74.717110, 119.793465, 95.678940> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1626
sphere {
	<73.912186, 120.286583, 95.596230> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1627
sphere {
	<73.088356, 120.092430, 96.023727> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1628
sphere {
	<74.813408, 120.378418, 95.315865> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1629
sphere {
	<73.997116, 120.576622, 95.749977> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1630
sphere {
	<73.504509, 120.149139, 96.438248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1631
sphere {
	<74.643112, 120.916939, 95.144928> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1632
sphere {
	<74.077217, 120.867569, 95.904251> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1633
sphere {
	<74.116920, 120.256294, 96.628059> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1634
sphere {
	<74.227592, 121.438286, 95.162003> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1635
sphere {
	<74.147675, 121.158272, 96.063629> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1636
sphere {
	<74.729927, 120.566193, 96.521454> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1637
sphere {
	<73.719772, 121.780838, 95.490532> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1638
sphere {
	<74.207306, 121.449829, 96.225937> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1639
sphere {
	<75.073990, 121.065475, 96.243668> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1640
sphere {
	<73.401855, 121.915070, 96.041489> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1641
sphere {
	<74.259972, 121.741653, 96.390266> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1642
sphere {
	<75.084976, 121.654488, 95.930969> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1643
sphere {
	<73.380272, 121.928535, 96.691025> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1644
sphere {
	<74.313034, 122.026001, 96.566528> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1645
sphere {
	<74.818336, 122.224144, 95.788979> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1646
sphere {
	<73.664131, 121.920471, 97.249786> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1647
sphere {
	<74.373009, 122.302307, 96.753548> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1648
sphere {
	<74.372658, 122.676132, 95.882095> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1649
sphere {
	<74.183548, 121.973640, 97.622589> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1650
sphere {
	<74.447395, 122.577866, 96.935883> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1651
sphere {
	<73.940659, 122.963806, 96.233414> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1652
sphere {
	<74.782715, 122.185539, 97.731506> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1653
sphere {
	<74.534073, 122.857559, 97.106552> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1654
sphere {
	<73.660103, 123.082230, 96.815231> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1655
sphere {
	<75.316399, 122.568520, 97.557785> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1656
sphere {
	<74.624298, 123.147003, 97.257614> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1657
sphere {
	<73.703644, 123.124161, 97.483528> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1658
sphere {
	<75.568855, 123.082016, 97.204262> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1659
sphere {
	<74.713585, 123.445023, 97.392166> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1660
sphere {
	<74.035164, 123.171577, 97.995575> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1661
sphere {
	<75.511818, 123.629150, 96.914421> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1662
sphere {
	<74.787025, 123.750931, 97.517456> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1663
sphere {
	<74.610695, 123.281876, 98.322502> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1664
sphere {
	<75.148773, 124.170288, 96.747757> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1665
sphere {
	<74.845016, 124.062950, 97.636726> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1666
sphere {
	<75.141266, 123.536232, 98.367416> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1667
sphere {
	<74.734947, 124.578735, 96.848701> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1668
sphere {
	<74.887215, 124.373947, 97.763855> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1669
sphere {
	<75.635307, 123.937546, 98.149963> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1670
sphere {
	<74.265678, 124.859489, 97.237534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1671
sphere {
	<74.910294, 124.682526, 97.902161> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1672
sphere {
	<75.831200, 124.482925, 97.795189> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1673
sphere {
	<74.007057, 124.962608, 97.832275> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1674
sphere {
	<74.929787, 124.988068, 98.047615> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1675
sphere {
	<75.701965, 125.001511, 97.497391> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1676
sphere {
	<74.070946, 125.056847, 98.443634> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1677
sphere {
	<74.962471, 125.285721, 98.205887> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1678
sphere {
	<75.298683, 125.517174, 97.349937> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1679
sphere {
	<74.456879, 125.120049, 98.990814> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1680
sphere {
	<75.007172, 125.575424, 98.376060> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1681
sphere {
	<74.790131, 125.914848, 97.517670> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1682
sphere {
	<75.031830, 125.248039, 99.265686> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1683
sphere {
	<75.056297, 125.861671, 98.550903> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1684
sphere {
	<74.355339, 126.134117, 97.973328> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1685
sphere {
	<75.611877, 125.541069, 99.249336> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1686
sphere {
	<75.112488, 126.145859, 98.726891> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1687
sphere {
	<74.172943, 126.200897, 98.611328> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1688
sphere {
	<76.006065, 125.998146, 99.007950> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1689
sphere {
	<75.172394, 126.431076, 98.899948> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1690
sphere {
	<74.291710, 126.230438, 99.188614> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1691
sphere {
	<76.106430, 126.527695, 98.767624> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1692
sphere {
	<75.225540, 126.719910, 99.069221> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1693
sphere {
	<74.708664, 126.230789, 99.695984> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1694
sphere {
	<75.894119, 127.130478, 98.536743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1695
sphere {
	<75.257767, 127.014374, 99.233330> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1696
sphere {
	<75.295265, 126.413338, 99.965805> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1697
sphere {
	<75.414803, 127.601257, 98.505287> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1698
sphere {
	<75.272926, 127.312332, 99.394318> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1699
sphere {
	<75.768997, 126.764557, 99.988525> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1700
sphere {
	<74.951103, 127.896332, 98.720093> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1701
sphere {
	<75.274231, 127.604950, 99.564804> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1702
sphere {
	<76.140251, 127.286224, 99.782623> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1703
sphere {
	<74.500694, 128.016891, 99.202690> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1704
sphere {
	<75.263733, 127.890533, 99.747093> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1705
sphere {
	<76.181763, 127.865898, 99.510925> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1706
sphere {
	<74.327370, 128.020920, 99.820404> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1707
sphere {
	<75.258789, 128.165573, 99.944595> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1708
sphere {
	<75.906036, 128.435684, 99.306427> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1709
sphere {
	<74.486450, 127.988464, 100.465393> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1710
sphere {
	<75.262505, 128.427597, 100.159515> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1711
sphere {
	<75.399017, 128.886658, 99.341103> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1712
sphere {
	<74.937340, 128.003143, 100.942619> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1713
sphere {
	<75.271599, 128.685272, 100.379601> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1714
sphere {
	<74.929298, 129.121338, 99.610313> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1715
sphere {
	<75.425713, 128.221146, 101.192039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1716
sphere {
	<75.296440, 128.947159, 100.592926> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1717
sphere {
	<74.506111, 129.190002, 100.128601> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1718
sphere {
	<75.963051, 128.623093, 101.184380> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1719
sphere {
	<75.340271, 129.214798, 100.796120> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1720
sphere {
	<74.393440, 129.162384, 100.798126> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1721
sphere {
	<76.273575, 129.152802, 100.951622> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1722
sphere {
	<75.390732, 129.491058, 100.985703> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1723
sphere {
	<74.611206, 129.150864, 101.404938> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1724
sphere {
	<76.264236, 129.728043, 100.702888> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1725
sphere {
	<75.429741, 129.780014, 101.157974> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1726
sphere {
	<75.073837, 129.223694, 101.838409> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1727
sphere {
	<75.958008, 130.279999, 100.549576> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1728
sphere {
	<75.452560, 130.076202, 101.321075> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1729
sphere {
	<75.606873, 129.474472, 102.037567> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1730
sphere {
	<75.492638, 130.675293, 100.587158> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1731
sphere {
	<75.470383, 130.372192, 101.485397> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1732
sphere {
	<76.121109, 129.862274, 101.949890> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1733
sphere {
	<74.970741, 130.936539, 100.910019> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1734
sphere {
	<75.483658, 130.663284, 101.658447> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1735
sphere {
	<76.401421, 130.425110, 101.653442> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1736
sphere {
	<74.611359, 131.000381, 101.501549> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1737
sphere {
	<75.490150, 130.944550, 101.847214> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1738
sphere {
	<76.332298, 131.021362, 101.418030> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1739
sphere {
	<74.584808, 130.976608, 102.127304> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1740
sphere {
	<75.504288, 131.212006, 102.054520> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1741
sphere {
	<75.987793, 131.547897, 101.311127> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1742
sphere {
	<74.868164, 130.961716, 102.711609> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1743
sphere {
	<75.532387, 131.468201, 102.274544> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1744
sphere {
	<75.466843, 131.956284, 101.464211> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1745
sphere {
	<75.403862, 131.000549, 103.089386> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1746
sphere {
	<75.566887, 131.718231, 102.500832> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1747
sphere {
	<74.977081, 132.129395, 101.882553> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1748
sphere {
	<75.992210, 131.250519, 103.207634> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1749
sphere {
	<75.607971, 131.965607, 102.729004> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1750
sphere {
	<74.701187, 132.105042, 102.489288> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1751
sphere {
	<76.439445, 131.711441, 103.107384> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1752
sphere {
	<75.657394, 132.219330, 102.947830> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1753
sphere {
	<74.746056, 132.029251, 103.127991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1754
sphere {
	<76.602798, 132.284836, 102.914017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1755
sphere {
	<75.702942, 132.488464, 103.148331> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1756
sphere {
	<75.084038, 131.992523, 103.668106> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1757
sphere {
	<76.455742, 132.892075, 102.736473> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1758
sphere {
	<75.726158, 132.769699, 103.335602> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1759
sphere {
	<75.602470, 132.122025, 104.017044> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1760
sphere {
	<76.039597, 133.388657, 102.689209> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1761
sphere {
	<75.729614, 133.056961, 103.515366> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1762
sphere {
	<76.170662, 132.478943, 104.124039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1763
sphere {
	<75.469185, 133.674530, 102.844543> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1764
sphere {
	<75.723450, 133.347000, 103.690811> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1765
sphere {
	<76.559891, 132.998047, 103.969604> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1766
sphere {
	<74.992462, 133.783051, 103.272842> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1767
sphere {
	<75.709953, 133.636856, 103.866119> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1768
sphere {
	<76.638916, 133.593948, 103.680740> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1769
sphere {
	<74.772842, 133.780823, 103.884689> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1770
sphere {
	<75.693565, 133.919067, 104.052696> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1771
sphere {
	<76.402634, 134.155289, 103.469086> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1772
sphere {
	<74.872467, 133.771576, 104.503464> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1773
sphere {
	<75.679733, 134.190369, 104.255432> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1774
sphere {
	<75.900238, 134.611526, 103.434967> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1775
sphere {
	<75.275307, 133.803741, 105.020966> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1776
sphere {
	<75.672638, 134.458511, 104.462585> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1777
sphere {
	<75.380219, 134.851105, 103.650482> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1778
sphere {
	<75.774521, 134.039474, 105.307114> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1779
sphere {
	<75.683250, 134.731949, 104.662170> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1780
sphere {
	<74.924469, 134.943512, 104.134308> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1781
sphere {
	<76.310432, 134.445816, 105.313324> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1782
sphere {
	<75.710617, 135.009644, 104.854660> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1783
sphere {
	<74.767281, 134.945648, 104.782410> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1784
sphere {
	<76.628807, 134.965561, 105.087387> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1785
sphere {
	<75.741394, 135.289017, 105.044037> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1786
sphere {
	<74.910187, 134.954971, 105.354919> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1787
sphere {
	<76.646873, 135.517654, 104.879715> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1788
sphere {
	<75.762321, 135.576782, 105.221481> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1789
sphere {
	<75.344231, 135.019348, 105.864578> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1790
sphere {
	<76.345291, 136.077744, 104.666138> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1791
sphere {
	<75.769783, 135.872726, 105.386551> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1792
sphere {
	<75.856201, 135.269775, 106.113297> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1793
sphere {
	<75.878448, 136.473053, 104.660629> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1794
sphere {
	<75.766136, 136.169037, 105.550972> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1795
sphere {
	<76.404633, 135.694473, 106.067039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1796
sphere {
	<75.283737, 136.705414, 104.935555> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1797
sphere {
	<75.753975, 136.461716, 105.721596> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1798
sphere {
	<76.658119, 136.210968, 105.859062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1799
sphere {
	<74.921013, 136.808594, 105.429916> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1800
sphere {
	<75.737038, 136.743713, 105.908363> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1801
sphere {
	<76.632851, 136.807892, 105.604156> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1802
sphere {
	<74.801613, 136.789886, 106.056618> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1803
sphere {
	<75.725471, 137.012161, 106.114647> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1804
sphere {
	<76.320953, 137.328690, 105.448090> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1805
sphere {
	<74.993553, 136.782715, 106.672157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1806
sphere {
	<75.725800, 137.276459, 106.326912> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1807
sphere {
	<75.797501, 137.711975, 105.487656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1808
sphere {
	<75.462158, 136.864822, 107.139481> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1809
sphere {
	<75.731071, 137.544067, 106.534920> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1810
sphere {
	<75.253838, 137.894028, 105.794044> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1811
sphere {
	<76.030838, 137.147949, 107.342651> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1812
sphere {
	<75.739174, 137.817932, 106.734451> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1813
sphere {
	<74.883163, 137.904877, 106.335892> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1814
sphere {
	<76.498039, 137.636398, 107.273285> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1815
sphere {
	<75.753929, 138.103195, 106.916389> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1816
sphere {
	<74.825981, 137.919922, 106.982788> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1817
sphere {
	<76.692894, 138.187973, 107.018105> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1818
sphere {
	<75.768425, 138.403046, 107.073151> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1819
sphere {
	<75.092705, 137.982834, 107.588913> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1820
sphere {
	<76.563782, 138.755249, 106.695641> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1821
sphere {
	<75.774246, 138.711029, 107.214615> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1822
sphere {
	<75.572372, 138.174072, 107.969635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1823
sphere {
	<76.161232, 139.221069, 106.515106> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1824
sphere {
	<75.760925, 139.019470, 107.353622> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1825
sphere {
	<76.123573, 138.529617, 108.080048> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1826
sphere {
	<75.585167, 139.546249, 106.584991> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1827
sphere {
	<75.724319, 139.326996, 107.491211> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1828
sphere {
	<76.525688, 139.052658, 107.917465> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1829
sphere {
	<75.043549, 139.677811, 106.932068> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1830
sphere {
	<75.679382, 139.632843, 107.630447> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1831
sphere {
	<76.625221, 139.567795, 107.647331> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1832
sphere {
	<74.762512, 139.782837, 107.440277> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1833
sphere {
	<75.638481, 139.935852, 107.776649> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1834
sphere {
	<76.433289, 140.076401, 107.278976> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1835
sphere {
	<74.755417, 139.864761, 108.114769> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1836
sphere {
	<75.613693, 140.233063, 107.937172> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1837
sphere {
	<75.964661, 140.524353, 107.105789> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1838
sphere {
	<75.090050, 139.981110, 108.686493> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1839
sphere {
	<75.604614, 140.526459, 108.106659> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1840
sphere {
	<75.444771, 140.825531, 107.221069> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1841
sphere {
	<75.569893, 140.218552, 109.002876> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1842
sphere {
	<75.615143, 140.821548, 108.272522> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1843
sphere {
	<74.969223, 141.033585, 107.611565> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1844
sphere {
	<76.105652, 140.563095, 109.041794> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1845
sphere {
	<75.648758, 141.122665, 108.423874> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1846
sphere {
	<74.721565, 141.140915, 108.225937> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1847
sphere {
	<76.517258, 141.033783, 108.793938> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1848
sphere {
	<75.690910, 141.429810, 108.560951> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1849
sphere {
	<74.791489, 141.250320, 108.801628> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1850
sphere {
	<76.631516, 141.528381, 108.492958> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1851
sphere {
	<75.726608, 141.739807, 108.693176> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1852
sphere {
	<75.164528, 141.328003, 109.336395> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1853
sphere {
	<76.432808, 142.089813, 108.165977> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1854
sphere {
	<75.743164, 142.055099, 108.815819> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1855
sphere {
	<75.691147, 141.570557, 109.629211> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1856
sphere {
	<75.987854, 142.526855, 108.030426> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1857
sphere {
	<75.735718, 142.372009, 108.935303> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1858
sphere {
	<76.203148, 141.932159, 109.633339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1859
sphere {
	<75.447014, 142.849609, 108.168625> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1860
sphere {
	<75.711212, 142.684708, 109.063515> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1861
sphere {
	<76.580719, 142.446518, 109.357483> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1862
sphere {
	<74.936020, 142.997711, 108.616058> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1863
sphere {
	<75.680496, 142.994003, 109.198875> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1864
sphere {
	<76.617508, 142.954208, 109.058945> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1865
sphere {
	<74.740555, 143.113266, 109.160637> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1866
sphere {
	<75.651543, 143.299316, 109.343231> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1867
sphere {
	<76.327843, 143.475983, 108.702446> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1868
sphere {
	<74.854210, 143.182236, 109.842941> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1869
sphere {
	<75.627480, 143.601135, 109.495583> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1870
sphere {
	<75.889999, 143.863632, 108.623016> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1871
sphere {
	<75.183914, 143.361115, 110.298553> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1872
sphere {
	<75.611626, 143.904419, 109.646111> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1873
sphere {
	<75.302315, 144.114166, 108.774605> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1874
sphere {
	<75.731483, 143.669495, 110.556885> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1875
sphere {
	<75.610573, 144.213348, 109.784996> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1876
sphere {
	<74.870453, 144.283173, 109.196350> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1877
sphere {
	<76.215736, 144.092041, 110.504898> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1878
sphere {
	<75.625313, 144.530380, 109.903214> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1879
sphere {
	<74.685669, 144.429153, 109.826363> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1880
sphere {
	<76.536049, 144.573196, 110.164001> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1881
sphere {
	<75.648186, 144.853195, 110.004005> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1882
sphere {
	<74.825279, 144.606857, 110.405670> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1883
sphere {
	<76.547905, 145.043411, 109.772789> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1884
sphere {
	<75.668396, 145.177475, 110.100708> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1885
sphere {
	<75.257149, 144.782761, 110.858505> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1886
sphere {
	<76.245468, 145.535095, 109.438789> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1887
sphere {
	<75.670143, 145.502991, 110.194214> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1888
sphere {
	<75.828171, 145.091812, 111.033974> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1889
sphere {
	<75.706825, 145.924255, 109.345505> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1890
sphere {
	<75.654099, 145.829163, 110.285034> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1891
sphere {
	<76.299126, 145.506470, 110.900574> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1892
sphere {
	<75.164406, 146.192444, 109.558784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1893
sphere {
	<75.630058, 146.151031, 110.388062> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1894
sphere {
	<76.544876, 145.977051, 110.567322> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1895
sphere {
	<74.782372, 146.392120, 110.038223> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1896
sphere {
	<75.604645, 146.468430, 110.504181> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1897
sphere {
	<76.483749, 146.470535, 110.148659> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1898
sphere {
	<74.675186, 146.529205, 110.682022> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1899
sphere {
	<75.590187, 146.780701, 110.634552> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1900
sphere {
	<76.111542, 146.951340, 109.861069> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1901
sphere {
	<74.919037, 146.659866, 111.293373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1902
sphere {
	<75.587196, 147.085587, 110.782478> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1903
sphere {
	<75.559036, 147.346710, 109.871353> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1904
sphere {
	<75.420761, 146.831390, 111.680725> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1905
sphere {
	<75.592033, 147.388977, 110.933655> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1906
sphere {
	<75.074463, 147.580582, 110.162498> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1907
sphere {
	<75.936462, 147.162094, 111.787506> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1908
sphere {
	<75.613251, 147.696426, 111.074043> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1909
sphere {
	<74.745773, 147.753922, 110.695312> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1910
sphere {
	<76.385010, 147.581116, 111.612747> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1911
sphere {
	<75.651718, 148.011200, 111.192886> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1912
sphere {
	<74.719124, 147.903534, 111.326782> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1913
sphere {
	<76.597519, 148.056122, 111.243256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1914
sphere {
	<75.692154, 148.334732, 111.284538> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1915
sphere {
	<75.000534, 148.085114, 111.883362> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1916
sphere {
	<76.501610, 148.535980, 110.833557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1917
sphere {
	<75.718628, 148.665497, 111.352333> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1918
sphere {
	<75.495110, 148.343597, 112.215851> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1919
sphere {
	<76.126099, 148.967896, 110.551254> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1920
sphere {
	<75.722107, 148.998840, 111.412735> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1921
sphere {
	<76.031593, 148.666443, 112.245155> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1922
sphere {
	<75.602707, 149.344299, 110.537781> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1923
sphere {
	<75.710770, 149.330383, 111.482216> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1924
sphere {
	<76.477257, 149.064713, 111.973213> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1925
sphere {
	<75.073051, 149.634033, 110.849503> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1926
sphere {
	<75.694687, 149.657166, 111.570114> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1927
sphere {
	<76.633072, 149.520660, 111.572342> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1928
sphere {
	<74.785568, 149.852005, 111.383942> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1929
sphere {
	<75.678520, 149.975662, 111.684052> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1930
sphere {
	<76.469406, 150.029144, 111.163643> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1931
sphere {
	<74.800346, 149.984772, 112.041557> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1932
sphere {
	<75.666336, 150.287430, 111.816360> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1933
sphere {
	<76.074120, 150.472794, 110.980591> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1934
sphere {
	<75.092499, 150.138779, 112.556519> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1935
sphere {
	<75.662514, 150.598724, 111.950394> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1936
sphere {
	<75.501411, 150.789307, 111.035553> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1937
sphere {
	<75.628891, 150.404465, 112.877937> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1938
sphere {
	<75.675468, 150.913528, 112.074883> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1939
sphere {
	<75.036018, 151.024368, 111.383560> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1940
sphere {
	<76.158394, 150.772476, 112.878708> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1941
sphere {
	<75.698410, 151.233002, 112.185760> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1942
sphere {
	<74.777328, 151.178772, 111.966965> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1943
sphere {
	<76.559708, 151.233826, 112.582413> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1944
sphere {
	<75.723328, 151.558578, 112.275597> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1945
sphere {
	<74.844826, 151.375885, 112.582207> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1946
sphere {
	<76.653488, 151.695084, 112.151382> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1947
sphere {
	<75.742287, 151.890686, 112.338989> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1948
sphere {
	<75.224968, 151.610855, 113.082855> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1949
sphere {
	<76.410309, 152.147186, 111.716858> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1950
sphere {
	<75.742805, 152.226685, 112.382599> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1951
sphere {
	<75.733810, 151.948761, 113.289108> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1952
sphere {
	<75.945480, 152.507294, 111.499741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1953
sphere {
	<75.719360, 152.562119, 112.422844> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1954
sphere {
	<76.231682, 152.335037, 113.187721> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1955
sphere {
	<75.381088, 152.819855, 111.575256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1956
sphere {
	<75.679031, 152.895386, 112.469727> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1957
sphere {
	<76.545166, 152.769455, 112.834763> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1958
sphere {
	<74.909897, 153.058380, 111.939575> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1959
sphere {
	<75.633347, 153.224808, 112.533546> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1960
sphere {
	<76.561569, 153.222595, 112.340057> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1961
sphere {
	<74.686165, 153.269730, 112.537621> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1962
sphere {
	<75.582497, 153.549957, 112.614807> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1963
sphere {
	<76.239098, 153.645081, 111.937256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1964
sphere {
	<74.799881, 153.472794, 113.144562> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1965
sphere {
	<75.538055, 153.872559, 112.708252> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1966
sphere {
	<75.720993, 153.998062, 111.786346> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1967
sphere {
	<75.168732, 153.744659, 113.572205> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1968
sphere {
	<75.505386, 154.193985, 112.811035> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1969
sphere {
	<75.150864, 154.252670, 111.933533> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1970
sphere {
	<75.674500, 154.102127, 113.739616> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1971
sphere {
	<75.484642, 154.518738, 112.904976> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1972
sphere {
	<74.721664, 154.448334, 112.346230> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1973
sphere {
	<76.121613, 154.547272, 113.606743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1974
sphere {
	<75.469864, 154.847351, 112.986931> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1975
sphere {
	<74.549164, 154.624054, 112.947838> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1976
sphere {
	<76.373093, 155.024567, 113.214760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
