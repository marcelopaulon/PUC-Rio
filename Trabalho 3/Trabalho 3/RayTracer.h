#pragma once
#include "structures.h"
#include "SceneObject.h"
#include "Image.h"

#include <vector>

class RayTracer
{
private:
	Scene *scene;
	Camera *camera;
	vec3f *eye;

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
	RayTracer(Scene *_scene, Camera *_camera, vec3f *_eye, std::vector<Sphere> _spheresList, std::vector<Box> _boxesList, std::vector<Triangle> _trianglesList, std::vector<Light> _lightsList);

	IntersectedObjectData getIntersection(Ray ray, double minOpacity);

	bool shadowing(vec3f position, vec3f L);

	Pixel shade(Ray ray, IntersectedObjectData intersection, int depth);

	Pixel getTexturePixel(Texture *texture, float u, float v);

	Pixel trace(Ray ray, int depth);
};