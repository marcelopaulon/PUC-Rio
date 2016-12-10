#include "RayTracer.h"

RayTracer::RayTracer(Scene _scene, vec3f _eye)
{
	scene = _scene;
	eye = _eye;
}

Pixel RayTracer::trace(Ray ray, int depth)
{
	
}