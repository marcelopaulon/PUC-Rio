#pragma once

#include "structures.h"

struct Sphere
{
	Material *material;
	double radius;
	vec3f pos;
};

struct Box
{
	Material *material;
	vec3f p1; // Lower left corner
	vec3f p2; // Upper right corner
};

struct Triangle
{
	Material *material;

	vec3f v1;
	vec3f v2;
	vec3f v3;

	pixelPos v1TexturePos;
	pixelPos v2TexturePos;
	pixelPos v3TexturePos;
};