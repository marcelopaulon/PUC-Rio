#pragma once
#include "structures.h"

#include "Image.h"

class RayTracer
{
private:
	Scene scene;
	vec3f eye;

public:
	RayTracer(Scene _scene, vec3f _eye);
	Pixel trace(Ray ray, int depth);
};