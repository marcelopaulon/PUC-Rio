#include "RayTracer.h"

#include "structures.h"
#include "SceneObject.h"

RayTracer::RayTracer(Scene _scene, vec3f _eye, std::vector<Sphere> _spheresList, std::vector<Box> _boxesList, std::vector<Triangle> _trianglesList, std::vector<Light> _lightsList)
{
	scene = _scene;
	eye = _eye;

	spheresList = _spheresList;
	boxesList = _boxesList;
	trianglesList = _trianglesList;
	
	lightsList = _lightsList;
}

IntersectedObjectData RayTracer::getIntersection(Ray ray)
{
	IntersectedObjectData data;
	data.type = NONE;

	float t = std::numeric_limits<float>::infinity();

	for (const Sphere& sphere : spheresList) {
		double t1, t2;
		if (sphere.intersect(ray, t1, t2))
		{
			if (t1 <= t2 && t1 < t)
			{
				t = t1;
				data.type = SPHERE;
				data.sphere = sphere;
				data.material = sphere.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = sphere.calcNormal(data.intersectionPosition);
			}
			else if (t2 < t1 && t2 < t)
			{
				t = t2;
				data.type = SPHERE;
				data.sphere = sphere;
				data.material = sphere.material;
				data.intersectionPosition = ray.o + ray.d * t2;
				data.intersectionNormal = sphere.calcNormal(data.intersectionPosition);
			}
		}
	}

	for (const Box& box : boxesList) {
		double t1, t2;
		if (box.intersect(ray, t1, t2))
		{
			if (t1 <= t2 && t1 < t)
			{
				t = t1;
				data.type = BOX;
				data.box = box;
				data.material = box.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = box.calcNormal(data.intersectionPosition);
			}
			else if (t2 < t1 && t2 < t)
			{
				t = t2;
				data.type = BOX;
				data.box = box;
				data.material = box.material;
				data.intersectionPosition = ray.o + ray.d * t2;
				data.intersectionNormal = box.calcNormal(data.intersectionPosition);
			}
		}
	}

	for (Triangle& triangle : trianglesList) {
		double t1;
		if (triangle.intersect(ray, t1))
		{
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

Pixel RayTracer::shade(Ray ray, IntersectedObjectData intersection, int depth)
{
	vec3f kd = intersection.material->kd;

	/*if (!obj.material.texture.empty()) {
		Pixel pixel = getTexturePixel(obj.material.texture, obj.u, obj.v);
		kd = Vec3f(pixel.v0(), pixel.v1(), pixel.v2());
	}*/

	vec3f v = (ray.o - intersection.intersectionPosition).normalized();
	vec3f Ia = scene.ambientColor * kd;
	vec3f Ip = Ia;

	vec3f rr = intersection.intersectionNormal * (2 * vec3f::dot(v, intersection.intersectionNormal)) - v;
	for (Light& light : lightsList) {
		IntersectedObjectData intersectionTemp = getIntersection(Ray(intersection.intersectionPosition, light.pos - intersection.intersectionPosition));

		if (intersectionTemp.type != NONE) {
			vec3f l = (light.pos - intersectionTemp.intersectionPosition).normalized();
			vec3f Is = light.color * intersectionTemp.material->ks * pow(vec3f::dot(rr, l), intersectionTemp.material->n);
			vec3f Id = light.color * kd * std::max<float>(vec3f::dot(intersectionTemp.intersectionNormal, l), 0);
			Ip += Is + Id;
		}
	}

	Pixel src = Pixel(Ip.x, Ip.y, Ip.z);
	if (depth > 10)
		return src;

	if (intersection.material->reflectionCoefficient > 0) {
		vec3f r = intersection.intersectionNormal * (2 * vec3f::dot(v, intersection.intersectionNormal)) - v;
		Pixel rColor = trace(Ray(intersection.intersectionPosition, r), depth + 1);
		src += rColor * intersection.material->reflectionCoefficient;
	}

	if (intersection.material->opacity < 1) {
		vec3f vt = (intersection.intersectionNormal * vec3f::dot(v, intersection.intersectionNormal)) - v;
		float sinThetaI = std::sqrt(vec3f::dot(vt, vt));
		float sinTheta = sinThetaI / intersection.material->refractionCoefficient;
		float cosTheta = std::sqrt(1 - sinTheta * sinTheta);
		vec3f r = vt.normalized() * sinTheta - intersection.intersectionNormal * cosTheta;
		Pixel tColor = trace(Ray(intersection.intersectionPosition, r), depth + 1);
		src += tColor * (1 - intersection.material->opacity);
	}

	return src;

}

Pixel RayTracer::trace(Ray ray, int depth)
{
	IntersectedObjectData intersection = getIntersection(ray);

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
	}

	return Pixel();
}