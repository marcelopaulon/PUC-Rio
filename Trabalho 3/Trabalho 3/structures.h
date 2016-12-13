#pragma once

#include <string>
#include "Vec3f.h"
#include "Image.h"

struct RGB
{
	float r, g, b;
};

struct vec3i
{
	int x, y, z;
};

struct pixelPos
{
	int x, y;
};

struct Texture
{
	std::string path;
	Image image;
};

struct Scene
{
	vec3f backgroundColor; // If no texture
	vec3f ambientColor;
	Texture texture;

	int currentX, currentY;
};

struct Camera
{
	vec3f eyePos;
	vec3f refPos;
	vec3f up;
	double fovY;

	double nearPos;
	double farPos;

	int imgWidth;
	int imgHeight;
};

struct Material
{
	std::string name;
	vec3f kd;
	vec3f ks;
	double n_specular; // Specular
	double reflectionCoefficient; // Mirror
	double refractionCoefficient; // Refraction, if opacity < 1
	double opacity; // 0 -> transparent; 1 -> opaque
	Texture texture;

	bool isReflective()
	{
		if (reflectionCoefficient > 0) return true;
		return false;
	}

	bool isOpaque()
	{
		if (opacity == 1.0) return true;
		return false;
	}
};

struct Light
{
	vec3f pos;
	vec3f color;
};

// R(t) = o + t*d
struct Ray
{
	vec3f o;
	vec3f d;

	Ray()
	{

	}

	Ray(vec3f _o, vec3f _d)
	{
		o = _o;
		d = _d;
	}
};