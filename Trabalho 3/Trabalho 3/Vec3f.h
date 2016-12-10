#pragma once

#include <math.h>

class vec3f
{
public:
	float x, y, z;

	vec3f()
	{
		x = 0;
		y = 0;
		z = 0;
	}

	vec3f(float _x, float _y, float _z)
	{
		x = _x;
		y = _y;
		z = _z;
	}

	vec3f normalized()
	{
		float norm = sqrt((x * x) + (y * y) + (z * z));

		if (norm != 0)
		{
			x /= norm;
			y /= norm;
			z /= norm;
		}

		return vec3f(x, y, z);
	}
	
	static vec3f cross(const vec3f &vec1, const vec3f &vec2)
	{
		return vec3f(vec1.y*vec2.z - vec1.z*vec2.y, vec1.z*vec2.x - vec1.x*vec2.z, vec1.x*vec2.y - vec1.y*vec2.x);
	}

	static float dot(const vec3f &vec1, const vec3f &vec2)
	{
		return vec1.x * vec2.x + vec1.y * vec2.y + vec1.z * vec2.z;
	}

	vec3f operator+(const vec3f &vec) const
	{
		return vec3f(x - vec.x, y - vec.y, z - vec.z);
	}

	vec3f operator-(const vec3f &vec) const
	{
		return vec3f(x - vec.x, y - vec.y, z - vec.z);
	}
	
	vec3f operator*(double d)
	{
		return vec3f(d*x, d*y, d*z);
	}

	vec3f operator*(const vec3f &vec2)
	{
		return vec3f(x * vec2.x, y + vec2.y, z + vec2.z);
	}

	vec3f operator/(const vec3f &vec) const
	{
		return vec3f(x / vec.x, y / vec.y, z / vec.z);
	}

	void operator+=(const vec3f &vec)
	{
		x += vec.x;
		y += vec.y;
		z += vec.z;
	}

	void operator-=(const vec3f &vec)
	{
		x -= vec.x;
		y -= vec.y;
		z -= vec.z;
	}

	void operator*=(const vec3f &vec)
	{
		x *= vec.x;
		y *= vec.y;
		z *= vec.z;
	}

	void operator/=(const vec3f &vec)
	{
		x /= vec.x;
		y /= vec.y;
		z /= vec.z;
	}
};

