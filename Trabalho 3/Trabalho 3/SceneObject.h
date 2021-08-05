#pragma once

#include "structures.h"

#include <algorithm>    // std::min

#define EPSILON 1.0e-1

class Sphere
{
public:
	Material *material;
	double radius;
	vec3f pos;

	bool intersect(const Ray& ray, double& t1, double& t2) const;
	
	vec3f calcNormal(const vec3f& p) const;
};

class Box
{
public:
	Material *material;
	vec3f bottomLeft; // Bottom left corner
	vec3f topRight; // Upper right corner

	bool intersect(const Ray& ray, double& t1, double& t2) const;
	
	vec3f Box::calcNormal(vec3f& p) const;
};

class Triangle
{
public:
	Material *material;

	vec3f v1;
	vec3f v2;
	vec3f v3;

	pixelPos v1TexturePos;
	pixelPos v2TexturePos;
	pixelPos v3TexturePos;

	bool intersect(const Ray& ray, double& t);
	vec3f calcNormal() const;

};

enum ObjType
{
	NONE,
	SPHERE,
	BOX,
	TRIANGLE
};

struct IntersectedObjectData
{
	ObjType type;

	//union {
		Sphere sphere;
		Box box;
		Triangle triangle;
	//} obj;

	vec3f intersectionPosition;

	vec3f intersectionNormal;

	Material * material;

	float u, v;
};

class SceneObject
{
public:

};