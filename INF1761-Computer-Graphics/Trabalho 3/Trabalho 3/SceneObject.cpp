#include "SceneObject.h"

bool Sphere::intersect(const Ray& ray, double& t1, double& t2) const
{
	vec3f oc = ray.o - pos;
	double a = vec3f::dot(ray.d, ray.d);
	double b = vec3f::dot(ray.d * 2, oc);
	double c = vec3f::dot(oc, oc) - (radius * radius);

	double delta = (b * b) - (4 * a * c);

	if (delta >= 0)
	{
		t1 = (-b - sqrt(delta)) / (2.0*a);
		t2 = (-b + sqrt(delta)) / (2.0*a);

		if (t1 > 0 || t2 > 0)
		{
			return true;
		}
	}

	return false;
}

vec3f Sphere::calcNormal(const vec3f& p) const
{
	return (p - pos).normalized();
}


bool Box::intersect(const Ray& ray, double& t1, double& t2) const
{
	float minTx = (std::min<float>(bottomLeft.x, topRight.x) - ray.o.x) / ray.d.x;
	float maxTx = (std::max<float>(bottomLeft.x, topRight.x) - ray.o.x) / ray.d.x;

	if (minTx > maxTx)
	{
		float temp = maxTx;
		maxTx = minTx;
		minTx = temp;
	}

	float minTy = (std::min<float>(bottomLeft.y, topRight.y) - ray.o.y) / ray.d.y;
	float maxTy = (std::max<float>(bottomLeft.y, topRight.y) - ray.o.y) / ray.d.y;

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

	float minTz = (std::min<float>(bottomLeft.z, topRight.z) - ray.o.z) / ray.d.z;
	float maxTz = (std::max<float>(bottomLeft.z, topRight.z) - ray.o.z) / ray.d.z;

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

vec3f Box::calcNormal(vec3f& p) const
{
	if (fabs(p.x - bottomLeft.x) < EPSILON)
	{
		return vec3f(-1.0, 0.0, 0.0);
	}
	else if (fabs(p.x - topRight.x) < EPSILON)
	{
		return vec3f(1.0, 0.0, 0.0);
	}
	else if (fabs(p.y - bottomLeft.y) < EPSILON)
	{
		return vec3f(0.0, -1.0, 0.0);
	}
	else if (fabs(p.y - topRight.y) < EPSILON)
	{
		return vec3f(0.0, 1.0, 0.0);
	}
	else if (fabs(p.z - bottomLeft.z) < EPSILON)
	{
		return vec3f(0.0, 0.0, -1.0);
	}
	else if (fabs(p.z - topRight.z) < EPSILON)
	{
		return vec3f(0.0, 0.0, 1.0);
	}
	else
	{
		return vec3f(0.0, 0.0, 0.0);
	}
}

bool Triangle::intersect(const Ray& ray, double& t)
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

vec3f Triangle::calcNormal() const
{
	return vec3f::cross(v2 - v1, v3 - v2).normalized();
}