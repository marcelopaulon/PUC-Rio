#include "RayTracer.h"

#include "structures.h"
#include "SceneObject.h"

#define MAX_DEPTH 10


RayTracer::RayTracer(Scene _scene, vec3f _eye, std::vector<Sphere> _spheresList, std::vector<Box> _boxesList, std::vector<Triangle> _trianglesList, std::vector<Light> _lightsList)
{
	scene = _scene;
	eye = _eye;

	spheresList = _spheresList;
	boxesList = _boxesList;
	trianglesList = _trianglesList;
	
	lightsList = _lightsList;
}

IntersectedObjectData RayTracer::getIntersection(Ray ray, double minOpacity)
{
	IntersectedObjectData data;
	data.type = NONE;

	float t = std::numeric_limits<float>::infinity();

	for (const Sphere& sphere : spheresList) {
		double t1, t2;
		if (sphere.material->opacity >= minOpacity && sphere.intersect(ray, t1, t2))
		{
			if (t1 < EPSILON) {
				t1 = t2;
				if (t1 < EPSILON)
				{
					continue;
				}
			}
			else
			{
				if (t1 > t2 && t2 >= EPSILON)
				{
					t1 = t2;
				}
			}
			
			if (t1 < t)
			{
				t = t1;
				data.type = SPHERE;
				data.sphere = sphere;
				data.material = sphere.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = sphere.calcNormal(data.intersectionPosition);
			}
		}
	}

	for (const Box& box : boxesList) {
		double t1, t2;
		if (box.material->opacity >= minOpacity && box.intersect(ray, t1, t2))
		{
			if (t1 < EPSILON) {
				t1 = t2;
				if (t1 < EPSILON)
				{
					continue;
				}
			}
			else
			{
				if (t1 > t2 && t2 >= EPSILON)
				{
					t1 = t2;
				}
			}

			if (t1 > t2)
			{
				t1 = t2;
			}

			if (t1 < t)
			{
				t = t1;
				data.type = BOX;
				data.box = box;
				data.material = box.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = box.calcNormal(data.intersectionPosition);
			}
		}
	}

	for (Triangle& triangle : trianglesList) {
		double t1;
		if (triangle.material->opacity >= minOpacity && triangle.intersect(ray, t1))
		{
			if (t1 < EPSILON)
			{
				continue;
			}

			if (t1 < t)
			{
				t = t1;
				data.type = TRIANGLE;
				data.triangle = triangle;
				data.material = triangle.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = triangle.calcNormal();
			}
		}
	}

	return data;
}

bool RayTracer::shadowing(vec3f position, vec3f L)
{
	IntersectedObjectData intersection = getIntersection(Ray(position, L), 1);

	if (intersection.type == NONE)
	{
		return false;
	}

	return true;
}

Pixel RayTracer::shade(Ray ray, IntersectedObjectData intersection, int depth)
{	
	Pixel color = Pixel();
	vec3f kd = intersection.material->kd;
	vec3f ks = intersection.material->ks;
	vec3f normal = intersection.intersectionNormal;
	
	/*if (!obj.material.texture.empty()) {
		Pixel pixel = getTexturePixel(obj.material.texture, obj.u, obj.v);
		kd = Vec3f(pixel.v0(), pixel.v1(), pixel.v2());
	}*/
	
	vec3f v = (ray.o - intersection.intersectionPosition).normalized();	// Vector ^v -> intersection -> eye
	vec3f Ia = scene.ambientColor * kd;	// Ambient Color * diffuse color
	
	vec3f I = Ia;

	for (Light& light : lightsList) 
	{
		vec3f L = (light.pos - intersection.intersectionPosition).normalized(); // ^L

		float nl = vec3f::dot(normal, L);
		if (nl > 0 && !shadowing(intersection.intersectionPosition, L))
		{
			vec3f Id = light.color * kd * nl;

			vec3f rr = normal * (2 * vec3f::dot(v, normal)) - v;
			vec3f Is = light.color * ks * pow(vec3f::dot(rr, L), intersection.material->n_specular);

			I += Id + Is;
		}
	}

	color = Pixel(I.x, I.y, I.z);
	if (depth >= MAX_DEPTH)
	{
		return color;
	}

	if (intersection.material->isReflective()) 
	{
		vec3f r = normal * (2 * vec3f::dot(v, normal)) - v;
		Pixel rColor = trace(Ray(intersection.intersectionPosition, r), depth + 1);
		color += rColor * intersection.material->reflectionCoefficient; // k * Ir;Ig;Ib
	}

	if (!intersection.material->isOpaque()) 
	{
		vec3f vt = (normal * vec3f::dot(v, normal)) - v;
		float sinThetaI = vec3f::norm(vt);
		float sinThetaT = sinThetaI / intersection.material->refractionCoefficient;
		float cosThetaT = std::sqrt(1 - sinThetaT * sinThetaT);
		vec3f rt = vt.normalized() * sinThetaT - normal * cosThetaT;
		Pixel rColor = trace(Ray(intersection.intersectionPosition, rt), depth + 1);
		color += rColor * (1 - intersection.material->opacity);
	}

	return color;

}

Pixel RayTracer::trace(Ray ray, int depth)
{
	IntersectedObjectData intersection = getIntersection(ray, 0);

	if (intersection.type != NONE)
	{
		return shade(ray, intersection, depth);
	}
	else
	{
		// Todo - check has texture
		Pixel pixel;
		pixel[0] = scene.backgroundColor.x;
		pixel[1] = scene.backgroundColor.y;
		pixel[2] = scene.backgroundColor.z;

		return pixel;
	}
}