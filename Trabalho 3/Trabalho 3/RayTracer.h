#pragma once
#include "structures.h"
#include "SceneObject.h"
#include "Image.h"

#include <vector>

class RayTracer
{
private:
	Scene scene;
	vec3f eye;

	/**
	* Lista de esferas carregados.
	*/
	std::vector<Sphere> spheresList;

	/**
	* Lista de boxes carregados.
	*/
	std::vector<Box> boxesList;

	/**
	* Lista de triângulos carregados.
	*/
	std::vector<Triangle> trianglesList;

	/**
	* Lista de luzes na cena.
	*/
	std::vector<Light> lightsList;

public:
	RayTracer(Scene _scene, vec3f _eye, std::vector<Sphere> _spheresList, std::vector<Box> _boxesList, std::vector<Triangle> _trianglesList, std::vector<Light> _lightsList);

	IntersectedObjectData getIntersection(Ray ray);

	Pixel shade(Ray ray, IntersectedObjectData intersection, int depth);

	Pixel trace(Ray ray, int depth);
};