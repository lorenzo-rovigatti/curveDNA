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
	location <73.1065, 62.7813, 196.893>
	look_at <73.1065, 62.7813, 75.9674>
	direction <0, 0, -120.926>
	angle 57.8224
}


# declare cpy_camera_pos = <73.1065, 62.7813, 196.893>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 121.561
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
	<131.380051, 65.925026, 74.467064> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1
sphere {
	<131.326202, 65.169586, 75.037659> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 2
sphere {
	<131.660873, 66.795601, 74.217239> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 3
sphere {
	<131.084961, 65.901276, 74.301941> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 4
sphere {
	<130.837158, 65.568047, 75.154419> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 5
sphere {
	<131.587769, 66.434212, 73.699989> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 6
sphere {
	<130.794510, 65.859161, 74.133072> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 7
sphere {
	<130.453461, 66.085442, 74.988434> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 8
sphere {
	<131.422943, 65.885544, 73.423462> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 9
sphere {
	<130.505859, 65.788666, 73.970551> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 10
sphere {
	<130.210373, 66.479431, 74.549110> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 11
sphere {
	<131.135620, 65.331543, 73.428696> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 12
sphere {
	<130.216232, 65.699135, 73.818970> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 13
sphere {
	<130.074677, 66.633133, 73.901314> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 14
sphere {
	<130.738861, 64.914116, 73.720169> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 15
sphere {
	<129.926910, 65.600090, 73.672729> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 16
sphere {
	<130.043442, 66.446655, 73.261734> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 17
sphere {
	<130.217667, 64.795822, 74.082352> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 18
sphere {
	<129.636139, 65.496841, 73.532349> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 19
sphere {
	<130.020477, 65.963959, 72.802094> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 20
sphere {
	<129.653168, 64.986206, 74.331200> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 21
sphere {
	<129.342316, 65.393448, 73.398666> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 22
sphere {
	<129.906601, 65.327263, 72.639465> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 23
sphere {
	<129.143433, 65.382385, 74.325745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 24
sphere {
	<129.046234, 65.293808, 73.267082> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 25
sphere {
	<129.653275, 64.801971, 72.729729> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 26
sphere {
	<128.755814, 65.729149, 74.057846> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 27
sphere {
	<128.752228, 65.206749, 73.123268> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 28
sphere {
	<129.223022, 64.387924, 73.039276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 29
sphere {
	<128.523895, 66.028740, 73.537216> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 30
sphere {
	<128.462387, 65.131996, 72.964203> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 31
sphere {
	<128.681671, 64.283737, 73.326881> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 32
sphere {
	<128.449371, 66.079865, 72.940948> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 33
sphere {
	<128.177124, 65.053459, 72.798927> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 34
sphere {
	<128.107224, 64.496628, 73.563271> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 35
sphere {
	<128.444885, 65.826935, 72.320183> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 36
sphere {
	<127.901901, 64.956161, 72.627213> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 37
sphere {
	<127.571259, 64.897408, 73.514008> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 38
sphere {
	<128.440552, 65.310974, 71.932144> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 39
sphere {
	<127.638977, 64.834869, 72.451340> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 40
sphere {
	<127.173729, 65.260681, 73.159424> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 41
sphere {
	<128.352936, 64.720306, 71.837891> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 42
sphere {
	<127.383820, 64.695610, 72.277069> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 43
sphere {
	<126.968750, 65.500687, 72.557686> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 44
sphere {
	<128.115463, 64.149033, 72.021881> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 45
sphere {
	<127.132072, 64.546471, 72.105957> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 46
sphere {
	<126.967033, 65.455475, 71.892303> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 47
sphere {
	<127.671738, 63.801834, 72.337128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 48
sphere {
	<126.874443, 64.394264, 71.947136> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 49
sphere {
	<127.027206, 65.113853, 71.348793> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 50
sphere {
	<127.124123, 63.738846, 72.585304> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 51
sphere {
	<126.607040, 64.244583, 71.802277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 52
sphere {
	<127.052635, 64.577942, 71.034500> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 53
sphere {
	<126.553894, 63.906948, 72.686775> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 54
sphere {
	<126.336136, 64.102661, 71.656204> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 55
sphere {
	<127.008682, 63.923134, 71.012291> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 56
sphere {
	<126.000732, 64.251785, 72.530525> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 57
sphere {
	<126.062805, 63.979366, 71.498749> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 58
sphere {
	<126.716599, 63.368931, 71.183937> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 59
sphere {
	<125.672180, 64.572754, 72.126823> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 60
sphere {
	<125.792885, 63.876091, 71.322174> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 61
sphere {
	<126.212997, 63.041309, 71.482864> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 62
sphere {
	<125.553375, 64.771103, 71.524033> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 63
sphere {
	<125.530136, 63.779633, 71.130943> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 64
sphere {
	<125.653076, 63.006447, 71.665955> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 65
sphere {
	<125.560226, 64.708458, 70.942398> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 66
sphere {
	<125.270012, 63.679405, 70.938110> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 67
sphere {
	<125.062439, 63.260025, 71.762848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 68
sphere {
	<125.643112, 64.354713, 70.386810> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 69
sphere {
	<125.010147, 63.572563, 70.748466> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 70
sphere {
	<124.593040, 63.676670, 71.593651> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 71
sphere {
	<125.646561, 63.769394, 70.073616> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 72
sphere {
	<124.747620, 63.458763, 70.566803> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 73
sphere {
	<124.318069, 64.072754, 71.147896> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 74
sphere {
	<125.470032, 63.123062, 70.052414> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 75
sphere {
	<124.478668, 63.336014, 70.401390> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 76
sphere {
	<124.198959, 64.229347, 70.552780> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 77
sphere {
	<125.112350, 62.648445, 70.243736> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 78
sphere {
	<124.199081, 63.207039, 70.260330> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 79
sphere {
	<124.175491, 64.082535, 69.896828> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 80
sphere {
	<124.620087, 62.425591, 70.593903> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 81
sphere {
	<123.910973, 63.077557, 70.137390> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 82
sphere {
	<124.146332, 63.668339, 69.434006> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 83
sphere {
	<124.084473, 62.492180, 70.862930> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 84
sphere {
	<123.618866, 62.955368, 70.016479> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 85
sphere {
	<124.124458, 63.048019, 69.219635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 86
sphere {
	<123.496681, 62.803932, 70.944550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 87
sphere {
	<123.322021, 62.853870, 69.888916> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 88
sphere {
	<123.915176, 62.414738, 69.293518> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 89
sphere {
	<123.053192, 63.217255, 70.722496> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 90
sphere {
	<123.020950, 62.770164, 69.757530> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 91
sphere {
	<123.507919, 61.974834, 69.585800> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 92
sphere {
	<122.806580, 63.561001, 70.234818> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 93
sphere {
	<122.718552, 62.693596, 69.624969> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 94
sphere {
	<122.974289, 61.845982, 69.964539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 95
sphere {
	<122.700928, 63.641411, 69.602974> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 96
sphere {
	<122.418167, 62.617138, 69.487694> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 97
sphere {
	<122.442001, 62.011269, 70.216766> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 98
sphere {
	<122.619949, 63.425106, 69.034225> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 99
sphere {
	<122.127289, 62.526917, 69.339516> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 100
sphere {
	<121.899940, 62.367889, 70.246284> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 101
sphere {
	<122.576248, 62.968082, 68.630302> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 102
sphere {
	<121.849434, 62.412544, 69.183258> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 103
sphere {
	<121.456520, 62.757084, 69.974518> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 104
sphere {
	<122.490326, 62.380322, 68.485107> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 105
sphere {
	<121.579796, 62.271755, 69.034447> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 106
sphere {
	<121.161331, 63.011536, 69.454910> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 107
sphere {
	<122.294357, 61.814800, 68.610519> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 108
sphere {
	<121.310745, 62.111000, 68.906082> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 109
sphere {
	<121.015053, 63.008041, 68.822014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 110
sphere {
	<121.956726, 61.417221, 68.929649> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 111
sphere {
	<121.034637, 61.943241, 68.804535> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 112
sphere {
	<120.969887, 62.708031, 68.247711> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 113
sphere {
	<121.492096, 61.278214, 69.302139> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 114
sphere {
	<120.745537, 61.785591, 68.725540> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 115
sphere {
	<120.971771, 62.147503, 67.878769> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 116
sphere {
	<120.928650, 61.422642, 69.582214> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 117
sphere {
	<120.447289, 61.639137, 68.658371> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 118
sphere {
	<120.899780, 61.485634, 67.839310> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 119
sphere {
	<120.386452, 61.772877, 69.595161> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 120
sphere {
	<120.145821, 61.497162, 68.596046> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 121
sphere {
	<120.713020, 60.908199, 68.115891> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 122
sphere {
	<119.928558, 62.108437, 69.287674> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 123
sphere {
	<119.841187, 61.361748, 68.534714> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 124
sphere {
	<120.369789, 60.575882, 68.581223> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 125
sphere {
	<119.611923, 62.257492, 68.745094> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 126
sphere {
	<119.534500, 61.232582, 68.470032> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 127
sphere {
	<119.885139, 60.560047, 69.039146> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 128
sphere {
	<119.442131, 62.116146, 68.138428> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 129
sphere {
	<119.228500, 61.104385, 68.400665> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 130
sphere {
	<119.375946, 60.751068, 69.268173> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 131
sphere {
	<119.319588, 61.742558, 67.705246> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 132
sphere {
	<118.925720, 60.968296, 68.332291> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 133
sphere {
	<118.846100, 61.138912, 69.261650> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 134
sphere {
	<119.244972, 61.125832, 67.453407> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 135
sphere {
	<118.631111, 60.812973, 68.270676> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 136
sphere {
	<118.353302, 61.419338, 68.944717> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 137
sphere {
	<119.157578, 60.526268, 67.535957> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 138
sphere {
	<118.345322, 60.636917, 68.225471> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 139
sphere {
	<117.983353, 61.497681, 68.390411> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 140
sphere {
	<118.995247, 60.023933, 67.907600> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 141
sphere {
	<118.063393, 60.450272, 68.205200> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 142
sphere {
	<117.741913, 61.264206, 67.839943> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 143
sphere {
	<118.719406, 59.791836, 68.392860> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 144
sphere {
	<117.782639, 60.260387, 68.204208> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 145
sphere {
	<117.649651, 60.751347, 67.403938> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 146
sphere {
	<118.299103, 59.841469, 68.880188> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 147
sphere {
	<117.501694, 60.070923, 68.214111> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 148
sphere {
	<117.656151, 60.096275, 67.278900> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 149
sphere {
	<117.754402, 60.083832, 69.127975> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 150
sphere {
	<117.218803, 59.884628, 68.227142> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 151
sphere {
	<117.627625, 59.531559, 67.447807> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 152
sphere {
	<117.208572, 60.289856, 69.084381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 153
sphere {
	<116.931534, 59.704990, 68.234169> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 154
sphere {
	<117.540497, 59.042831, 67.934402> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 155
sphere {
	<116.673523, 60.483952, 68.709366> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 156
sphere {
	<116.641968, 59.528755, 68.230812> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 157
sphere {
	<117.265144, 58.846596, 68.444260> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 158
sphere {
	<116.309280, 60.416664, 68.219810> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 159
sphere {
	<116.357468, 59.346600, 68.207748> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 160
sphere {
	<116.791763, 58.880810, 68.910324> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 161
sphere {
	<116.135162, 60.109680, 67.690605> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 162
sphere {
	<116.079628, 59.157742, 68.163277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 163
sphere {
	<116.174477, 59.088257, 69.104195> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 164
sphere {
	<116.163971, 59.582291, 67.319550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 165
sphere {
	<115.806343, 58.963306, 68.114151> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 166
sphere {
	<115.622437, 59.317711, 68.974228> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 167
sphere {
	<116.176003, 58.973579, 67.240982> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 168
sphere {
	<115.543045, 58.754070, 68.073936> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 169
sphere {
	<115.124756, 59.441498, 68.575569> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 170
sphere {
	<116.166931, 58.400307, 67.453598> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 171
sphere {
	<115.290520, 58.529251, 68.055923> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 172
sphere {
	<114.793579, 59.335484, 68.008453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 173
sphere {
	<116.046463, 57.975403, 67.911423> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 174
sphere {
	<115.043076, 58.297638, 68.059685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 175
sphere {
	<114.658157, 58.937195, 67.474861> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 176
sphere {
	<115.757233, 57.826828, 68.468994> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 177
sphere {
	<114.798180, 58.063744, 68.073875> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 178
sphere {
	<114.711823, 58.345200, 67.172440> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 179
sphere {
	<115.265999, 57.897926, 68.881836> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 180
sphere {
	<114.552567, 57.831032, 68.095230> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 181
sphere {
	<114.841003, 57.691605, 67.202759> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 182
sphere {
	<114.658554, 58.079350, 69.004227> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 183
sphere {
	<114.297760, 57.608822, 68.116966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 184
sphere {
	<114.871361, 57.135906, 67.528320> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 185
sphere {
	<114.095566, 58.206665, 68.824722> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 186
sphere {
	<114.031517, 57.399567, 68.121651> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 187
sphere {
	<114.738144, 56.773022, 68.036156> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 188
sphere {
	<113.630768, 58.209805, 68.408173> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 189
sphere {
	<113.759903, 57.197445, 68.106262> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 190
sphere {
	<114.356133, 56.632687, 68.580276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 191
sphere {
	<113.398819, 58.030609, 67.833160> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 192
sphere {
	<113.485809, 56.999577, 68.081100> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 193
sphere {
	<113.803101, 56.741768, 68.936707> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 194
sphere {
	<113.355690, 57.597252, 67.356522> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 195
sphere {
	<113.212379, 56.801937, 68.048645> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 196
sphere {
	<113.182213, 56.981491, 68.979240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 197
sphere {
	<113.418396, 56.991333, 67.142616> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 198
sphere {
	<112.947510, 56.593571, 68.013710> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 199
sphere {
	<112.621574, 57.149921, 68.709000> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 200
sphere {
	<113.454704, 56.395393, 67.237411> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 201
sphere {
	<112.691498, 56.373550, 67.982864> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 202
sphere {
	<112.218658, 57.163490, 68.209976> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 203
sphere {
	<113.404327, 55.877628, 67.601913> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 204
sphere {
	<112.436607, 56.150986, 67.971138> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 205
sphere {
	<111.996582, 56.919571, 67.632332> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 206
sphere {
	<113.179207, 55.579563, 68.116867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 207
sphere {
	<112.176041, 55.935287, 67.987129> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 208
sphere {
	<111.934204, 56.436829, 67.219559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 209
sphere {
	<112.781860, 55.533478, 68.595917> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 210
sphere {
	<111.907852, 55.729900, 68.016045> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 211
sphere {
	<111.965179, 55.812958, 67.073181> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 212
sphere {
	<112.251320, 55.706161, 68.899582> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 213
sphere {
	<111.628738, 55.540306, 68.043854> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 214
sphere {
	<111.996185, 55.172665, 67.250748> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 215
sphere {
	<111.663895, 55.950241, 68.898178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 216
sphere {
	<111.335312, 55.371735, 68.057297> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 217
sphere {
	<111.894974, 54.707821, 67.676254> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 218
sphere {
	<111.139740, 56.120502, 68.605240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 219
sphere {
	<111.034325, 55.215919, 68.054558> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 220
sphere {
	<111.598221, 54.476971, 68.242226> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 221
sphere {
	<110.780792, 56.129520, 68.068863> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 222
sphere {
	<110.729980, 55.067055, 68.044128> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 223
sphere {
	<111.145592, 54.555351, 68.725739> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 224
sphere {
	<110.578209, 55.846134, 67.525360> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 225
sphere {
	<110.425827, 54.918064, 68.028793> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 226
sphere {
	<110.644562, 54.780750, 68.941231> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 227
sphere {
	<110.443825, 55.378677, 67.200172> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 228
sphere {
	<110.126335, 54.760303, 68.011726> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 229
sphere {
	<110.063232, 55.155453, 68.871399> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 230
sphere {
	<110.416405, 54.703564, 67.110718> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 231
sphere {
	<109.831619, 54.593418, 67.998627> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 232
sphere {
	<109.591103, 55.341324, 68.529633> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 233
sphere {
	<110.323822, 54.137150, 67.328751> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 234
sphere {
	<109.541206, 54.419155, 68.003586> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 235
sphere {
	<109.201149, 55.304153, 67.984741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 236
sphere {
	<110.167297, 53.734291, 67.808311> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 237
sphere {
	<109.252884, 54.242676, 68.026894> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 238
sphere {
	<108.966080, 54.988548, 67.516365> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 239
sphere {
	<109.879395, 53.600365, 68.333679> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 240
sphere {
	<108.958786, 54.078064, 68.061211> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 241
sphere {
	<108.846588, 54.460411, 67.200706> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 242
sphere {
	<109.454498, 53.706047, 68.778793> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 243
sphere {
	<108.654297, 53.936493, 68.105820> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 244
sphere {
	<108.765320, 53.793198, 67.175072> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 245
sphere {
	<108.949036, 54.036911, 69.001511> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 246
sphere {
	<108.341980, 53.814980, 68.156021> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 247
sphere {
	<108.649368, 53.206284, 67.497116> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 248
sphere {
	<108.437820, 54.413479, 68.885216> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 249
sphere {
	<108.026077, 53.703560, 68.208099> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 250
sphere {
	<108.472115, 52.881481, 68.052032> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 251
sphere {
	<107.959549, 54.604652, 68.495941> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 252
sphere {
	<107.707581, 53.598755, 68.257790> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 253
sphere {
	<108.185852, 52.882397, 68.654381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 254
sphere {
	<107.571716, 54.498444, 67.990898> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 255
sphere {
	<107.386978, 53.497730, 68.301682> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 256
sphere {
	<107.779343, 53.167835, 69.099419> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 257
sphere {
	<107.299980, 54.092751, 67.568497> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 258
sphere {
	<107.067146, 53.392998, 68.342163> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 259
sphere {
	<107.321083, 53.547050, 69.242668> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 260
sphere {
	<107.088501, 53.539925, 67.405640> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 261
sphere {
	<106.754738, 53.270180, 68.387070> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 262
sphere {
	<106.780563, 53.911934, 69.084694> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 263
sphere {
	<106.973755, 52.917770, 67.534409> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 264
sphere {
	<106.449554, 53.132759, 68.440727> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 265
sphere {
	<106.297813, 54.024193, 68.726105> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 266
sphere {
	<106.860695, 52.454498, 67.920982> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 267
sphere {
	<106.150566, 52.991032, 68.512985> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 268
sphere {
	<105.860504, 53.861664, 68.274109> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 269
sphere {
	<106.718460, 52.232754, 68.472809> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 270
sphere {
	<105.857155, 52.854088, 68.612122> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 271
sphere {
	<105.551102, 53.399158, 67.899117> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 272
sphere {
	<106.482887, 52.307594, 69.069214> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 273
sphere {
	<105.564163, 52.727146, 68.725830> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 274
sphere {
	<105.360229, 52.848289, 67.807693> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 275
sphere {
	<106.133499, 52.559196, 69.465302> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 276
sphere {
	<105.267822, 52.609531, 68.840874> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 277
sphere {
	<105.305756, 52.181225, 67.995728> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 278
sphere {
	<105.632721, 52.991920, 69.628181> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 279
sphere {
	<104.967964, 52.502312, 68.957008> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 280
sphere {
	<105.252441, 51.730881, 68.484673> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 281
sphere {
	<105.091209, 53.298828, 69.456482> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 282
sphere {
	<104.665680, 52.402039, 69.073303> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 283
sphere {
	<105.146988, 51.586800, 69.127319> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 284
sphere {
	<104.568619, 53.345287, 69.080338> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 285
sphere {
	<104.361687, 52.301872, 69.184814> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 286
sphere {
	<104.932549, 51.730713, 69.681915> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 287
sphere {
	<104.129181, 53.100105, 68.728653> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 288
sphere {
	<104.058929, 52.186493, 69.283371> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 289
sphere {
	<104.542923, 52.090393, 70.093193> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 290
sphere {
	<103.843788, 52.590717, 68.453133> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 291
sphere {
	<103.760101, 52.054695, 69.374023> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 292
sphere {
	<104.046158, 52.432617, 70.195267> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 293
sphere {
	<103.701714, 51.993980, 68.429512> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 294
sphere {
	<103.471375, 51.907330, 69.472031> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 295
sphere {
	<103.451096, 52.684750, 70.014587> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 296
sphere {
	<103.683395, 51.405987, 68.695572> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 297
sphere {
	<103.192322, 51.748569, 69.580956> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 298
sphere {
	<102.935814, 52.655399, 69.686180> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 299
sphere {
	<103.660629, 51.028542, 69.179161> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 300
sphere {
	<102.921257, 51.590630, 69.708305> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 301
sphere {
	<102.497925, 52.345158, 69.320175> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 302
sphere {
	<103.585831, 50.917599, 69.775856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 303
sphere {
	<102.658264, 51.441959, 69.861389> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 304
sphere {
	<102.218010, 51.801056, 69.102234> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 305
sphere {
	<103.391579, 51.071533, 70.334854> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 306
sphere {
	<102.395432, 51.314980, 70.033142> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 307
sphere {
	<102.093475, 51.165100, 69.146843> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 308
sphere {
	<103.047379, 51.403484, 70.716019> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 309
sphere {
	<102.123497, 51.214142, 70.208092> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 310
sphere {
	<102.099503, 50.590874, 69.493904> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 311
sphere {
	<102.544281, 51.791054, 70.832031> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 312
sphere {
	<101.841896, 51.127308, 70.375481> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 313
sphere {
	<102.108902, 50.287567, 70.025146> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 314
sphere {
	<101.982239, 52.004303, 70.707611> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 315
sphere {
	<101.550194, 51.043568, 70.525909> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 316
sphere {
	<102.038406, 50.243439, 70.669342> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 317
sphere {
	<101.447105, 51.979397, 70.412636> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 318
sphere {
	<101.248413, 50.954201, 70.650925> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 319
sphere {
	<101.818375, 50.492836, 71.252190> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 320
sphere {
	<101.006775, 51.659676, 70.065208> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 321
sphere {
	<100.942719, 50.856255, 70.759827> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 322
sphere {
	<101.409576, 50.902214, 71.583954> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 323
sphere {
	<100.755585, 51.100471, 69.862900> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 324
sphere {
	<100.635788, 50.755173, 70.862228> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 325
sphere {
	<100.882652, 51.310959, 71.589790> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 326
sphere {
	<100.636536, 50.472843, 69.956963> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 327
sphere {
	<100.330750, 50.649601, 70.965759> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 328
sphere {
	<100.359840, 51.517029, 71.347748> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 329
sphere {
	<100.537750, 49.987396, 70.319412> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 330
sphere {
	<100.034714, 50.537174, 71.085785> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 331
sphere {
	<99.825836, 51.456364, 70.983032> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 332
sphere {
	<100.475319, 49.726089, 70.868706> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 333
sphere {
	<99.751022, 50.423393, 71.231621> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 334
sphere {
	<99.383949, 51.095547, 70.672485> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 335
sphere {
	<100.374313, 49.750191, 71.471359> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 336
sphere {
	<99.473633, 50.325546, 71.399445> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 337
sphere {
	<99.096069, 50.502304, 70.547783> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 338
sphere {
	<100.158905, 50.056644, 71.997185> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 339
sphere {
	<99.196449, 50.251961, 71.579758> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 340
sphere {
	<98.933578, 49.907581, 70.736282> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 341
sphere {
	<99.816330, 50.479649, 72.260185> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 342
sphere {
	<98.917725, 50.197338, 71.764755> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 343
sphere {
	<98.901131, 49.425575, 71.214081> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 344
sphere {
	<99.331833, 50.905609, 72.240250> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 345
sphere {
	<98.637360, 50.153587, 71.950089> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 346
sphere {
	<98.922058, 49.253716, 71.858185> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 347
sphere {
	<98.758797, 51.092140, 72.008514> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 348
sphere {
	<98.349510, 50.113468, 72.124222> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 349
sphere {
	<98.853928, 49.395432, 72.483459> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 350
sphere {
	<98.228592, 50.973545, 71.743622> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 351
sphere {
	<98.054268, 50.070801, 72.285324> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 352
sphere {
	<98.662979, 49.786781, 72.954590> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 353
sphere {
	<97.779022, 50.577484, 71.532509> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 354
sphere {
	<97.759689, 50.009747, 72.440720> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 355
sphere {
	<98.282021, 50.281406, 73.184082> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 356
sphere {
	<97.496231, 50.007633, 71.529831> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 357
sphere {
	<97.467491, 49.926056, 72.590599> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 358
sphere {
	<97.722115, 50.662655, 73.130768> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 359
sphere {
	<97.427521, 49.420639, 71.789276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 360
sphere {
	<97.178642, 49.834808, 72.742661> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 361
sphere {
	<97.170631, 50.771614, 72.889275> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 362
sphere {
	<97.388786, 49.040287, 72.269623> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 363
sphere {
	<96.900299, 49.741608, 72.911621> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 364
sphere {
	<96.618988, 50.591076, 72.597816> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 365
sphere {
	<97.382675, 48.926338, 72.870308> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 366
sphere {
	<96.634758, 49.656708, 73.103844> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 367
sphere {
	<96.189598, 50.113815, 72.402397> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 368
sphere {
	<97.319366, 49.120987, 73.482613> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 369
sphere {
	<96.376221, 49.582104, 73.310059> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 370
sphere {
	<95.951477, 49.494236, 72.466766> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 371
sphere {
	<97.110367, 49.557632, 73.909760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 372
sphere {
	<96.117569, 49.520966, 73.520126> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 373
sphere {
	<95.878410, 48.948799, 72.802742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 374
sphere {
	<96.721161, 49.985897, 74.084702> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 375
sphere {
	<95.848358, 49.479904, 73.721436> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 376
sphere {
	<95.911842, 48.612286, 73.344101> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 377
sphere {
	<96.187752, 50.306637, 74.038513> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 378
sphere {
	<95.568665, 49.446949, 73.910156> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 379
sphere {
	<95.934952, 48.575493, 73.984131> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 380
sphere {
	<95.604340, 50.388210, 73.800827> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 381
sphere {
	<95.280922, 49.407238, 74.084236> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 382
sphere {
	<95.857635, 48.850792, 74.591217> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 383
sphere {
	<95.066444, 50.149872, 73.535164> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 384
sphere {
	<94.984390, 49.351315, 74.238174> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 385
sphere {
	<95.566940, 49.273060, 74.982262> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 386
sphere {
	<94.706268, 49.684891, 73.395248> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 387
sphere {
	<94.689514, 49.272243, 74.384827> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 388
sphere {
	<95.122597, 49.714981, 75.102875> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 389
sphere {
	<94.489693, 49.104816, 73.473122> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 390
sphere {
	<94.400833, 49.172203, 74.531502> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 391
sphere {
	<94.523819, 50.005730, 74.966530> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 392
sphere {
	<94.478516, 48.556934, 73.814140> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 393
sphere {
	<94.115593, 49.061722, 74.677605> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 394
sphere {
	<93.939728, 49.992920, 74.644867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 395
sphere {
	<94.503952, 48.249077, 74.381050> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 396
sphere {
	<93.837921, 48.948345, 74.835075> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 397
sphere {
	<93.462280, 49.673065, 74.352463> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 398
sphere {
	<94.448952, 48.238499, 74.982964> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 399
sphere {
	<93.569458, 48.837254, 75.009613> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 400
sphere {
	<93.143623, 49.092220, 74.201630> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 401
sphere {
	<94.290466, 48.523750, 75.539856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 402
sphere {
	<93.303680, 48.739277, 75.195450> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 403
sphere {
	<93.001617, 48.477692, 74.335526> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 404
sphere {
	<93.955444, 48.909626, 75.862816> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 405
sphere {
	<93.035568, 48.655762, 75.385300> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 406
sphere {
	<93.007271, 47.971416, 74.729538> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 407
sphere {
	<93.458542, 49.297634, 75.940460> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 408
sphere {
	<92.757233, 48.581322, 75.563217> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 409
sphere {
	<93.051056, 47.706623, 75.344589> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 410
sphere {
	<92.870262, 49.500130, 75.768234> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 411
sphere {
	<92.468567, 48.515697, 75.728455> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 412
sphere {
	<92.994019, 47.776531, 76.005417> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 413
sphere {
	<92.323227, 49.406754, 75.438332> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 414
sphere {
	<92.177765, 48.448608, 75.889236> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 415
sphere {
	<92.807816, 48.086838, 76.498642> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 416
sphere {
	<91.875771, 49.047966, 75.219353> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 417
sphere {
	<91.886978, 48.363808, 76.040649> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 418
sphere {
	<92.426682, 48.513901, 76.805656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 419
sphere {
	<91.604866, 48.504616, 75.146301> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 420
sphere {
	<91.601776, 48.251965, 76.184982> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 421
sphere {
	<91.884071, 48.868511, 76.847664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 422
sphere {
	<91.513519, 47.920120, 75.301010> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 423
sphere {
	<91.330711, 48.116047, 76.335907> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 424
sphere {
	<91.272919, 49.000938, 76.671913> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 425
sphere {
	<91.546700, 47.452526, 75.693764> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 426
sphere {
	<91.077652, 47.967278, 76.504799> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 427
sphere {
	<90.708633, 48.834030, 76.396889> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 428
sphere {
	<91.608597, 47.221813, 76.256683> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 429
sphere {
	<90.839157, 47.822910, 76.697166> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 430
sphere {
	<90.295807, 48.369175, 76.144348> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 431
sphere {
	<91.593536, 47.284920, 76.899033> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 432
sphere {
	<90.608322, 47.686668, 76.904480> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 433
sphere {
	<90.108513, 47.730568, 76.099869> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 434
sphere {
	<91.398567, 47.608402, 77.422699> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 435
sphere {
	<90.380692, 47.553627, 77.117630> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 436
sphere {
	<90.148155, 47.101425, 76.317268> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 437
sphere {
	<90.970352, 47.990643, 77.718033> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 438
sphere {
	<90.146873, 47.433037, 77.331047> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 439
sphere {
	<90.268715, 46.670078, 76.781158> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 440
sphere {
	<90.417282, 48.229622, 77.768570> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 441
sphere {
	<89.902283, 47.324951, 77.539352> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 442
sphere {
	<90.359070, 46.510273, 77.375237> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 443
sphere {
	<89.829712, 48.265221, 77.637817> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 444
sphere {
	<89.650780, 47.216675, 77.739021> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 445
sphere {
	<90.362984, 46.673843, 78.050865> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 446
sphere {
	<89.265533, 47.997887, 77.364243> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 447
sphere {
	<89.396385, 47.101105, 77.930984> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 448
sphere {
	<90.130836, 46.989967, 78.520416> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 449
sphere {
	<88.913986, 47.513798, 77.226532> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 450
sphere {
	<89.145889, 46.967335, 78.115524> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 451
sphere {
	<89.670273, 47.345398, 78.809235> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 452
sphere {
	<88.788246, 46.915459, 77.238899> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 453
sphere {
	<88.908470, 46.809078, 78.297958> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 454
sphere {
	<89.041725, 47.579044, 78.835121> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 455
sphere {
	<88.873451, 46.324238, 77.483688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 456
sphere {
	<88.682846, 46.636543, 78.482864> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 457
sphere {
	<88.401169, 47.524918, 78.657478> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 458
sphere {
	<89.073608, 45.944366, 77.965820> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 459
sphere {
	<88.462059, 46.458458, 78.668449> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 460
sphere {
	<87.906639, 47.171856, 78.382584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 461
sphere {
	<89.183769, 45.847885, 78.594635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 462
sphere {
	<88.243378, 46.282185, 78.858253> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 463
sphere {
	<87.661659, 46.641411, 78.201218> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 464
sphere {
	<89.069641, 45.954128, 79.188393> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 465
sphere {
	<88.022064, 46.122566, 79.058784> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 466
sphere {
	<87.597694, 45.995300, 78.220398> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 467
sphere {
	<88.763824, 46.231819, 79.639290> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 468
sphere {
	<87.790001, 45.987957, 79.265656> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 469
sphere {
	<87.704651, 45.405563, 78.522141> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 470
sphere {
	<88.255508, 46.565243, 79.856667> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 471
sphere {
	<87.541855, 45.874485, 79.466354> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 472
sphere {
	<87.801025, 45.059174, 79.057419> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 473
sphere {
	<87.681778, 46.748798, 79.805405> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 474
sphere {
	<87.283775, 45.769600, 79.659470> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 475
sphere {
	<87.850403, 45.010109, 79.695137> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 476
sphere {
	<87.089424, 46.694592, 79.582733> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 477
sphere {
	<87.018501, 45.656296, 79.836792> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 478
sphere {
	<87.722595, 45.231758, 80.309128> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 479
sphere {
	<86.621292, 46.349075, 79.325409> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 480
sphere {
	<86.746071, 45.531387, 79.995201> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 481
sphere {
	<87.341354, 45.605377, 80.729568> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 482
sphere {
	<86.387337, 45.773220, 79.151321> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 483
sphere {
	<86.474388, 45.399231, 80.148811> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 484
sphere {
	<86.835808, 45.929302, 80.847084> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 485
sphere {
	<86.294395, 45.173809, 79.245590> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 486
sphere {
	<86.213455, 45.257187, 80.311584> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 487
sphere {
	<86.244476, 46.104729, 80.735733> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 488
sphere {
	<86.321350, 44.653011, 79.588806> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 489
sphere {
	<85.963066, 45.112144, 80.488052> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 490
sphere {
	<85.662918, 46.010628, 80.445618> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 491
sphere {
	<86.419838, 44.342503, 80.174622> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 492
sphere {
	<85.721481, 44.976257, 80.682655> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 493
sphere {
	<85.203056, 45.596249, 80.186584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 494
sphere {
	<86.436249, 44.368404, 80.819489> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 495
sphere {
	<85.489838, 44.855064, 80.898018> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 496
sphere {
	<84.938507, 45.009949, 80.142258> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 497
sphere {
	<86.299599, 44.640114, 81.341980> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 498
sphere {
	<85.263123, 44.748028, 81.126068> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 499
sphere {
	<84.898613, 44.361309, 80.340698> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 500
sphere {
	<85.960297, 45.071789, 81.681290> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 501
sphere {
	<85.034180, 44.649067, 81.355667> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 502
sphere {
	<85.007843, 43.919888, 80.749985> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 503
sphere {
	<85.441833, 45.373302, 81.812332> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 504
sphere {
	<84.791367, 44.559204, 81.573944> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 505
sphere {
	<85.128944, 43.701962, 81.349762> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 506
sphere {
	<84.848892, 45.493813, 81.723747> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 507
sphere {
	<84.529648, 44.474792, 81.771622> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 508
sphere {
	<85.129753, 43.775421, 81.995178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 509
sphere {
	<84.294830, 45.354256, 81.505981> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 510
sphere {
	<84.254738, 44.380730, 81.945686> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 511
sphere {
	<84.929901, 44.073597, 82.536438> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 512
sphere {
	<83.881149, 44.957672, 81.292465> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 513
sphere {
	<83.978424, 44.264351, 82.103165> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 514
sphere {
	<84.511490, 44.491356, 82.853813> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 515
sphere {
	<83.662842, 44.355244, 81.213593> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 516
sphere {
	<83.704956, 44.131279, 82.252869> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 517
sphere {
	<83.926178, 44.810246, 82.876678> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 518
sphere {
	<83.662178, 43.734909, 81.392517> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 519
sphere {
	<83.432861, 43.991692, 82.399261> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 520
sphere {
	<83.308578, 44.900105, 82.641449> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 521
sphere {
	<83.736168, 43.282719, 81.847336> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 522
sphere {
	<83.163681, 43.848652, 82.547432> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 523
sphere {
	<82.824051, 44.714100, 82.360687> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 524
sphere {
	<83.713341, 43.090294, 82.399429> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 525
sphere {
	<82.894661, 43.711800, 82.701607> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 526
sphere {
	<82.476006, 44.254463, 82.046249> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 527
sphere {
	<83.587997, 43.168861, 83.053177> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 528
sphere {
	<82.623024, 43.594357, 82.866112> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 529
sphere {
	<82.282448, 43.615181, 81.981415> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 530
sphere {
	<83.297318, 43.498856, 83.525879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 531
sphere {
	<82.347336, 43.494198, 83.036133> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 532
sphere {
	<82.218742, 43.050575, 82.208038> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 533
sphere {
	<82.860069, 43.874088, 83.737503> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 534
sphere {
	<82.062302, 43.409946, 83.198425> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 535
sphere {
	<82.197464, 42.618988, 82.693054> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 536
sphere {
	<82.335182, 44.181915, 83.676651> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 537
sphere {
	<81.764763, 43.337231, 83.343277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 538
sphere {
	<82.155151, 42.474113, 83.301422> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 539
sphere {
	<81.773964, 44.282120, 83.422195> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 540
sphere {
	<81.459641, 43.262054, 83.470222> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 541
sphere {
	<82.001923, 42.653797, 83.955276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 542
sphere {
	<81.273926, 44.070236, 83.010437> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 543
sphere {
	<81.151016, 43.176678, 83.580719> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 544
sphere {
	<81.653580, 43.007359, 84.366745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 545
sphere {
	<80.950645, 43.620960, 82.767281> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 546
sphere {
	<80.845741, 43.069588, 83.680923> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 547
sphere {
	<81.180717, 43.415459, 84.497864> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 548
sphere {
	<80.751564, 43.030121, 82.738190> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 549
sphere {
	<80.547478, 42.941849, 83.778938> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 550
sphere {
	<80.588165, 43.706886, 84.337631> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 551
sphere {
	<80.727142, 42.438721, 82.995453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 552
sphere {
	<80.253258, 42.803909, 83.875320> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 553
sphere {
	<80.042809, 43.725189, 83.954170> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 554
sphere {
	<80.704910, 42.053139, 83.512794> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 555
sphere {
	<79.962486, 42.660091, 83.973869> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 556
sphere {
	<79.629051, 43.426022, 83.525154> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 557
sphere {
	<80.584908, 41.964428, 84.140976> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 558
sphere {
	<79.675415, 42.513065, 84.077965> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 559
sphere {
	<79.391617, 42.868721, 83.246017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 560
sphere {
	<80.304848, 42.155479, 84.690453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 561
sphere {
	<79.387596, 42.369839, 84.185432> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 562
sphere {
	<79.301796, 42.263615, 83.246979> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 563
sphere {
	<79.863190, 42.446369, 85.002174> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 564
sphere {
	<79.091125, 42.244572, 84.290894> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 565
sphere {
	<79.240974, 41.686546, 83.539032> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 566
sphere {
	<79.349861, 42.777370, 85.031456> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 567
sphere {
	<78.782280, 42.142559, 84.385262> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 568
sphere {
	<79.130035, 41.320858, 84.064346> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 569
sphere {
	<78.834084, 42.999062, 84.788933> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 570
sphere {
	<78.463371, 42.053310, 84.456123> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 571
sphere {
	<78.906441, 41.242455, 84.669121> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 572
sphere {
	<78.386086, 42.994720, 84.372780> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 573
sphere {
	<78.141563, 41.958817, 84.503441> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 574
sphere {
	<78.576630, 41.437256, 85.165108> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 575
sphere {
	<78.023361, 42.717484, 83.946869> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 576
sphere {
	<77.824341, 41.843933, 84.533211> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 577
sphere {
	<78.093643, 41.814816, 85.441917> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 578
sphere {
	<77.819550, 42.184692, 83.648315> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 579
sphere {
	<77.512596, 41.712349, 84.553329> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 580
sphere {
	<77.569382, 42.145832, 85.394775> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 581
sphere {
	<77.707207, 41.592316, 83.633057> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 582
sphere {
	<77.203911, 41.574776, 84.578636> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 583
sphere {
	<77.078674, 42.395401, 85.036942> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 584
sphere {
	<77.593719, 41.002556, 83.930824> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 585
sphere {
	<76.901161, 41.429848, 84.623833> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 586
sphere {
	<76.635452, 42.338284, 84.565521> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 587
sphere {
	<77.446884, 40.679398, 84.428741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 588
sphere {
	<76.604179, 41.283955, 84.696335> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 589
sphere {
	<76.311691, 41.968311, 84.108727> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 590
sphere {
	<77.215363, 40.640427, 85.030106> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 591
sphere {
	<76.308350, 41.150238, 84.793198> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 592
sphere {
	<76.087181, 41.399200, 83.905350> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 593
sphere {
	<76.888023, 40.863480, 85.486725> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 594
sphere {
	<76.011368, 41.027275, 84.900757> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 595
sphere {
	<75.988342, 40.770729, 83.988152> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 596
sphere {
	<76.431274, 41.235054, 85.725136> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 597
sphere {
	<75.706734, 40.919518, 85.002151> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 598
sphere {
	<75.926651, 40.233559, 84.385529> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 599
sphere {
	<75.894638, 41.586094, 85.649879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 600
sphere {
	<75.394196, 40.823959, 85.091995> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 601
sphere {
	<75.799217, 39.982384, 84.928627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 602
sphere {
	<75.381477, 41.736744, 85.348648> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 603
sphere {
	<75.078751, 40.724461, 85.165398> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 604
sphere {
	<75.577942, 39.997906, 85.514885> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 605
sphere {
	<74.928452, 41.631218, 84.932137> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 606
sphere {
	<74.764038, 40.613842, 85.225189> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 607
sphere {
	<75.223297, 40.285290, 85.986954> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 608
sphere {
	<74.600128, 41.221268, 84.515671> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 609
sphere {
	<74.455383, 40.484127, 85.276237> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 610
sphere {
	<74.712921, 40.639946, 86.175385> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 611
sphere {
	<74.440521, 40.656433, 84.343857> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 612
sphere {
	<74.157860, 40.328686, 85.321228> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 613
sphere {
	<74.140076, 40.923534, 86.059563> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 614
sphere {
	<74.386963, 40.055389, 84.442619> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 615
sphere {
	<73.875122, 40.151466, 85.378754> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 616
sphere {
	<73.596626, 41.004723, 85.684593> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 617
sphere {
	<74.365173, 39.552147, 84.831215> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 618
sphere {
	<73.603798, 39.966778, 85.462021> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 619
sphere {
	<73.187836, 40.790604, 85.243797> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 620
sphere {
	<74.266914, 39.292801, 85.390320> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 621
sphere {
	<73.338791, 39.782982, 85.566338> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 622
sphere {
	<72.927101, 40.283607, 84.874062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 623
sphere {
	<74.060951, 39.347298, 85.999573> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 624
sphere {
	<73.074753, 39.607597, 85.685905> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 625
sphere {
	<72.832993, 39.654259, 84.770157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 626
sphere {
	<73.680664, 39.568195, 86.414284> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 627
sphere {
	<72.800896, 39.453365, 85.812019> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 628
sphere {
	<72.847351, 39.044357, 84.957825> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 629
sphere {
	<73.157234, 39.857754, 86.592285> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 630
sphere {
	<72.517120, 39.313831, 85.934113> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 631
sphere {
	<72.857841, 38.596054, 85.416580> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 632
sphere {
	<72.580750, 40.094273, 86.469040> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 633
sphere {
	<72.225266, 39.179092, 86.040733> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 634
sphere {
	<72.777222, 38.408092, 86.055733> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 635
sphere {
	<72.041298, 40.106377, 86.114525> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 636
sphere {
	<71.925644, 39.048828, 86.130951> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 637
sphere {
	<72.507500, 38.515228, 86.656181> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 638
sphere {
	<71.660278, 39.833927, 85.670113> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 639
sphere {
	<71.623222, 38.920597, 86.214775> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 640
sphere {
	<72.075752, 38.843369, 87.044418> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 641
sphere {
	<71.437851, 39.307884, 85.369209> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 642
sphere {
	<71.321991, 38.788036, 86.295944> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 643
sphere {
	<71.572777, 39.183285, 87.120659> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 644
sphere {
	<71.301216, 38.709591, 85.351265> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 645
sphere {
	<71.030540, 38.639080, 86.382904> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 646
sphere {
	<70.989815, 39.405365, 86.939972> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 647
sphere {
	<71.270370, 38.153828, 85.604317> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 648
sphere {
	<70.754570, 38.471493, 86.485077> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 649
sphere {
	<70.446304, 39.362427, 86.586891> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 650
sphere {
	<71.264771, 37.778408, 86.086967> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 651
sphere {
	<70.492386, 38.298523, 86.611771> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 652
sphere {
	<70.028343, 39.026794, 86.219994> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 653
sphere {
	<71.193962, 37.664806, 86.683624> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 654
sphere {
	<70.236244, 38.137817, 86.764114> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 655
sphere {
	<69.791847, 38.450420, 85.986954> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 656
sphere {
	<70.979492, 37.822269, 87.261459> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 657
sphere {
	<69.980072, 37.992069, 86.931641> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 658
sphere {
	<69.709335, 37.836128, 86.036339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 659
sphere {
	<70.608696, 38.123802, 87.629265> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 660
sphere {
	<69.719116, 37.853146, 87.097198> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 661
sphere {
	<69.799156, 37.268776, 86.354691> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 662
sphere {
	<70.039551, 38.454346, 87.756760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 663
sphere {
	<69.444717, 37.725376, 87.249352> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 664
sphere {
	<69.822884, 36.926361, 86.906136> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 665
sphere {
	<69.467957, 38.605694, 87.601006> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 666
sphere {
	<69.155106, 37.607784, 87.379593> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 667
sphere {
	<69.717407, 36.862225, 87.543800> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 668
sphere {
	<68.958221, 38.529224, 87.271988> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 669
sphere {
	<68.856422, 37.486259, 87.482986> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 670
sphere {
	<69.428902, 37.044647, 88.096436> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 671
sphere {
	<68.588974, 38.197102, 86.915215> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 672
sphere {
	<68.559402, 37.345455, 87.564430> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 673
sphere {
	<68.960426, 37.385979, 88.422699> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 674
sphere {
	<68.391640, 37.640297, 86.678925> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 675
sphere {
	<68.268410, 37.185974, 87.633415> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 676
sphere {
	<68.360268, 37.704609, 88.421844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 677
sphere {
	<68.381340, 36.995743, 86.711334> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 678
sphere {
	<67.981079, 37.017700, 87.696877> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 679
sphere {
	<67.786880, 37.847553, 88.112610> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 680
sphere {
	<68.395409, 36.451820, 87.058762> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 681
sphere {
	<67.697456, 36.843060, 87.760048> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 682
sphere {
	<67.337990, 37.712086, 87.638428> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 683
sphere {
	<68.323761, 36.144585, 87.622070> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 684
sphere {
	<67.416054, 36.666302, 87.826935> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 685
sphere {
	<67.068962, 37.344833, 87.262848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 686
sphere {
	<68.082924, 36.074883, 88.150604> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 687
sphere {
	<67.131226, 36.496647, 87.897247> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 688
sphere {
	<66.977364, 36.751411, 86.996887> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 689
sphere {
	<67.664009, 36.252743, 88.642799> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 690
sphere {
	<66.835846, 36.347778, 87.969917> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 691
sphere {
	<66.927567, 36.091290, 87.061569> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 692
sphere {
	<67.150345, 36.575001, 88.835190> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 693
sphere {
	<66.527565, 36.224064, 88.035934> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 694
sphere {
	<66.844116, 35.572601, 87.423965> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 695
sphere {
	<66.613762, 36.872868, 88.722061> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 696
sphere {
	<66.209732, 36.115475, 88.079514> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 697
sphere {
	<66.657455, 35.287640, 87.963730> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 698
sphere {
	<66.131798, 37.019917, 88.353745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 699
sphere {
	<65.888344, 36.010937, 88.105743> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 700
sphere {
	<66.342606, 35.290504, 88.522614> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 701
sphere {
	<65.765091, 36.914585, 87.845978> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 702
sphere {
	<65.569878, 35.896545, 88.120865> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 703
sphere {
	<65.924889, 35.533577, 88.921776> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 704
sphere {
	<65.494629, 36.538666, 87.427132> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 705
sphere {
	<65.257065, 35.766121, 88.126144> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 706
sphere {
	<65.382080, 35.949116, 89.048119> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 707
sphere {
	<65.382484, 35.907005, 87.196854> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 708
sphere {
	<64.952538, 35.617847, 88.129684> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 709
sphere {
	<64.839302, 36.231014, 88.844162> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 710
sphere {
	<65.305801, 35.316849, 87.302773> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 711
sphere {
	<64.656830, 35.452263, 88.135460> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 712
sphere {
	<64.360672, 36.321911, 88.370430> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 713
sphere {
	<65.224632, 34.822891, 87.710388> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 714
sphere {
	<64.366394, 35.277763, 88.144669> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 715
sphere {
	<64.053238, 36.110867, 87.817497> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 716
sphere {
	<65.005783, 34.589046, 88.270844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 717
sphere {
	<64.075745, 35.103817, 88.158958> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 718
sphere {
	<63.909351, 35.670994, 87.417419> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 719
sphere {
	<64.617416, 34.593117, 88.746376> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 720
sphere {
	<63.778160, 34.944313, 88.185036> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 721
sphere {
	<63.819012, 35.051601, 87.243828> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 722
sphere {
	<64.139900, 34.820908, 89.052933> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 723
sphere {
	<63.469486, 34.809517, 88.220360> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 724
sphere {
	<63.715916, 34.426788, 87.388550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 725
sphere {
	<63.629261, 35.155529, 89.088692> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 726
sphere {
	<63.150471, 34.698917, 88.246391> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 727
sphere {
	<63.551109, 33.947758, 87.828644> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 728
sphere {
	<63.131428, 35.459663, 88.812164> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 729
sphere {
	<62.825893, 34.602242, 88.261177> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 730
sphere {
	<63.257370, 33.769413, 88.400162> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 731
sphere {
	<62.744923, 35.546158, 88.302269> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 732
sphere {
	<62.499485, 34.511299, 88.271667> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 733
sphere {
	<62.861801, 33.917675, 88.916351> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 734
sphere {
	<62.456280, 35.316402, 87.772507> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 735
sphere {
	<62.173729, 34.417885, 88.277763> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 736
sphere {
	<62.424030, 34.255657, 89.177856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 737
sphere {
	<62.215904, 34.859798, 87.439850> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 738
sphere {
	<61.854126, 34.305851, 88.279488> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 739
sphere {
	<61.907234, 34.648808, 89.161888> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 740
sphere {
	<62.064751, 34.273346, 87.355492> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 741
sphere {
	<61.544670, 34.168411, 88.286003> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 742
sphere {
	<61.396900, 34.930927, 88.829857> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 743
sphere {
	<61.951897, 33.679653, 87.582748> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 744
sphere {
	<61.245037, 34.012142, 88.309769> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 745
sphere {
	<60.958092, 34.914696, 88.357765> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 746
sphere {
	<61.812534, 33.303810, 88.035271> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 747
sphere {
	<60.949955, 33.849495, 88.346451> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 748
sphere {
	<60.668945, 34.618317, 87.867752> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 749
sphere {
	<61.563198, 33.174061, 88.604973> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 750
sphere {
	<60.653004, 33.695328, 88.399170> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 751
sphere {
	<60.482643, 34.082901, 87.550591> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 752
sphere {
	<61.194164, 33.307106, 89.074059> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 753
sphere {
	<60.349808, 33.562199, 88.470284> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 754
sphere {
	<60.357910, 33.445789, 87.529175> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 755
sphere {
	<60.739861, 33.624649, 89.332336> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 756
sphere {
	<60.037102, 33.455746, 88.544785> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 757
sphere {
	<60.232883, 32.878014, 87.818855> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 758
sphere {
	<60.246559, 33.984848, 89.303284> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 759
sphere {
	<59.714386, 33.372089, 88.604187> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 760
sphere {
	<60.058403, 32.524387, 88.354584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 761
sphere {
	<59.757511, 34.239105, 88.985664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 762
sphere {
	<59.386497, 33.297550, 88.647270> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 763
sphere {
	<59.790344, 32.489777, 88.936378> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 764
sphere {
	<59.342865, 34.233978, 88.504585> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 765
sphere {
	<59.058418, 33.217426, 88.673119> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 766
sphere {
	<59.401775, 32.719437, 89.403450> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 767
sphere {
	<59.032082, 33.944229, 88.064697> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 768
sphere {
	<58.734585, 33.118591, 88.678726> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 769
sphere {
	<58.917095, 33.135563, 89.609070> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 770
sphere {
	<58.828072, 33.402531, 87.778870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 771
sphere {
	<58.415546, 33.004211, 88.675125> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 772
sphere {
	<58.398434, 33.529072, 89.464615> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 773
sphere {
	<58.711887, 32.768021, 87.805840> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 774
sphere {
	<58.098637, 32.883995, 88.667595> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 775
sphere {
	<57.943878, 33.747311, 89.028053> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 776
sphere {
	<58.558445, 32.240349, 88.144676> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 777
sphere {
	<57.782833, 32.760883, 88.664253> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 778
sphere {
	<57.617977, 33.682529, 88.514381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 779
sphere {
	<58.286449, 31.958776, 88.617531> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 780
sphere {
	<57.466370, 32.641438, 88.680557> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 781
sphere {
	<57.343475, 33.331490, 88.041840> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 782
sphere {
	<57.951962, 31.961950, 89.129517> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 783
sphere {
	<57.147297, 32.535492, 88.721878> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 784
sphere {
	<57.119179, 32.770359, 87.803589> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 785
sphere {
	<57.558628, 32.223942, 89.517441> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 786
sphere {
	<56.823166, 32.454250, 88.776680> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 787
sphere {
	<56.911369, 32.159679, 87.879677> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 788
sphere {
	<57.128002, 32.635284, 89.656181> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 789
sphere {
	<56.492825, 32.400906, 88.828941> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 790
sphere {
	<56.681057, 31.676165, 88.247131> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 791
sphere {
	<56.694050, 33.037697, 89.502075> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 792
sphere {
	<56.157932, 32.363472, 88.863487> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 793
sphere {
	<56.427814, 31.458395, 88.777580> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 794
sphere {
	<56.261616, 33.271240, 89.117050> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 795
sphere {
	<55.821304, 32.326847, 88.870728> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 796
sphere {
	<56.079742, 31.548100, 89.346054> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 797
sphere {
	<55.907375, 33.225746, 88.581299> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 798
sphere {
	<55.484905, 32.286438, 88.860382> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 799
sphere {
	<55.682560, 31.902237, 89.704437> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 800
sphere {
	<55.619244, 32.879883, 88.133095> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 801
sphere {
	<55.151512, 32.230133, 88.841431> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 802
sphere {
	<55.236519, 32.368988, 89.775620> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 803
sphere {
	<55.377850, 32.356300, 87.929329> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 804
sphere {
	<54.823875, 32.146667, 88.821793> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 805
sphere {
	<54.787071, 32.793293, 89.514366> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 806
sphere {
	<55.164978, 31.754959, 88.028404> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 807
sphere {
	<54.502445, 32.039894, 88.814911> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 808
sphere {
	<54.363628, 32.947227, 89.053101> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 809
sphere {
	<54.955135, 31.321165, 88.393517> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 810
sphere {
	<54.184296, 31.924801, 88.830795> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 811
sphere {
	<54.029564, 32.809620, 88.526962> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 812
sphere {
	<54.673965, 31.116835, 88.911888> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 813
sphere {
	<53.867626, 31.810041, 88.868484> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 814
sphere {
	<53.752155, 32.357208, 88.102646> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 815
sphere {
	<54.351257, 31.244421, 89.456093> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 816
sphere {
	<53.550243, 31.703983, 88.921318> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 817
sphere {
	<53.543282, 31.760834, 87.974838> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 818
sphere {
	<53.946396, 31.564056, 89.771408> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 819
sphere {
	<53.226910, 31.621109, 88.978416> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 820
sphere {
	<53.374176, 31.172676, 88.156044> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 821
sphere {
	<53.476566, 31.971415, 89.823502> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 822
sphere {
	<52.898449, 31.554535, 89.029373> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 823
sphere {
	<53.175808, 30.755320, 88.601074> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 824
sphere {
	<53.013771, 32.325031, 89.569962> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 825
sphere {
	<52.566681, 31.496046, 89.064316> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 826
sphere {
	<52.895672, 30.613068, 89.169556> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 827
sphere {
	<52.604019, 32.441219, 89.131119> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 828
sphere {
	<52.233341, 31.436579, 89.075012> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 829
sphere {
	<52.550259, 30.768578, 89.668869> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 830
sphere {
	<52.248505, 32.280838, 88.643639> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 831
sphere {
	<51.902195, 31.364624, 89.070656> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 832
sphere {
	<52.101910, 31.197439, 89.982498> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 833
sphere {
	<52.008877, 31.793530, 88.231689> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 834
sphere {
	<51.572929, 31.285023, 89.058456> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 835
sphere {
	<51.624561, 31.660036, 89.927940> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 836
sphere {
	<51.827599, 31.179165, 88.151268> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 837
sphere {
	<51.245110, 31.200180, 89.041428> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 838
sphere {
	<51.187721, 31.996555, 89.552917> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 839
sphere {
	<51.625965, 30.617434, 88.397537> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 840
sphere {
	<50.919369, 31.108246, 89.023598> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 841
sphere {
	<50.831322, 32.051868, 88.991936> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 842
sphere {
	<51.358418, 30.280359, 88.878891> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 843
sphere {
	<50.594254, 31.013229, 89.009399> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 844
sphere {
	<50.563454, 31.823769, 88.518166> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 845
sphere {
	<51.000340, 30.221773, 89.337852> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 846
sphere {
	<50.267879, 30.922411, 88.997368> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 847
sphere {
	<50.380791, 31.323381, 88.145523> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 848
sphere {
	<50.550121, 30.449423, 89.769241> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 849
sphere {
	<49.939255, 30.841404, 88.981277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 850
sphere {
	<50.210472, 30.692093, 88.085007> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 851
sphere {
	<50.059944, 30.880804, 89.920929> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 852
sphere {
	<49.606831, 30.780897, 88.958008> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 853
sphere {
	<49.927128, 30.156891, 88.319832> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 854
sphere {
	<49.652809, 31.303095, 89.748100> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 855
sphere {
	<49.272617, 30.742716, 88.918228> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 856
sphere {
	<49.556812, 29.847689, 88.786285> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 857
sphere {
	<49.318623, 31.613338, 89.291092> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 858
sphere {
	<48.939232, 30.715906, 88.863609> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 859
sphere {
	<49.110256, 29.881603, 89.280533> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 860
sphere {
	<49.086929, 31.636194, 88.688896> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 861
sphere {
	<48.606667, 30.688255, 88.804062> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 862
sphere {
	<48.688499, 30.185011, 89.603516> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 863
sphere {
	<48.840023, 31.373821, 88.191856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 864
sphere {
	<48.278187, 30.643902, 88.734291> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 865
sphere {
	<48.240364, 30.648726, 89.681816> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 866
sphere {
	<48.623718, 30.890293, 87.886307> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 867
sphere {
	<47.955769, 30.571321, 88.660706> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 868
sphere {
	<47.829067, 31.107906, 89.432114> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 869
sphere {
	<48.396759, 30.296301, 87.867577> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 870
sphere {
	<47.637825, 30.476320, 88.591675> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 871
sphere {
	<47.479710, 31.357088, 88.905228> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 872
sphere {
	<48.141628, 29.789352, 88.175095> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 873
sphere {
	<47.322472, 30.370964, 88.525528> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 874
sphere {
	<47.250423, 31.284920, 88.283157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 875
sphere {
	<47.775841, 29.547272, 88.648682> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 876
sphere {
	<47.007988, 30.260382, 88.464500> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 877
sphere {
	<47.104404, 30.892302, 87.764153> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 878
sphere {
	<47.314796, 29.621607, 89.094559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 879
sphere {
	<46.692711, 30.148066, 88.410553> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 880
sphere {
	<46.978897, 30.285759, 87.517044> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 881
sphere {
	<46.810490, 29.948748, 89.330017> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 882
sphere {
	<46.375824, 30.038801, 88.359955> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 883
sphere {
	<46.798794, 29.726320, 87.571007> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 884
sphere {
	<46.337753, 30.288780, 89.273911> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 885
sphere {
	<46.058647, 29.934086, 88.302231> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 886
sphere {
	<46.559620, 29.224947, 87.921135> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 887
sphere {
	<45.896999, 30.641674, 88.912590> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 888
sphere {
	<45.744297, 29.836761, 88.222404> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 889
sphere {
	<46.141014, 28.990231, 88.381683> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 890
sphere {
	<45.625710, 30.768633, 88.351364> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 891
sphere {
	<45.433468, 29.743889, 88.124153> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 892
sphere {
	<45.627354, 29.066311, 88.758553> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 893
sphere {
	<45.490208, 30.613594, 87.750465> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 894
sphere {
	<45.131195, 29.639149, 88.013329> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 895
sphere {
	<45.067150, 29.384336, 88.924461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 896
sphere {
	<45.419815, 30.180225, 87.290108> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 897
sphere {
	<44.839760, 29.518764, 87.889015> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 898
sphere {
	<44.549656, 29.788773, 88.750458> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 899
sphere {
	<45.380836, 29.561146, 87.111450> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 900
sphere {
	<44.555771, 29.382599, 87.764221> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 901
sphere {
	<44.180584, 30.067875, 88.301468> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 902
sphere {
	<45.219254, 28.987709, 87.213623> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 903
sphere {
	<44.273338, 29.229538, 87.656898> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 904
sphere {
	<43.973251, 30.127970, 87.700851> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 905
sphere {
	<44.913189, 28.542168, 87.525688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 906
sphere {
	<43.987907, 29.069717, 87.568153> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 907
sphere {
	<43.859653, 29.902182, 87.132751> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 908
sphere {
	<44.499996, 28.354839, 87.923012> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 909
sphere {
	<43.700085, 28.911795, 87.483536> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 910
sphere {
	<43.872246, 29.417355, 86.699966> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 911
sphere {
	<43.936729, 28.431061, 88.265930> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 912
sphere {
	<43.407116, 28.763653, 87.399506> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 913
sphere {
	<43.858829, 28.735363, 86.566177> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 914
sphere {
	<43.348068, 28.765331, 88.345901> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 915
sphere {
	<43.109810, 28.625574, 87.313324> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 916
sphere {
	<43.697338, 28.167561, 86.726723> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 917
sphere {
	<42.871559, 29.074898, 88.113670> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 918
sphere {
	<42.813225, 28.496407, 87.212601> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 919
sphere {
	<43.384377, 27.751846, 87.076126> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 920
sphere {
	<42.523632, 29.290592, 87.642204> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 921
sphere {
	<42.520130, 28.369915, 87.098541> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 922
sphere {
	<42.911198, 27.603146, 87.496422> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 923
sphere {
	<42.357128, 29.298813, 86.999664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 924
sphere {
	<42.230564, 28.237320, 86.982597> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 925
sphere {
	<42.349014, 27.750286, 87.787582> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 926
sphere {
	<42.315136, 28.990782, 86.413124> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 927
sphere {
	<41.943157, 28.097952, 86.869019> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 928
sphere {
	<41.795628, 28.090836, 87.805695> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 929
sphere {
	<42.306232, 28.429779, 86.058266> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 930
sphere {
	<41.655815, 27.954025, 86.761108> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 931
sphere {
	<41.345856, 28.452114, 87.506058> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 932
sphere {
	<42.226700, 27.771515, 86.026230> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 933
sphere {
	<41.366531, 27.809130, 86.660187> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 934
sphere {
	<41.056820, 28.653748, 86.959885> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 935
sphere {
	<41.998962, 27.206854, 86.290802> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 936
sphere {
	<41.073082, 27.661802, 86.577339> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 937
sphere {
	<40.886124, 28.554234, 86.316978> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 938
sphere {
	<41.628422, 26.907320, 86.723969> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 939
sphere {
	<40.771313, 27.518713, 86.520729> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 940
sphere {
	<40.787724, 28.161367, 85.823685> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 941
sphere {
	<41.154099, 26.900593, 87.129501> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 942
sphere {
	<40.462120, 27.385445, 86.482353> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 943
sphere {
	<40.687447, 27.537472, 85.573921> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 944
sphere {
	<40.644508, 27.196053, 87.393448> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 945
sphere {
	<40.146477, 27.266209, 86.452225> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 946
sphere {
	<40.524300, 26.919033, 85.654869> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 947
sphere {
	<40.159874, 27.555298, 87.355225> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 948
sphere {
	<39.825569, 27.161171, 86.421700> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 949
sphere {
	<40.286522, 26.441343, 86.011200> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 950
sphere {
	<39.723732, 27.882267, 87.029030> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 951
sphere {
	<39.504059, 27.065430, 86.375473> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 952
sphere {
	<39.908520, 26.215263, 86.488503> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 953
sphere {
	<39.408859, 27.998060, 86.517738> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 954
sphere {
	<39.186127, 26.975290, 86.301422> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 955
sphere {
	<39.412876, 26.278629, 86.903496> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 956
sphere {
	<39.222771, 27.856327, 85.952820> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 957
sphere {
	<38.878624, 26.873161, 86.202896> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 958
sphere {
	<38.861427, 26.589760, 87.107613> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 959
sphere {
	<39.129448, 27.437466, 85.483200> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 960
sphere {
	<38.581459, 26.755985, 86.089813> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 961
sphere {
	<38.335281, 26.998062, 86.972961> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 962
sphere {
	<39.082169, 26.824242, 85.287483> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 963
sphere {
	<38.289566, 26.631447, 85.970612> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 964
sphere {
	<37.962708, 27.325920, 86.527527> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 965
sphere {
	<38.921600, 26.209677, 85.403358> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 966
sphere {
	<38.000912, 26.500431, 85.850517> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 967
sphere {
	<37.764061, 27.417423, 85.897453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 968
sphere {
	<38.597645, 25.770641, 85.748550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 969
sphere {
	<37.713989, 26.362991, 85.733505> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 970
sphere {
	<37.705200, 27.191727, 85.272644> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 971
sphere {
	<38.121590, 25.619244, 86.157585> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 972
sphere {
	<37.424774, 26.226570, 85.620972> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 973
sphere {
	<37.689373, 26.735193, 84.865608> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 974
sphere {
	<37.568558, 25.714785, 86.406189> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 975
sphere {
	<37.126266, 26.106451, 85.515282> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 976
sphere {
	<37.594276, 26.116932, 84.690735> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 977
sphere {
	<37.044384, 26.025728, 86.456535> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 978
sphere {
	<36.818520, 26.012642, 85.409668> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 979
sphere {
	<37.357319, 25.502401, 84.819305> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 980
sphere {
	<36.611549, 26.446186, 86.227150> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 981
sphere {
	<36.509430, 25.934668, 85.294266> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 982
sphere {
	<36.976036, 25.128294, 85.117439> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 983
sphere {
	<36.325256, 26.735445, 85.767502> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 984
sphere {
	<36.206364, 25.863293, 85.160988> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 985
sphere {
	<36.448738, 25.002100, 85.475174> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 986
sphere {
	<36.192204, 26.811363, 85.175507> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 987
sphere {
	<35.915642, 25.793467, 85.001961> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 988
sphere {
	<35.865036, 25.164188, 85.709534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 989
sphere {
	<36.164440, 26.614176, 84.597321> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 990
sphere {
	<35.639793, 25.708527, 84.824921> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 991
sphere {
	<35.322048, 25.558481, 85.705681> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 992
sphere {
	<36.163231, 26.138161, 84.161240> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 993
sphere {
	<35.373478, 25.609600, 84.639847> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 994
sphere {
	<34.929199, 25.991962, 85.385254> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 995
sphere {
	<36.083107, 25.513727, 84.018166> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 996
sphere {
	<35.111412, 25.505507, 84.451675> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 997
sphere {
	<34.749443, 26.300043, 84.821747> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 998
sphere {
	<35.806545, 24.942520, 84.136986> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 999
sphere {
	<34.851738, 25.394556, 84.264206> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1000
sphere {
	<34.751129, 26.331137, 84.155472> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1001
sphere {
	<35.337196, 24.593075, 84.409714> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1002
sphere {
	<34.590919, 25.280491, 84.080261> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1003
sphere {
	<34.793144, 26.084961, 83.620827> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1004
sphere {
	<34.791000, 24.516113, 84.604515> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1005
sphere {
	<34.325710, 25.173620, 83.898178> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1006
sphere {
	<34.866264, 25.566038, 83.225060> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1007
sphere {
	<34.163536, 24.723583, 84.716858> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1008
sphere {
	<34.053627, 25.087973, 83.715630> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1009
sphere {
	<34.736748, 24.924122, 83.078636> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1010
sphere {
	<33.685616, 25.138046, 84.588127> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1011
sphere {
	<33.775284, 25.019819, 83.534500> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1012
sphere {
	<34.371857, 24.374763, 83.177872> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1013
sphere {
	<33.428993, 25.591660, 84.206978> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1014
sphere {
	<33.498852, 24.963917, 83.346825> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1015
sphere {
	<33.840378, 24.080490, 83.393982> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1016
sphere {
	<33.343941, 25.843914, 83.664223> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1017
sphere {
	<33.235291, 24.914982, 83.139839> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1018
sphere {
	<33.238995, 24.090076, 83.607574> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1019
sphere {
	<33.373154, 25.847925, 83.040817> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1020
sphere {
	<32.985905, 24.864418, 82.916016> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1021
sphere {
	<32.633827, 24.394415, 83.660538> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1022
sphere {
	<33.498192, 25.538246, 82.488441> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1023
sphere {
	<32.743809, 24.813768, 82.684143> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1024
sphere {
	<32.215889, 24.877615, 83.469276> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1025
sphere {
	<33.495960, 24.996960, 82.136559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1026
sphere {
	<32.506699, 24.759621, 82.448051> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1027
sphere {
	<32.037792, 25.345163, 83.028152> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1028
sphere {
	<33.277237, 24.399096, 82.029327> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1029
sphere {
	<32.272644, 24.699013, 82.210556> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1030
sphere {
	<32.076324, 25.603966, 82.414719> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1031
sphere {
	<32.833542, 23.939432, 82.122742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1032
sphere {
	<32.038769, 24.631105, 81.974701> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1033
sphere {
	<32.229229, 25.536997, 81.769028> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1034
sphere {
	<32.238220, 23.762905, 82.299469> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1035
sphere {
	<31.802013, 24.561317, 81.742294> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1036
sphere {
	<32.314323, 25.213652, 81.282745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1037
sphere {
	<31.663704, 23.855137, 82.359856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1038
sphere {
	<31.556412, 24.505339, 81.516037> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1039
sphere {
	<32.289314, 24.641502, 80.929916> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1040
sphere {
	<31.139126, 24.226492, 82.320534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1041
sphere {
	<31.304817, 24.476547, 81.291115> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1042
sphere {
	<32.014469, 24.079643, 80.803215> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1043
sphere {
	<30.822502, 24.704964, 82.074997> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1044
sphere {
	<31.055601, 24.465254, 81.061661> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1045
sphere {
	<31.524599, 23.668264, 80.851830> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1046
sphere {
	<30.745022, 25.155008, 81.633469> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1047
sphere {
	<30.817122, 24.463833, 80.821167> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1048
sphere {
	<30.900547, 23.530746, 80.967979> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1049
sphere {
	<30.833382, 25.378403, 81.071068> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1050
sphere {
	<30.599068, 24.465548, 80.562050> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1051
sphere {
	<30.264378, 23.726650, 81.053177> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1052
sphere {
	<31.020994, 25.308212, 80.457306> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1053
sphere {
	<30.395128, 24.463913, 80.291214> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1054
sphere {
	<29.787128, 24.183674, 80.962799> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1055
sphere {
	<31.153225, 24.924110, 79.955597> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1056
sphere {
	<30.197145, 24.461193, 80.016151> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1057
sphere {
	<29.572893, 24.744074, 80.671555> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1058
sphere {
	<31.059090, 24.374275, 79.630539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1059
sphere {
	<30.003485, 24.453314, 79.738037> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1060
sphere {
	<29.626034, 25.198715, 80.186539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1061
sphere {
	<30.699196, 23.853893, 79.501923> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1062
sphere {
	<29.811111, 24.438280, 79.459351> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1063
sphere {
	<29.853556, 25.377148, 79.585480> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1064
sphere {
	<30.131077, 23.547554, 79.517563> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1065
sphere {
	<29.616398, 24.416548, 79.182693> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1066
sphere {
	<30.099041, 25.209362, 78.988564> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1067
sphere {
	<29.487982, 23.561941, 79.572876> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1068
sphere {
	<29.417957, 24.393879, 78.908760> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1069
sphere {
	<30.175800, 24.830507, 78.542564> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1070
sphere {
	<28.965031, 23.816376, 79.509232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1071
sphere {
	<29.213985, 24.387581, 78.638596> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1072
sphere {
	<30.051311, 24.257601, 78.213120> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1073
sphere {
	<28.589489, 24.314056, 79.348381> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1074
sphere {
	<29.007236, 24.399109, 78.370125> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1075
sphere {
	<29.654137, 23.775246, 78.067688> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1076
sphere {
	<28.484676, 24.848394, 79.021461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1077
sphere {
	<28.810406, 24.424715, 78.095695> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1078
sphere {
	<29.061247, 23.512894, 78.027008> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1079
sphere {
	<28.603996, 25.227343, 78.556534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1080
sphere {
	<28.635426, 24.461639, 77.808136> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1081
sphere {
	<28.393023, 23.573326, 78.034676> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1082
sphere {
	<28.886599, 25.357662, 77.990921> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1083
sphere {
	<28.476477, 24.500948, 77.511307> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1084
sphere {
	<27.850098, 23.954884, 77.968140> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1085
sphere {
	<29.164074, 25.150627, 77.445953> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1086
sphere {
	<28.324034, 24.541265, 77.211227> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1087
sphere {
	<27.569040, 24.531359, 77.784874> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1088
sphere {
	<29.231136, 24.701967, 76.986542> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1089
sphere {
	<28.177271, 24.578213, 76.907921> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1090
sphere {
	<27.595970, 25.102985, 77.442490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1091
sphere {
	<29.007111, 24.185314, 76.670868> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1092
sphere {
	<28.033386, 24.608608, 76.602509> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1093
sphere {
	<27.864775, 25.472111, 76.956329> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1094
sphere {
	<28.517281, 23.799019, 76.504463> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1095
sphere {
	<27.888327, 24.631828, 76.297058> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1096
sphere {
	<28.221096, 25.514500, 76.394135> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1097
sphere {
	<27.883619, 23.694279, 76.438789> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1098
sphere {
	<27.739307, 24.652836, 75.993286> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1099
sphere {
	<28.435835, 25.288481, 75.893150> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1100
sphere {
	<27.333984, 23.868961, 76.340279> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1101
sphere {
	<27.584772, 24.681265, 75.692947> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1102
sphere {
	<28.490795, 24.773966, 75.428970> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1103
sphere {
	<26.875660, 24.362507, 76.235870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1104
sphere {
	<27.425570, 24.728226, 75.397629> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1105
sphere {
	<28.213997, 24.302355, 75.087372> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1106
sphere {
	<26.735378, 24.910196, 76.021835> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1107
sphere {
	<27.267090, 24.790136, 75.104485> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1108
sphere {
	<27.697481, 23.969816, 74.902176> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1109
sphere {
	<26.854155, 25.427326, 75.672546> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1110
sphere {
	<27.124996, 24.860058, 74.805229> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1111
sphere {
	<27.041325, 23.915594, 74.807831> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1112
sphere {
	<27.164040, 25.720875, 75.200974> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1113
sphere {
	<27.003662, 24.937712, 74.498398> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1114
sphere {
	<26.435884, 24.210859, 74.718559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1115
sphere {
	<27.552645, 25.687704, 74.686600> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1116
sphere {
	<26.892532, 25.018188, 74.188461> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1117
sphere {
	<26.077671, 24.760649, 74.599442> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1118
sphere {
	<27.773588, 25.368361, 74.170898> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1119
sphere {
	<26.787905, 25.097113, 73.875839> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1120
sphere {
	<26.042423, 25.390564, 74.383110> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1121
sphere {
	<27.704391, 24.904949, 73.726646> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1122
sphere {
	<26.687654, 25.170805, 73.560509> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1123
sphere {
	<26.302542, 25.896126, 74.034485> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1124
sphere {
	<27.329926, 24.491402, 73.401833> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1125
sphere {
	<26.586021, 25.239708, 73.244583> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1126
sphere {
	<26.645218, 26.114246, 73.606461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1127
sphere {
	<26.822248, 24.325006, 73.163330> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1128
sphere {
	<26.474861, 25.308636, 72.931839> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1129
sphere {
	<27.073097, 26.032400, 73.064667> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1130
sphere {
	<26.157410, 24.422888, 73.049347> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1131
sphere {
	<26.355240, 25.383045, 72.623566> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1132
sphere {
	<27.237289, 25.725611, 72.561523> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1133
sphere {
	<25.681648, 24.794373, 72.937874> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1134
sphere {
	<26.230019, 25.475243, 72.322754> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1135
sphere {
	<27.130116, 25.307953, 72.075775> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1136
sphere {
	<25.439022, 25.345150, 72.829269> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1137
sphere {
	<26.105183, 25.594267, 72.031250> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1138
sphere {
	<26.731190, 24.968115, 71.692055> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1139
sphere {
	<25.480938, 25.931353, 72.660461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1140
sphere {
	<25.995975, 25.737036, 71.744217> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1141
sphere {
	<26.145565, 24.852987, 71.435577> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1142
sphere {
	<25.767826, 26.396566, 72.386124> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1143
sphere {
	<25.913754, 25.890079, 71.453560> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1144
sphere {
	<25.520561, 25.039909, 71.305984> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1145
sphere {
	<26.200108, 26.625359, 71.979446> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1146
sphere {
	<25.854336, 26.044218, 71.157677> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1147
sphere {
	<25.059063, 25.533955, 71.237839> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1148
sphere {
	<26.601562, 26.528790, 71.483246> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1149
sphere {
	<25.805573, 26.197977, 70.859520> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1150
sphere {
	<24.917023, 26.183861, 71.190216> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1151
sphere {
	<26.750534, 26.223701, 70.934158> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1152
sphere {
	<25.762756, 26.348360, 70.558685> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1153
sphere {
	<25.113693, 26.810276, 71.073059> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1154
sphere {
	<26.572689, 25.874844, 70.420746> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1155
sphere {
	<25.722492, 26.492611, 70.254623> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1156
sphere {
	<25.558517, 27.237097, 70.818649> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1157
sphere {
	<26.113777, 25.661333, 70.020058> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1158
sphere {
	<25.679497, 26.633171, 69.949142> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1159
sphere {
	<25.992512, 27.378677, 70.444550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1160
sphere {
	<25.604240, 25.712044, 69.737122> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1161
sphere {
	<25.633320, 26.776909, 69.645714> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1162
sphere {
	<26.399418, 27.241117, 69.956680> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1163
sphere {
	<25.047001, 26.034906, 69.575943> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1164
sphere {
	<25.580505, 26.935602, 69.351173> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1165
sphere {
	<26.528572, 26.938835, 69.369858> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1166
sphere {
	<24.718086, 26.586954, 69.535095> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1167
sphere {
	<25.525784, 27.118061, 69.071121> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1168
sphere {
	<26.325325, 26.669895, 68.827965> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1169
sphere {
	<24.692219, 27.210085, 69.513626> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1170
sphere {
	<25.478092, 27.315052, 68.799500> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1171
sphere {
	<25.866367, 26.549747, 68.396080> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1172
sphere {
	<24.969139, 27.778381, 69.451706> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1173
sphere {
	<25.447586, 27.517349, 68.529602> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1174
sphere {
	<25.265266, 26.678373, 68.127052> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1175
sphere {
	<25.452663, 28.148493, 69.237244> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1176
sphere {
	<25.435005, 27.724554, 68.261620> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1177
sphere {
	<24.759758, 27.101707, 68.026306> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1178
sphere {
	<25.972885, 28.223684, 68.862213> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1179
sphere {
	<25.429501, 27.933447, 67.994675> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1180
sphere {
	<24.508293, 27.718409, 68.060783> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1181
sphere {
	<26.305405, 28.075603, 68.329025> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1182
sphere {
	<25.430984, 28.140512, 67.726288> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1183
sphere {
	<24.600266, 28.376480, 68.118042> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1184
sphere {
	<26.327183, 27.830830, 67.732018> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1185
sphere {
	<25.436783, 28.342884, 67.454414> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1186
sphere {
	<25.000069, 28.908754, 68.077507> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1187
sphere {
	<26.028183, 27.650856, 67.188805> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1188
sphere {
	<25.441059, 28.541536, 67.179749> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1189
sphere {
	<25.474152, 29.191734, 67.869095> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1190
sphere {
	<25.600998, 27.691408, 66.791115> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1191
sphere {
	<25.441208, 28.742319, 66.906708> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1192
sphere {
	<26.004562, 29.227930, 67.494972> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1193
sphere {
	<25.046036, 27.959970, 66.544930> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1194
sphere {
	<25.435471, 28.950544, 66.639252> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1195
sphere {
	<26.338356, 29.047459, 66.912544> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1196
sphere {
	<24.615028, 28.487713, 66.530487> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1197
sphere {
	<25.421570, 29.164419, 66.376740> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1198
sphere {
	<26.305885, 28.835907, 66.280945> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1199
sphere {
	<24.509365, 29.116659, 66.631332> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1200
sphere {
	<25.408150, 29.382317, 66.117409> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1201
sphere {
	<25.992664, 28.722656, 65.767792> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1202
sphere {
	<24.694588, 29.701487, 66.654373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1203
sphere {
	<25.412128, 29.607643, 65.864563> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1204
sphere {
	<25.460178, 28.801714, 65.367119> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1205
sphere {
	<25.153275, 30.152145, 66.596405> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1206
sphere {
	<25.432201, 29.839733, 65.618378> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1207
sphere {
	<24.934746, 29.164980, 65.175079> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1208
sphere {
	<25.729855, 30.334578, 66.370461> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1209
sphere {
	<25.458485, 30.074306, 65.375122> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1210
sphere {
	<24.591740, 29.736580, 65.191841> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1211
sphere {
	<26.197941, 30.290356, 65.928009> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1212
sphere {
	<25.492111, 30.308287, 65.132111> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1213
sphere {
	<24.566067, 30.390575, 65.319656> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1214
sphere {
	<26.397743, 30.117800, 65.338882> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1215
sphere {
	<25.531445, 30.538429, 64.886307> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1216
sphere {
	<24.878723, 30.971113, 65.420929> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1217
sphere {
	<26.267036, 29.961899, 64.726036> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1218
sphere {
	<25.572937, 30.763245, 64.636009> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1219
sphere {
	<25.425701, 31.348820, 65.367256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1220
sphere {
	<25.864235, 29.961754, 64.221519> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1221
sphere {
	<25.611317, 30.985491, 64.382965> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1222
sphere {
	<25.939438, 31.491737, 65.114555> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1223
sphere {
	<25.432091, 30.189564, 63.899742> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1224
sphere {
	<25.640800, 31.211365, 64.132126> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1225
sphere {
	<26.426838, 31.401518, 64.627174> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1226
sphere {
	<24.946560, 30.657282, 63.800770> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1227
sphere {
	<25.656868, 31.448406, 63.890495> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1228
sphere {
	<26.582535, 31.282951, 64.012856> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1229
sphere {
	<24.737186, 31.219107, 63.877499> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1230
sphere {
	<25.666416, 31.695244, 63.658405> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1231
sphere {
	<26.420517, 31.181509, 63.400383> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1232
sphere {
	<24.805721, 31.831060, 64.032867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1233
sphere {
	<25.688423, 31.951138, 63.437824> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1234
sphere {
	<25.995811, 31.239479, 62.891731> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1235
sphere {
	<25.171509, 32.342613, 64.129700> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1236
sphere {
	<25.727070, 32.216629, 63.230652> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1237
sphere {
	<25.469532, 31.555864, 62.601700> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1238
sphere {
	<25.747547, 32.630116, 64.083786> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1239
sphere {
	<25.773796, 32.485775, 63.029949> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1240
sphere {
	<25.044159, 32.069881, 62.588783> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1241
sphere {
	<26.310493, 32.711666, 63.778290> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1242
sphere {
	<25.825287, 32.754032, 62.829212> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1243
sphere {
	<24.892555, 32.625526, 62.717232> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1244
sphere {
	<26.647583, 32.719624, 63.300259> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1245
sphere {
	<25.874691, 33.019688, 62.624489> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1246
sphere {
	<25.013584, 33.211170, 62.971878> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1247
sphere {
	<26.749512, 32.653675, 62.647541> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1248
sphere {
	<25.917671, 33.285175, 62.418175> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1249
sphere {
	<25.434101, 33.680580, 63.131641> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1250
sphere {
	<26.516834, 32.663532, 62.025948> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1251
sphere {
	<25.949562, 33.553070, 62.212997> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1252
sphere {
	<26.023563, 33.962456, 63.065384> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1253
sphere {
	<26.044353, 32.846764, 61.587849> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1254
sphere {
	<25.960991, 33.824749, 62.011261> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1255
sphere {
	<26.539291, 34.118198, 62.702599> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1256
sphere {
	<25.551006, 33.180992, 61.447506> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1257
sphere {
	<25.945236, 34.102951, 61.818604> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1258
sphere {
	<26.838600, 34.173252, 62.128696> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1259
sphere {
	<25.161152, 33.640461, 61.551773> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1260
sphere {
	<25.920292, 34.392811, 61.645294> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1261
sphere {
	<26.833271, 34.181488, 61.502060> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1262
sphere {
	<25.004787, 34.194668, 61.793022> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1263
sphere {
	<25.902622, 34.695606, 61.494495> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1264
sphere {
	<26.514297, 34.260712, 60.915039> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1265
sphere {
	<25.168781, 34.740055, 62.093300> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1266
sphere {
	<25.893845, 35.007381, 61.361729> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1267
sphere {
	<25.979309, 34.495621, 60.568073> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1268
sphere {
	<25.623550, 35.168251, 62.256462> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1269
sphere {
	<25.891064, 35.322983, 61.238331> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1270
sphere {
	<25.425373, 34.866314, 60.549778> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1271
sphere {
	<26.178993, 35.471291, 62.129341> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1272
sphere {
	<25.892467, 35.638973, 61.115589> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1273
sphere {
	<25.085133, 35.308342, 60.742867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1274
sphere {
	<26.580036, 35.693832, 61.766159> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1275
sphere {
	<25.894039, 35.953239, 60.988609> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1276
sphere {
	<24.967113, 35.815041, 61.132664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1277
sphere {
	<26.818184, 35.833668, 61.162453> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1278
sphere {
	<25.888878, 36.265881, 60.857460> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1279
sphere {
	<25.180573, 36.316742, 61.485931> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1280
sphere {
	<26.715244, 35.948872, 60.516823> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1281
sphere {
	<25.876671, 36.578438, 60.726654> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1282
sphere {
	<25.647202, 36.746044, 61.631523> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1283
sphere {
	<26.306095, 36.112926, 60.020966> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1284
sphere {
	<25.853470, 36.890724, 60.597145> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1285
sphere {
	<26.225822, 37.084888, 61.448036> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1286
sphere {
	<25.701096, 36.359840, 59.826794> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1287
sphere {
	<25.811844, 37.202675, 60.472095> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1288
sphere {
	<26.595024, 37.343571, 60.987076> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1289
sphere {
	<25.211872, 36.695995, 59.940678> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1290
sphere {
	<25.753510, 37.518417, 60.364456> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1291
sphere {
	<26.700920, 37.517536, 60.382172> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1292
sphere {
	<24.894932, 37.129490, 60.258850> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1293
sphere {
	<25.691200, 37.839207, 60.273773> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1294
sphere {
	<26.493187, 37.672535, 59.795692> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1295
sphere {
	<24.867928, 37.603386, 60.680794> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1296
sphere {
	<25.642006, 38.165421, 60.198051> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1297
sphere {
	<26.011227, 37.862461, 59.378960> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1298
sphere {
	<25.143063, 38.080532, 60.999969> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1299
sphere {
	<25.607807, 38.497353, 60.137978> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1300
sphere {
	<25.406071, 38.155060, 59.276848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1301
sphere {
	<25.647808, 38.473236, 61.085175> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1302
sphere {
	<25.581993, 38.831161, 60.085281> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1303
sphere {
	<24.896576, 38.515152, 59.511833> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1304
sphere {
	<26.148552, 38.802326, 60.844955> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1305
sphere {
	<25.563152, 39.165810, 60.034363> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1306
sphere {
	<24.646595, 38.932384, 59.968193> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1307
sphere {
	<26.454254, 39.070618, 60.343506> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1308
sphere {
	<25.551422, 39.500225, 59.980934> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1309
sphere {
	<24.740505, 39.375732, 60.457031> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1310
sphere {
	<26.446732, 39.301357, 59.740746> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1311
sphere {
	<25.543190, 39.833839, 59.921249> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1312
sphere {
	<25.138096, 39.804958, 60.778099> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1313
sphere {
	<26.121635, 39.531685, 59.233116> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1314
sphere {
	<25.535484, 40.166077, 59.854538> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1315
sphere {
	<25.686031, 40.184666, 60.790627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1316
sphere {
	<25.589790, 39.798523, 58.982330> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1317
sphere {
	<25.522396, 40.498116, 59.787266> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1318
sphere {
	<26.138725, 40.484402, 60.508507> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1319
sphere {
	<25.084732, 40.145580, 59.023788> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1320
sphere {
	<25.494846, 40.831356, 59.733631> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1321
sphere {
	<26.403969, 40.787880, 59.999123> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1322
sphere {
	<24.699665, 40.505074, 59.334087> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1323
sphere {
	<25.453461, 41.166260, 59.704956> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1324
sphere {
	<26.357323, 41.094471, 59.428497> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1325
sphere {
	<24.558544, 40.868050, 59.805416> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1326
sphere {
	<25.412636, 41.502491, 59.704197> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1327
sphere {
	<26.015312, 41.413357, 58.977539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1328
sphere {
	<24.710945, 41.225193, 60.278152> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1329
sphere {
	<25.389786, 41.839626, 59.726784> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1330
sphere {
	<25.492622, 41.749508, 58.788403> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1331
sphere {
	<25.107849, 41.568989, 60.590790> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1332
sphere {
	<25.394852, 42.176826, 59.756813> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1333
sphere {
	<24.941628, 42.094486, 58.928211> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1334
sphere {
	<25.646164, 41.906319, 60.630508> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1335
sphere {
	<25.423756, 42.513390, 59.785164> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1336
sphere {
	<24.573326, 42.456360, 59.369907> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1337
sphere {
	<26.133553, 42.210869, 60.336662> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1338
sphere {
	<25.462814, 42.849052, 59.811798> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1339
sphere {
	<24.528011, 42.775810, 59.953407> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1340
sphere {
	<26.362202, 42.550098, 59.837158> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1341
sphere {
	<25.507759, 43.184246, 59.834038> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1342
sphere {
	<24.823509, 43.062157, 60.478729> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1343
sphere {
	<26.262306, 42.924862, 59.321243> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1344
sphere {
	<25.555317, 43.519547, 59.849426> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1345
sphere {
	<25.363396, 43.333500, 60.759140> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1346
sphere {
	<25.882069, 43.321148, 58.981674> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1347
sphere {
	<25.600361, 43.855373, 59.861008> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1348
sphere {
	<25.885010, 43.608940, 60.731239> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1349
sphere {
	<25.459438, 43.722893, 58.932663> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1350
sphere {
	<25.628746, 44.192265, 59.879860> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1351
sphere {
	<26.374779, 43.935680, 60.406261> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1352
sphere {
	<24.996067, 44.095695, 59.179840> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1353
sphere {
	<25.640530, 44.528297, 59.920704> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1354
sphere {
	<26.566216, 44.324547, 59.937824> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1355
sphere {
	<24.737698, 44.407421, 59.654797> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1356
sphere {
	<25.647545, 44.862183, 59.978821> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1357
sphere {
	<26.444775, 44.753784, 59.476845> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1358
sphere {
	<24.761345, 44.650883, 60.241314> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1359
sphere {
	<25.663330, 45.192394, 60.052643> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1360
sphere {
	<26.067909, 45.201580, 59.195145> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1361
sphere {
	<25.068985, 44.873741, 60.719563> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1362
sphere {
	<25.701088, 45.516815, 60.141335> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1363
sphere {
	<25.542576, 45.619446, 59.212257> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1364
sphere {
	<25.611607, 45.099644, 60.988457> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1365
sphere {
	<25.757580, 45.837521, 60.235954> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1366
sphere {
	<25.099724, 45.970135, 59.566399> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1367
sphere {
	<26.199646, 45.357437, 60.923767> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1368
sphere {
	<25.820116, 46.156372, 60.332291> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1369
sphere {
	<24.891129, 46.213860, 60.151009> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1370
sphere {
	<26.620012, 45.718479, 60.592430> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1371
sphere {
	<25.889656, 46.474476, 60.426399> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1372
sphere {
	<25.016817, 46.379017, 60.784664> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1373
sphere {
	<26.742437, 46.168461, 60.145874> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1374
sphere {
	<25.964375, 46.793148, 60.515160> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1375
sphere {
	<25.454512, 46.522667, 61.267548> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1376
sphere {
	<26.545216, 46.660591, 59.777489> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1377
sphere {
	<26.035097, 47.113472, 60.600376> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1378
sphere {
	<26.008728, 46.701981, 61.454254> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1379
sphere {
	<26.182144, 47.142372, 59.664024> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1380
sphere {
	<26.085281, 47.436260, 60.689545> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1381
sphere {
	<26.595272, 47.001423, 61.360447> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1382
sphere {
	<25.708755, 47.535946, 59.824821> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1383
sphere {
	<26.117138, 47.759899, 60.785126> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1384
sphere {
	<26.963892, 47.416912, 61.039398> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1385
sphere {
	<25.329584, 47.802410, 60.259201> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1386
sphere {
	<26.144167, 48.078304, 60.897232> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1387
sphere {
	<27.035973, 47.928787, 60.611458> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1388
sphere {
	<25.202579, 47.968658, 60.869812> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1389
sphere {
	<26.172287, 48.390316, 61.026695> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1390
sphere {
	<26.815786, 48.426014, 60.331161> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1391
sphere {
	<25.374300, 48.095570, 61.445530> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1392
sphere {
	<26.215559, 48.697491, 61.162907> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1393
sphere {
	<26.394634, 48.883175, 60.250397> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1394
sphere {
	<25.796103, 48.242771, 61.881569> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1395
sphere {
	<26.285151, 48.998425, 61.301773> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1396
sphere {
	<25.904467, 49.282364, 60.480694> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1397
sphere {
	<26.393997, 48.418186, 62.043831> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1398
sphere {
	<26.376434, 49.294205, 61.439720> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1399
sphere {
	<25.574610, 49.557079, 61.007309> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1400
sphere {
	<26.957273, 48.686745, 61.878887> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1401
sphere {
	<26.478155, 49.587360, 61.576279> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1402
sphere {
	<25.538107, 49.677540, 61.662258> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1403
sphere {
	<27.294846, 49.108192, 61.524933> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1404
sphere {
	<26.586075, 49.880112, 61.708702> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1405
sphere {
	<25.832720, 49.712177, 62.259621> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1406
sphere {
	<27.319599, 49.639011, 61.158329> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1407
sphere {
	<26.696903, 50.174633, 61.834751> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1408
sphere {
	<26.387085, 49.756996, 62.627632> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1409
sphere {
	<27.058681, 50.194744, 60.958424> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1410
sphere {
	<26.805502, 50.471493, 61.957077> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1411
sphere {
	<26.952454, 49.907272, 62.704895> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1412
sphere {
	<26.730045, 50.672928, 61.033573> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1413
sphere {
	<26.908230, 50.767776, 62.085800> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1414
sphere {
	<27.517599, 50.167366, 62.494816> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1415
sphere {
	<26.331472, 51.071056, 61.396866> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1416
sphere {
	<27.000610, 51.058319, 62.233234> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1417
sphere {
	<27.847477, 50.639790, 62.150719> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1418
sphere {
	<26.109627, 51.254543, 61.974743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1419
sphere {
	<27.082706, 51.344391, 62.395596> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1420
sphere {
	<27.849178, 51.234161, 61.848324> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1421
sphere {
	<26.165081, 51.256386, 62.617867> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1422
sphere {
	<27.160513, 51.628242, 62.563541> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1423
sphere {
	<27.551746, 51.817307, 61.720795> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1424
sphere {
	<26.531179, 51.227745, 63.149006> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1425
sphere {
	<27.238073, 51.908504, 62.737823> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1426
sphere {
	<27.095997, 52.278576, 61.876465> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1427
sphere {
	<27.106960, 51.280609, 63.436287> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1428
sphere {
	<27.319363, 52.186306, 62.914146> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1429
sphere {
	<26.741697, 52.555161, 62.258896> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1430
sphere {
	<27.644403, 51.505619, 63.488674> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1431
sphere {
	<27.403904, 52.467663, 63.083294> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1432
sphere {
	<26.499949, 52.649403, 62.862125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1433
sphere {
	<28.141870, 51.911602, 63.296360> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1434
sphere {
	<27.487061, 52.758694, 63.235386> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1435
sphere {
	<26.574818, 52.685619, 63.483353> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1436
sphere {
	<28.345448, 52.426418, 63.007568> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1437
sphere {
	<27.561932, 53.062477, 63.364899> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1438
sphere {
	<26.963585, 52.745781, 64.028862> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1439
sphere {
	<28.225220, 52.975117, 62.692871> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1440
sphere {
	<27.627096, 53.375748, 63.476742> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1441
sphere {
	<27.560154, 52.918228, 64.304550> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1442
sphere {
	<27.817930, 53.455429, 62.551250> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1443
sphere {
	<27.686682, 53.693050, 63.580097> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1444
sphere {
	<28.158207, 53.207142, 64.244011> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1445
sphere {
	<27.325764, 53.839638, 62.715603> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1446
sphere {
	<27.741497, 54.010536, 63.685253> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1447
sphere {
	<28.544401, 53.588600, 63.961761> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1448
sphere {
	<26.983284, 54.136116, 63.129868> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1449
sphere {
	<27.790012, 54.321770, 63.809753> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1450
sphere {
	<28.679850, 54.104584, 63.564434> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1451
sphere {
	<26.845436, 54.295815, 63.730064> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1452
sphere {
	<27.834309, 54.625481, 63.953506> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1453
sphere {
	<28.521168, 54.644539, 63.300022> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1454
sphere {
	<26.993341, 54.370506, 64.309952> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1455
sphere {
	<27.885303, 54.926067, 64.101486> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1456
sphere {
	<28.088701, 55.127922, 63.197536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1457
sphere {
	<27.440500, 54.464752, 64.800354> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1458
sphere {
	<27.955605, 55.224388, 64.245850> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1459
sphere {
	<27.634815, 55.509735, 63.400303> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1460
sphere {
	<28.003613, 54.648438, 64.997543> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1461
sphere {
	<28.044008, 55.521526, 64.382828> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1462
sphere {
	<27.255999, 55.774075, 63.919769> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1463
sphere {
	<28.610134, 54.924896, 64.854828> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1464
sphere {
	<28.138908, 55.820648, 64.511047> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1465
sphere {
	<27.195490, 55.916019, 64.511810> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1466
sphere {
	<28.954477, 55.339420, 64.560783> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1467
sphere {
	<28.231512, 56.127605, 64.619774> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1468
sphere {
	<27.437340, 56.009556, 65.124252> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1469
sphere {
	<29.017681, 55.840557, 64.174072> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1470
sphere {
	<28.318951, 56.442104, 64.711319> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1471
sphere {
	<27.931417, 56.125267, 65.516769> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1472
sphere {
	<28.782366, 56.356781, 63.888466> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1473
sphere {
	<28.390316, 56.762009, 64.796661> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1474
sphere {
	<28.533867, 56.338673, 65.632950> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1475
sphere {
	<28.377165, 56.813175, 63.849922> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1476
sphere {
	<28.437881, 57.085430, 64.885330> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1477
sphere {
	<29.050056, 56.652489, 65.465805> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1478
sphere {
	<27.940556, 57.192482, 64.085022> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1479
sphere {
	<28.475714, 57.406105, 64.988297> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1480
sphere {
	<29.361290, 57.078403, 65.074745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1481
sphere {
	<27.608486, 57.449871, 64.607300> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1482
sphere {
	<28.516808, 57.719845, 65.109329> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1483
sphere {
	<29.359138, 57.578922, 64.697388> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1484
sphere {
	<27.579933, 57.612858, 65.209396> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1485
sphere {
	<28.568279, 58.022213, 65.252899> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1486
sphere {
	<29.067553, 58.134220, 64.454536> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1487
sphere {
	<27.862118, 57.678608, 65.784348> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1488
sphere {
	<28.630507, 58.316799, 65.408676> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1489
sphere {
	<28.623848, 58.595039, 64.502266> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1490
sphere {
	<28.378071, 57.772324, 66.142868> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1491
sphere {
	<28.707109, 58.610123, 65.559921> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1492
sphere {
	<28.195513, 58.920223, 64.824188> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1493
sphere {
	<28.954838, 57.992630, 66.235596> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1494
sphere {
	<28.794165, 58.905262, 65.702103> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1495
sphere {
	<27.922220, 59.101601, 65.385483> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1496
sphere {
	<29.481621, 58.343605, 66.035614> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1497
sphere {
	<28.877918, 59.203896, 65.838806> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1498
sphere {
	<27.950350, 59.164684, 66.031845> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1499
sphere {
	<29.738886, 58.840298, 65.678169> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1500
sphere {
	<28.956043, 59.507580, 65.967415> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1501
sphere {
	<28.330730, 59.203815, 66.612389> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1502
sphere {
	<29.633442, 59.405319, 65.311806> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1503
sphere {
	<29.022274, 59.819195, 66.082520> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1504
sphere {
	<28.879078, 59.372639, 66.906593> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1505
sphere {
	<29.291815, 59.885212, 65.175804> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1506
sphere {
	<29.073914, 60.137737, 66.186447> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1507
sphere {
	<29.491896, 59.665775, 66.894760> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1508
sphere {
	<28.785759, 60.268513, 65.292534> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1509
sphere {
	<29.108164, 60.457756, 66.292061> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1510
sphere {
	<29.908308, 60.088257, 66.642036> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1511
sphere {
	<28.395624, 60.533051, 65.670990> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1512
sphere {
	<29.127827, 60.776138, 66.406548> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1513
sphere {
	<30.048019, 60.580372, 66.288513> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1514
sphere {
	<28.201748, 60.702534, 66.216263> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1515
sphere {
	<29.149803, 61.091511, 66.528656> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1516
sphere {
	<29.866249, 61.083317, 65.907471> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1517
sphere {
	<28.300928, 60.836525, 66.865593> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1518
sphere {
	<29.188644, 61.401649, 66.659454> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1519
sphere {
	<29.472866, 61.550636, 65.767204> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1520
sphere {
	<28.677647, 60.984882, 67.340836> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1521
sphere {
	<29.253288, 61.704720, 66.796021> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1522
sphere {
	<28.975163, 61.972683, 65.930046> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1523
sphere {
	<29.259945, 61.146690, 67.562759> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1524
sphere {
	<29.337414, 62.003246, 66.932877> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1525
sphere {
	<28.634708, 62.271965, 66.355652> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1526
sphere {
	<29.803080, 61.400761, 67.497879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1527
sphere {
	<29.425459, 62.303738, 67.062378> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1528
sphere {
	<28.486162, 62.405540, 66.981201> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1529
sphere {
	<30.229616, 61.818653, 67.193260> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1530
sphere {
	<29.508804, 62.612328, 67.174629> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1531
sphere {
	<28.656734, 62.503624, 67.576286> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1532
sphere {
	<30.342978, 62.316628, 66.834274> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1533
sphere {
	<29.583586, 62.928612, 67.270874> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1534
sphere {
	<29.152187, 62.609005, 68.052490> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1535
sphere {
	<30.102951, 62.848270, 66.481606> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1536
sphere {
	<29.648916, 63.248341, 67.362640> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1537
sphere {
	<29.713017, 62.804871, 68.198395> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1538
sphere {
	<29.712696, 63.317989, 66.419144> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1539
sphere {
	<29.694662, 63.570129, 67.457726> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1540
sphere {
	<30.259384, 63.137325, 68.084564> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1541
sphere {
	<29.260174, 63.676067, 66.621475> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1542
sphere {
	<29.716301, 63.890018, 67.566757> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1543
sphere {
	<30.602230, 63.598076, 67.737518> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1544
sphere {
	<28.891861, 63.907257, 67.098717> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1545
sphere {
	<29.729713, 64.204781, 67.691818> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1546
sphere {
	<30.619555, 64.096046, 67.382477> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1547
sphere {
	<28.793289, 64.056160, 67.686089> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1548
sphere {
	<29.748981, 64.511536, 67.834106> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1549
sphere {
	<30.359833, 64.629730, 67.118584> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1550
sphere {
	<28.983154, 64.148979, 68.259872> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1551
sphere {
	<29.783983, 64.806305, 67.996979> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1552
sphere {
	<29.913160, 65.101128, 67.105049> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1553
sphere {
	<29.419334, 64.253334, 68.675552> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1554
sphere {
	<29.846457, 65.093178, 68.165802> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1555
sphere {
	<29.424578, 65.447800, 67.394196> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1556
sphere {
	<30.005362, 64.441498, 68.836121> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1557
sphere {
	<29.935356, 65.380035, 68.322342> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1558
sphere {
	<29.122192, 65.652496, 67.917603> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1559
sphere {
	<30.529879, 64.761421, 68.726013> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1560
sphere {
	<30.037590, 65.674492, 68.454681> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1561
sphere {
	<29.098034, 65.765099, 68.545311> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1562
sphere {
	<30.856039, 65.196922, 68.420296> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1563
sphere {
	<30.143530, 65.975731, 68.568581> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1564
sphere {
	<29.366394, 65.856361, 69.098831> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1565
sphere {
	<30.898382, 65.687592, 68.072281> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1566
sphere {
	<30.243156, 66.280624, 68.677887> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1567
sphere {
	<29.901581, 65.900398, 69.476669> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1568
sphere {
	<30.656067, 66.261375, 67.824539> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1569
sphere {
	<30.320276, 66.591980, 68.786545> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1570
sphere {
	<30.532757, 66.091690, 69.563660> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1571
sphere {
	<30.231880, 66.734550, 67.853256> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1572
sphere {
	<30.369507, 66.906258, 68.902687> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1573
sphere {
	<31.037857, 66.439774, 69.387466> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1574
sphere {
	<29.806168, 67.073715, 68.158600> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1575
sphere {
	<30.402401, 67.218613, 69.030273> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1576
sphere {
	<31.299471, 66.916382, 69.085648> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1577
sphere {
	<29.529476, 67.257957, 68.661880> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1578
sphere {
	<30.434473, 67.529068, 69.162537> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1579
sphere {
	<31.257183, 67.437904, 68.699936> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1580
sphere {
	<29.512138, 67.371094, 69.315781> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1581
sphere {
	<30.474407, 67.835510, 69.301582> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1582
sphere {
	<30.886875, 67.974602, 68.459183> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1583
sphere {
	<29.854845, 67.440193, 69.900848> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1584
sphere {
	<30.519724, 68.137291, 69.449142> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1585
sphere {
	<30.386803, 68.406570, 68.549759> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1586
sphere {
	<30.410080, 67.572174, 70.202698> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1587
sphere {
	<30.569134, 68.435852, 69.601936> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1588
sphere {
	<29.929150, 68.683975, 68.947647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1589
sphere {
	<30.996941, 67.841377, 70.204163> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1590
sphere {
	<30.623268, 68.733696, 69.754562> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1591
sphere {
	<29.721996, 68.837357, 69.478600> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1592
sphere {
	<31.385611, 68.244812, 70.035568> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1593
sphere {
	<30.679958, 69.035301, 69.898285> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1594
sphere {
	<29.784389, 68.881783, 70.169472> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1595
sphere {
	<31.559364, 68.780449, 69.651482> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1596
sphere {
	<30.735920, 69.341278, 70.033020> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1597
sphere {
	<30.109200, 68.987892, 70.650635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1598
sphere {
	<31.437004, 69.292572, 69.396385> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1599
sphere {
	<30.777615, 69.652863, 70.159058> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1600
sphere {
	<30.677151, 69.163559, 70.965042> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1601
sphere {
	<31.038166, 69.778137, 69.255974> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1602
sphere {
	<30.801411, 69.969536, 70.277466> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1603
sphere {
	<31.205589, 69.490395, 70.988937> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1604
sphere {
	<30.559586, 70.125580, 69.373993> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1605
sphere {
	<30.818668, 70.284599, 70.401321> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1606
sphere {
	<31.630377, 69.914635, 70.723045> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1607
sphere {
	<30.099903, 70.380081, 69.790192> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1608
sphere {
	<30.829620, 70.590607, 70.545746> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1609
sphere {
	<31.751961, 70.463028, 70.366684> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1610
sphere {
	<29.900555, 70.491463, 70.383980> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1611
sphere {
	<30.841846, 70.883194, 70.715996> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1612
sphere {
	<31.556404, 71.011780, 70.106003> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1613
sphere {
	<30.002163, 70.544342, 70.997452> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1614
sphere {
	<30.862993, 71.167366, 70.899597> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1615
sphere {
	<31.130154, 71.487770, 70.048073> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1616
sphere {
	<30.392015, 70.599968, 71.495819> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1617
sphere {
	<30.901146, 71.446533, 71.087463> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1618
sphere {
	<30.631899, 71.841362, 70.268440> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1619
sphere {
	<30.924274, 70.765709, 71.747101> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1620
sphere {
	<30.967869, 71.723846, 71.269974> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1621
sphere {
	<30.231234, 72.037506, 70.761879> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1622
sphere {
	<31.482452, 71.070259, 71.725212> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1623
sphere {
	<31.052547, 72.003555, 71.441559> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1624
sphere {
	<30.115456, 72.126991, 71.366234> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1625
sphere {
	<31.850401, 71.495224, 71.506866> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1626
sphere {
	<31.140467, 72.288002, 71.603516> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1627
sphere {
	<30.316313, 72.094971, 72.030907> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1628
sphere {
	<31.949110, 72.072273, 71.157784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1629
sphere {
	<31.225967, 72.577713, 71.757561> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1630
sphere {
	<30.732616, 72.150459, 72.445442> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1631
sphere {
	<31.783749, 72.608238, 70.991295> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1632
sphere {
	<31.306641, 72.868347, 71.912125> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1633
sphere {
	<31.345257, 72.256248, 72.635292> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1634
sphere {
	<31.375389, 73.131386, 71.003647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1635
sphere {
	<31.377674, 73.158752, 72.071793> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1636
sphere {
	<31.958839, 72.565086, 72.528946> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1637
sphere {
	<30.882818, 73.474144, 71.326973> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1638
sphere {
	<31.437881, 73.450027, 72.234398> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1639
sphere {
	<32.303829, 73.063995, 72.251633> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1640
sphere {
	<30.573364, 73.606903, 71.877808> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1641
sphere {
	<31.491117, 73.741577, 72.399033> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1642
sphere {
	<32.315907, 73.653320, 71.939552> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1643
sphere {
	<30.558733, 73.620834, 72.523087> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1644
sphere {
	<31.544737, 74.025642, 72.575584> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1645
sphere {
	<32.050339, 74.223625, 71.798187> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1646
sphere {
	<30.834789, 73.626175, 73.060898> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1647
sphere {
	<31.605263, 74.301636, 72.762886> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1648
sphere {
	<31.605534, 74.676369, 71.891823> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1649
sphere {
	<31.347584, 73.680847, 73.431702> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1650
sphere {
	<31.680199, 74.576866, 72.945503> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1651
sphere {
	<31.174129, 74.964500, 72.243484> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1652
sphere {
	<31.923302, 73.890144, 73.552528> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1653
sphere {
	<31.767429, 74.856216, 73.116455> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1654
sphere {
	<30.893858, 75.082855, 72.825462> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1655
sphere {
	<32.455551, 74.264847, 73.392319> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1656
sphere {
	<31.858213, 75.145325, 73.267807> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1657
sphere {
	<30.937550, 75.124001, 73.493790> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1658
sphere {
	<32.703621, 74.764954, 73.067986> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1659
sphere {
	<31.948088, 75.443031, 73.402657> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1660
sphere {
	<31.269211, 75.170258, 74.005844> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1661
sphere {
	<32.654732, 75.307495, 72.784912> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1662
sphere {
	<32.022125, 75.748665, 73.528259> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1663
sphere {
	<31.844986, 75.279114, 74.332832> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1664
sphere {
	<32.319267, 75.837593, 72.632195> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1665
sphere {
	<32.080727, 76.060448, 73.647842> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1666
sphere {
	<32.376045, 75.532410, 74.377960> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1667
sphere {
	<31.912466, 76.245682, 72.733223> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1668
sphere {
	<32.123531, 76.371239, 73.775299> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1669
sphere {
	<32.870834, 75.932999, 74.160866> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1670
sphere {
	<31.470951, 76.529968, 73.105865> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1671
sphere {
	<32.147221, 76.679626, 73.913910> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1672
sphere {
	<33.067726, 76.478378, 73.806641> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1673
sphere {
	<31.226006, 76.635124, 73.693741> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1674
sphere {
	<32.167305, 76.984970, 74.059692> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1675
sphere {
	<32.939453, 76.997520, 73.509399> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1676
sphere {
	<31.284531, 76.732826, 74.296967> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1677
sphere {
	<32.200584, 77.282402, 74.218277> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1678
sphere {
	<32.537136, 77.514107, 73.362526> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1679
sphere {
	<31.648178, 76.807335, 74.825142> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1680
sphere {
	<32.245850, 77.571838, 74.388733> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1681
sphere {
	<32.029366, 77.912575, 73.530724> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1682
sphere {
	<32.220528, 76.938187, 75.093735> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1683
sphere {
	<32.295540, 77.857811, 74.563873> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1684
sphere {
	<31.595047, 78.132195, 73.986649> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1685
sphere {
	<32.794418, 77.233368, 75.074242> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1686
sphere {
	<32.352299, 78.141708, 74.740150> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1687
sphere {
	<31.412844, 78.198662, 74.624748> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1688
sphere {
	<33.181358, 77.691025, 74.834137> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1689
sphere {
	<32.412766, 78.426628, 74.913498> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1690
sphere {
	<31.531727, 78.227371, 75.202057> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1691
sphere {
	<33.282738, 78.217377, 74.599716> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1692
sphere {
	<32.466476, 78.715179, 75.083069> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1693
sphere {
	<31.948736, 78.226402, 75.709373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1694
sphere {
	<33.085968, 78.816444, 74.372330> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1695
sphere {
	<32.499287, 79.009415, 75.247482> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1696
sphere {
	<32.535713, 78.407547, 75.979324> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1697
sphere {
	<32.637577, 79.280365, 74.349373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1698
sphere {
	<32.515038, 79.307175, 75.408775> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1699
sphere {
	<33.010117, 78.757843, 76.002365> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1700
sphere {
	<32.180595, 79.576485, 74.563309> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1701
sphere {
	<32.516914, 79.599609, 75.579575> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1702
sphere {
	<33.382347, 79.278999, 75.796959> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1703
sphere {
	<31.753841, 79.708313, 75.027115> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1704
sphere {
	<32.506981, 79.885025, 75.762154> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1705
sphere {
	<33.424934, 79.858879, 75.525864> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1706
sphere {
	<31.582129, 79.716026, 75.638626> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1707
sphere {
	<32.502586, 80.159859, 75.959946> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1708
sphere {
	<33.150276, 80.429405, 75.321983> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1709
sphere {
	<31.727936, 79.701134, 76.257698> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1710
sphere {
	<32.506824, 80.421661, 76.175140> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1711
sphere {
	<32.644119, 80.881317, 75.357185> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1712
sphere {
	<32.173927, 79.723602, 76.723816> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1713
sphere {
	<32.516434, 80.679077, 76.395493> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1714
sphere {
	<32.174889, 81.116600, 75.626694> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1715
sphere {
	<32.656422, 79.940483, 76.973442> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1716
sphere {
	<32.541798, 80.940712, 76.609085> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1717
sphere {
	<31.751883, 81.185547, 76.145103> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1718
sphere {
	<33.167305, 80.332413, 76.980446> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1719
sphere {
	<32.586159, 81.208054, 76.812553> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1720
sphere {
	<31.639229, 81.157433, 76.814606> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1721
sphere {
	<33.465729, 80.858597, 76.755356> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1722
sphere {
	<32.637165, 81.484009, 77.002426> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1723
sphere {
	<31.857040, 81.144875, 77.421387> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1724
sphere {
	<33.456306, 81.419121, 76.529160> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1725
sphere {
	<32.676750, 81.772720, 77.174988> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1726
sphere {
	<32.319855, 81.216362, 77.854874> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1727
sphere {
	<33.176559, 81.959618, 76.391052> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1728
sphere {
	<32.700157, 82.068687, 77.338394> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1729
sphere {
	<32.853386, 81.465919, 78.054237> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1730
sphere {
	<32.720982, 82.352470, 76.433884> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1731
sphere {
	<32.718552, 82.364487, 77.503029> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1732
sphere {
	<33.368362, 81.852829, 77.966904> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1733
sphere {
	<32.201218, 82.618172, 76.749954> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1734
sphere {
	<32.732403, 82.655357, 77.676376> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1735
sphere {
	<33.649712, 82.415436, 77.671021> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1736
sphere {
	<31.850273, 82.688660, 77.330078> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1737
sphere {
	<32.739456, 82.936417, 77.865440> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1738
sphere {
	<33.581703, 83.012054, 77.436241> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1739
sphere {
	<31.829514, 82.678711, 77.934082> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1740
sphere {
	<32.754128, 83.203629, 78.073013> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1741
sphere {
	<33.238197, 83.539368, 77.329926> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1742
sphere {
	<32.091209, 82.677582, 78.500725> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1743
sphere {
	<32.782738, 83.459549, 78.293304> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1744
sphere {
	<32.718040, 83.948593, 77.483482> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1745
sphere {
	<32.619251, 82.723991, 78.868996> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1746
sphere {
	<32.817741, 83.709267, 78.519852> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1747
sphere {
	<32.228653, 84.122192, 77.902069> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1748
sphere {
	<33.202110, 82.976906, 78.983643> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1749
sphere {
	<32.859325, 83.956322, 78.748268> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1750
sphere {
	<31.952778, 84.097740, 78.508804> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1751
sphere {
	<33.642139, 83.438606, 78.883728> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1752
sphere {
	<32.909248, 84.209724, 78.967361> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1753
sphere {
	<31.997570, 84.021202, 79.147415> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1754
sphere {
	<33.796951, 83.996742, 78.710602> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1755
sphere {
	<32.955330, 84.478561, 79.168137> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1756
sphere {
	<32.335537, 83.983261, 79.687469> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1757
sphere {
	<33.668877, 84.586891, 78.553062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1758
sphere {
	<32.979103, 84.759560, 79.355690> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1759
sphere {
	<32.854252, 84.111404, 80.036476> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1760
sphere {
	<33.283089, 85.076012, 78.515060> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1761
sphere {
	<32.983128, 85.046631, 79.535751> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1762
sphere {
	<33.423134, 84.467133, 80.143784> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1763
sphere {
	<32.725899, 85.358162, 78.677887> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1764
sphere {
	<32.977539, 85.336502, 79.711517> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1765
sphere {
	<33.813343, 84.985657, 79.989853> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1766
sphere {
	<32.257175, 85.466011, 79.108627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1767
sphere {
	<32.964615, 85.626190, 79.887115> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1768
sphere {
	<33.893471, 85.581696, 79.701599> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1769
sphere {
	<32.045448, 85.465065, 79.718552> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1770
sphere {
	<32.948784, 85.908234, 80.073990> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1771
sphere {
	<33.658241, 86.143723, 79.490555> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1772
sphere {
	<32.143375, 85.469620, 80.315056> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1773
sphere {
	<32.935497, 86.179352, 80.277008> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1774
sphere {
	<33.156715, 86.600952, 79.456970> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1775
sphere {
	<32.542511, 85.509186, 80.820702> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1776
sphere {
	<32.928928, 86.447296, 80.484444> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1777
sphere {
	<32.637177, 86.841293, 79.672775> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1778
sphere {
	<33.031921, 85.741585, 81.109390> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1779
sphere {
	<32.940090, 86.720497, 80.684319> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1780
sphere {
	<32.181652, 86.934074, 80.156761> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1781
sphere {
	<33.541203, 86.137871, 81.129753> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1782
sphere {
	<32.968002, 86.997955, 80.877090> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1783
sphere {
	<32.024540, 86.935829, 80.804871> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1784
sphere {
	<33.852455, 86.657158, 80.905518> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1785
sphere {
	<32.999332, 87.277061, 81.066750> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1786
sphere {
	<32.167530, 86.944283, 81.377373> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1787
sphere {
	<33.872368, 87.205902, 80.703629> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1788
sphere {
	<33.020836, 87.564598, 81.244492> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1789
sphere {
	<32.601746, 87.007294, 81.887062> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1790
sphere {
	<33.591862, 87.752625, 80.511192> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1791
sphere {
	<33.028877, 87.860352, 81.409866> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1792
sphere {
	<33.114227, 87.256493, 82.135979> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1793
sphere {
	<33.134407, 88.145470, 80.511681> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1794
sphere {
	<33.025814, 88.156494, 81.574600> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1795
sphere {
	<33.663456, 87.680183, 82.090103> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1796
sphere {
	<32.555099, 88.381172, 80.782738> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1797
sphere {
	<33.014229, 88.449020, 81.745529> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1798
sphere {
	<33.917912, 88.196404, 81.882645> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1799
sphere {
	<32.195702, 88.489845, 81.268463> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1800
sphere {
	<32.997856, 88.730858, 81.932602> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1801
sphere {
	<33.893753, 88.793648, 81.628357> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1802
sphere {
	<32.083427, 88.488083, 81.869598> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1803
sphere {
	<32.986820, 88.999115, 82.139160> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1804
sphere {
	<33.582836, 89.315201, 81.472870> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1805
sphere {
	<32.257156, 88.491295, 82.469215> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1806
sphere {
	<32.987671, 89.263199, 82.351700> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1807
sphere {
	<33.060123, 89.699440, 81.512894> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1808
sphere {
	<32.718910, 88.569534, 82.939743> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1809
sphere {
	<32.993477, 89.530563, 82.559982> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1810
sphere {
	<32.516838, 89.882210, 81.819527> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1811
sphere {
	<33.284576, 88.846848, 83.149002> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1812
sphere {
	<33.002121, 89.804214, 82.759804> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1813
sphere {
	<32.146240, 89.893204, 82.361435> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1814
sphere {
	<33.750301, 89.325661, 83.092255> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1815
sphere {
	<33.017445, 90.089256, 82.942039> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1816
sphere {
	<32.089161, 89.907684, 83.008339> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1817
sphere {
	<33.934608, 89.861679, 82.862770> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1818
sphere {
	<33.032528, 90.388916, 83.099113> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1819
sphere {
	<32.356064, 89.969452, 83.614502> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1820
sphere {
	<33.818581, 90.414040, 82.569290> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1821
sphere {
	<33.038956, 90.696739, 83.240891> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1822
sphere {
	<32.836136, 90.159378, 83.995369> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1823
sphere {
	<33.423096, 90.878876, 82.393250> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1824
sphere {
	<33.026237, 91.005058, 83.380219> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1825
sphere {
	<33.388031, 90.513756, 84.106094> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1826
sphere {
	<32.882141, 91.205948, 82.464737> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1827
sphere {
	<32.990231, 91.312515, 83.518143> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1828
sphere {
	<33.791126, 91.036201, 83.944016> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1829
sphere {
	<32.355862, 91.339195, 82.813858> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1830
sphere {
	<32.945892, 91.618301, 83.657700> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1831
sphere {
	<33.891609, 91.551430, 83.674408> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1832
sphere {
	<32.077705, 91.446877, 83.317078> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1833
sphere {
	<32.905586, 91.921242, 83.804222> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1834
sphere {
	<33.700615, 92.060791, 83.306595> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1835
sphere {
	<32.059631, 91.531425, 83.981857> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1836
sphere {
	<32.881393, 92.218323, 83.965050> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1837
sphere {
	<33.232822, 92.509811, 83.133942> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1838
sphere {
	<32.371635, 91.655716, 84.533218> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1839
sphere {
	<32.872890, 92.511566, 84.134850> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1840
sphere {
	<32.713516, 92.811859, 83.249588> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1841
sphere {
	<32.841305, 91.890846, 84.851013> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1842
sphere {
	<32.883995, 92.806450, 84.301018> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1843
sphere {
	<32.238411, 93.020416, 83.640350> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1844
sphere {
	<33.346859, 92.231895, 84.896790> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1845
sphere {
	<32.918198, 93.107346, 84.452682> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1846
sphere {
	<31.991028, 93.127563, 84.254868> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1847
sphere {
	<33.741329, 92.691711, 84.673698> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1848
sphere {
	<32.960957, 93.414268, 84.590073> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1849
sphere {
	<32.061218, 93.236237, 84.830658> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1850
sphere {
	<33.856232, 93.183868, 84.379013> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1851
sphere {
	<32.997261, 93.724060, 84.722610> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1852
sphere {
	<32.434464, 93.312653, 85.365471> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1853
sphere {
	<33.672543, 93.742470, 84.057220> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1854
sphere {
	<33.014431, 94.039185, 84.845589> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1855
sphere {
	<32.961575, 93.553902, 85.658478> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1856
sphere {
	<33.254868, 94.172897, 83.938065> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1857
sphere {
	<33.007607, 94.355988, 84.965408> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1858
sphere {
	<33.474266, 93.914520, 85.662933> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1859
sphere {
	<32.739346, 94.500549, 84.067413> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1860
sphere {
	<32.983707, 94.668602, 85.093941> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1861
sphere {
	<33.852795, 94.428436, 85.387566> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1862
sphere {
	<32.240234, 94.653877, 84.505486> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1863
sphere {
	<32.953594, 94.977806, 85.229630> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1864
sphere {
	<33.890518, 94.936394, 85.089546> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1865
sphere {
	<32.046566, 94.771873, 85.044830> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1866
sphere {
	<32.925240, 95.283028, 85.374306> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1867
sphere {
	<33.601810, 95.459076, 84.733627> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1868
sphere {
	<32.155216, 94.845840, 85.713638> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1869
sphere {
	<32.901772, 95.584740, 85.526978> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1870
sphere {
	<33.164703, 95.847656, 84.654648> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1871
sphere {
	<32.480270, 95.025024, 86.165924> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1872
sphere {
	<32.886513, 95.887894, 85.677818> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1873
sphere {
	<32.577507, 96.099152, 84.806564> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1874
sphere {
	<33.015892, 95.327759, 86.431908> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1875
sphere {
	<32.886070, 96.196671, 85.817024> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1876
sphere {
	<32.146019, 96.268524, 85.228531> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1877
sphere {
	<33.482143, 95.741623, 86.397430> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1878
sphere {
	<32.901428, 96.513565, 85.935562> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1879
sphere {
	<31.961584, 96.414215, 85.858719> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1880
sphere {
	<33.788521, 96.213196, 86.083893> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1881
sphere {
	<32.924927, 96.836227, 86.036697> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1882
sphere {
	<32.101597, 96.591049, 86.438194> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1883
sphere {
	<33.798920, 96.680801, 85.703186> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1884
sphere {
	<32.945763, 97.160362, 86.133728> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1885
sphere {
	<32.533844, 96.765648, 86.891167> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1886
sphere {
	<33.505444, 97.173279, 85.368401> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1887
sphere {
	<32.948143, 97.485779, 86.227577> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1888
sphere {
	<33.105476, 97.073425, 87.066895> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1889
sphere {
	<32.998386, 97.561005, 85.283638> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1890
sphere {
	<32.932735, 97.811882, 86.318733> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1891
sphere {
	<33.577206, 97.487320, 86.933884> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1892
sphere {
	<32.463669, 97.831047, 85.494919> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1893
sphere {
	<32.909325, 98.133698, 86.422104> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1894
sphere {
	<33.823818, 97.957787, 86.601082> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1895
sphere {
	<32.091751, 98.039169, 85.951157> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1896
sphere {
	<32.884521, 98.451019, 86.538559> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1897
sphere {
	<33.763596, 98.451813, 86.182953> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1898
sphere {
	<31.978268, 98.176941, 86.590576> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1899
sphere {
	<32.870674, 98.763176, 86.669258> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1900
sphere {
	<33.392269, 98.933640, 85.895897> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1901
sphere {
	<32.205650, 98.316467, 87.176559> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1902
sphere {
	<32.868286, 99.067932, 86.817505> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1903
sphere {
	<32.840523, 99.330055, 85.906647> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1904
sphere {
	<32.700264, 98.492348, 87.552155> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1905
sphere {
	<32.873718, 99.371140, 86.968987> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1906
sphere {
	<32.356434, 99.564537, 86.198097> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1907
sphere {
	<33.207462, 98.819519, 87.664314> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1908
sphere {
	<32.895535, 99.678398, 87.109711> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1909
sphere {
	<32.028126, 99.737946, 86.731125> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1910
sphere {
	<33.631191, 99.231621, 87.507568> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1911
sphere {
	<32.934624, 99.992996, 87.228859> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1912
sphere {
	<32.001831, 99.886971, 87.362747> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1913
sphere {
	<33.833424, 99.697304, 87.166702> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1914
sphere {
	<32.975677, 100.316330, 87.320847> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1915
sphere {
	<32.283642, 100.067406, 87.919495> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1916
sphere {
	<33.745335, 100.168480, 86.787033> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1917
sphere {
	<33.002792, 100.646980, 87.388985> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1918
sphere {
	<32.778751, 100.324615, 88.252190> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1919
sphere {
	<33.393257, 100.595222, 86.526413> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1920
sphere {
	<33.006916, 100.980255, 87.449730> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1921
sphere {
	<33.315853, 100.646385, 88.281776> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1922
sphere {
	<32.896767, 100.973259, 86.507927> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1923
sphere {
	<32.996220, 101.311745, 87.519562> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1924
sphere {
	<33.762249, 101.044098, 88.010208> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1925
sphere {
	<32.373116, 101.266823, 86.806206> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1926
sphere {
	<32.980770, 101.638451, 87.607819> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1927
sphere {
	<33.918892, 101.500175, 87.609795> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1928
sphere {
	<32.090721, 101.491806, 87.315575> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1929
sphere {
	<32.965221, 101.956879, 87.722069> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1930
sphere {
	<33.756153, 102.009377, 87.201645> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1931
sphere {
	<32.101414, 101.634399, 87.943359> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1932
sphere {
	<32.953651, 102.268532, 87.854713> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1933
sphere {
	<33.361694, 102.453972, 87.019089> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1934
sphere {
	<32.389927, 101.791061, 88.449211> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1935
sphere {
	<32.950436, 102.579681, 87.989067> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1936
sphere {
	<32.789597, 102.771530, 87.074448> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1937
sphere {
	<32.913033, 102.052788, 88.776573> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1938
sphere {
	<32.964005, 102.894341, 88.113884> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1939
sphere {
	<32.324692, 103.007111, 87.422745> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1940
sphere {
	<33.421383, 102.414963, 88.792267> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1941
sphere {
	<32.987564, 103.213646, 88.225098> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1942
sphere {
	<32.066357, 103.161400, 88.006340> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1943
sphere {
	<33.824230, 102.870850, 88.510788> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1944
sphere {
	<33.013123, 103.539085, 88.315262> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1945
sphere {
	<32.134304, 103.357742, 88.621780> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1946
sphere {
	<33.913750, 103.324379, 88.110504> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1947
sphere {
	<33.032722, 103.871086, 88.379005> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1948
sphere {
	<32.514946, 103.591476, 89.122635> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1949
sphere {
	<33.689392, 103.771408, 87.702316> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1950
sphere {
	<33.033878, 104.207039, 88.422966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1951
sphere {
	<33.024448, 103.928200, 89.329178> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1952
sphere {
	<33.246227, 104.130402, 87.502014> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1953
sphere {
	<33.011082, 104.542473, 88.463562> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1954
sphere {
	<33.523048, 104.313614, 89.228149> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1955
sphere {
	<32.712643, 104.447113, 87.568527> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1956
sphere {
	<32.971397, 104.875771, 88.510788> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1957
sphere {
	<33.837326, 104.747803, 88.875603> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1958
sphere {
	<32.247444, 104.687439, 87.928207> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1959
sphere {
	<32.926346, 105.205215, 88.574966> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1960
sphere {
	<33.854546, 105.201424, 88.381371> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1961
sphere {
	<32.030190, 104.905525, 88.495712> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1962
sphere {
	<32.876125, 105.530380, 88.656570> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1963
sphere {
	<33.532837, 105.624947, 87.979042> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1964
sphere {
	<32.148945, 105.109978, 89.096512> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1965
sphere {
	<32.832314, 105.852982, 88.750351> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1966
sphere {
	<33.015392, 105.979057, 87.828560> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1967
sphere {
	<32.500504, 105.383957, 89.504868> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1968
sphere {
	<32.800262, 106.174339, 88.853485> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1969
sphere {
	<32.445759, 106.234619, 87.976074> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1970
sphere {
	<32.999516, 105.739601, 89.672287> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1971
sphere {
	<32.780148, 106.499023, 88.947762> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1972
sphere {
	<32.016983, 106.430672, 88.389015> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1973
sphere {
	<33.429928, 106.177444, 89.558891> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1974
sphere {
	<32.766006, 106.827599, 89.030060> 0.150000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle 1975
sphere {
	<31.844877, 106.606087, 88.990829> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle 1976
sphere {
	<33.686935, 106.653214, 89.173843> 0.400000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
