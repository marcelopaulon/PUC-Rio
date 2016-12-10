#pragma once

#include <string>
#include "Vec3f.h"

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
	RGB backgroundColor; // If no texture
	RGB ambientColor;
	Texture texture;
};

struct Camera
{
	vec3f eyePos;
	vec3f refPos;
	vec3f up;
	double fov;

	double nearPos;
	double farPos;

	int imgWidth;
	int imgHeight;
};

struct Material
{
	std::string name;
	RGB kd;
	RGB ks;
	double n; // Specular
	double reflectionCoefficient; // Mirror
	double refractionCoefficient; // Refraction, if opacity < 1
	double opacity; // 0 -> transparent; 1 -> opaque
	Texture texture;
};

struct Light
{
	vec3f pos;
	RGB color;
};

// R(t) = o + t*d
struct Ray
{
	vec3f o;
	vec3f d;
};