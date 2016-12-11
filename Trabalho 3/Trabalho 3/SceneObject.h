#pragma once

#include "structures.h"

#include <algorithm>    // std::min

#define EPSILON 1.0e-3

struct Sphere
{
	Material *material;
	double radius;
	vec3f pos;

	bool intersect(const Ray& ray, double& t1, double& t2) const
	{
		vec3f oc = ray.o - pos;
		double a = vec3f::dot(ray.d, ray.d);
		double b = vec3f::dot(ray.d * 2, oc);
		double c = vec3f::dot(oc, oc) - (radius * radius);

		double delta = (b * b) - (4 * a * c);

		if (delta < 0)
		{
			return false;
		}

		t1 = (-b - sqrt(delta))/(2.0*a);
		t2 = (-b + sqrt(delta))/(2.0*a);

		return true;
	}

	vec3f calcNormal(const vec3f& p) const
	{
		return (p - pos).normalized();
	}
};

struct Box
{
	Material *material;
	vec3f p1; // Bottom left corner
	vec3f p2; // Upper right corner

	bool intersect(const Ray& ray, double& t1, double& t2) const
	{
		float minTx = (std::min<float>(p1.x, p2.x) - ray.o.x) / ray.d.x;
		float maxTx = (std::max<float>(p1.x, p2.x) - ray.o.x) / ray.d.x;

		if (minTx > maxTx)
		{
			float temp = maxTx;
			maxTx = minTx;
			minTx = temp;
		}

		float minTy = (std::min<float>(p1.y, p2.y) - ray.o.y) / ray.d.y;
		float maxTy = (std::max<float>(p1.y, p2.y) - ray.o.y) / ray.d.y;

		if (minTy > maxTy)
		{
			float temp = maxTy;
			maxTy = minTy;
			minTy = temp;
		}

		if ((minTx > maxTy) || (minTy > maxTx))
		{
			return false;
		}

		if (minTy > minTx)
		{
			minTx = minTy;
		}

		if (maxTy < maxTx)
		{
			maxTx = maxTy;
		}

		float minTz = (std::min<float>(p1.z, p2.z) - ray.o.z) / ray.d.z;
		float maxTz = (std::max<float>(p1.z, p2.z) - ray.o.z) / ray.d.z;

		if (minTz > maxTz)
		{
			float temp = maxTz;
			maxTz = minTz;
			minTz = temp;
		}

		if ((minTx > maxTz) || (minTz > maxTx))
		{
			return false;
		}

		if (minTz > minTx)
		{
			minTx = minTz;
		}

		if (maxTz < maxTx)
		{
			maxTx = maxTz;
		}

		t1 = minTx;
		t2 = maxTx;

		return true;
	}

	vec3f calcNormal(const vec3f& vec) const {
		if (fabs(vec.x - std::min<float>(p1.x, p2.x)) < EPSILON)
		{
			return vec3f(-1, 0, 0);
		}
		else if (fabs(vec.x - std::max<float>(p1.x, p2.x)) < EPSILON)
		{
			return vec3f(1, 0, 0);
		}
		else if (fabs(vec.y - std::min<float>(p1.y, p2.y)) < EPSILON)
		{
			return vec3f(0, -1, 0);
		}
		else if (fabs(vec.y - std::max<float>(p1.y, p2.y)) < EPSILON)
		{
			return vec3f(0, 1, 0);
		}
		else if (fabs(vec.z - std::min<float>(p1.z, p2.z)) < EPSILON)
		{
			return vec3f(0, 0, -1);
		}
		else if (fabs(vec.z - std::max<float>(p1.z, p2.z)) < EPSILON)
		{
			return vec3f(0, 0, 1);
		}
		
		return vec3f(0, 0, 0);
	}
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

	bool intersect(const Ray& ray, double& t)
	{
		vec3f n = calcNormal();
		t = vec3f::dot((v1 - ray.o), n) / vec3f::dot(ray.d, n);

		vec3f pi = ray.o + ray.d * t;

		double A1 = vec3f::dot(n, vec3f::cross(v3 - v2, pi - v2)) / 2.0;
		double A2 = vec3f::dot(n, vec3f::cross(v1 - v3, pi - v3)) / 2.0;
		double A3 = vec3f::dot(n, vec3f::cross(v2 - v1, pi - v1)) / 2.0;
		double AT = A1 + A2 + A3;

		double L1 = A1 / AT;
		double L2 = A2 / AT;
		double L3 = A3 / AT;
		return L1 >= 0 && L2 >= 0 && L3 >= 0 && L1 <= 1 && L2 <= 1 && L3 <= 1;
	}

	vec3f calcNormal() const
	{
		return vec3f::cross(v2 - v1, v3 - v2).normalized();
	}
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
};

class SceneObject
{
public:

};