#include "RayTracer.h"

#include "structures.h"
#include "SceneObject.h"

#include <iostream>

#define MAX_DEPTH 10

#define PI 3.14159265359

RayTracer::RayTracer(Scene *_scene, Camera *_camera, vec3f *_eye, std::vector<Sphere> _spheresList, std::vector<Box> _boxesList, std::vector<Triangle> _trianglesList, std::vector<Light> _lightsList)
{
	scene = _scene;
	camera = _camera;
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

	double t = std::numeric_limits<double>::infinity();

	for (const Sphere& sphere : spheresList) {
		double t1, t2;
		if (sphere.material->opacity >= minOpacity && sphere.intersect(ray, t1, t2))
		{
			if (t1 > t2)
			{
				t1 = t2;
			}

			if (t1 < EPSILON) {
				continue;
			}

			if (t1 < t)
			{
				t = t1;
				data.type = SPHERE;
				data.sphere = sphere;
				data.material = sphere.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = sphere.calcNormal(data.intersectionPosition);

				float phi = (float)(std::atan2(data.intersectionNormal.y, data.intersectionNormal.x));
				float theta = (float)(std::atan2(std::hypot(data.intersectionNormal.x, data.intersectionNormal.y), data.intersectionNormal.z));
				data.u = (float)((1 + phi / PI) / 2.0);
				data.v = (float)(theta / PI);
			}
		}
	}

	for (const Box& box : boxesList) {
		double t1, t2;
		if (box.material->opacity >= minOpacity && box.intersect(ray, t1, t2))
		{
			if (t1 > t2)
			{
				t1 = t2;
			}

			if (t1 < EPSILON) {
				continue;
			}

			if (t1 < t)
			{
				t = t1;
				data.type = BOX;
				data.box = box;
				data.material = box.material;
				data.intersectionPosition = ray.o + ray.d * t1;
				data.intersectionNormal = box.calcNormal(data.intersectionPosition);

				float minX = std::min(box.bottomLeft.x, box.topRight.x);
				float maxX = std::max(box.bottomLeft.x, box.topRight.x);
				float minY = std::min(box.bottomLeft.y, box.topRight.y);
				float maxY = std::max(box.bottomLeft.y, box.topRight.y);
				float minZ = std::min(box.bottomLeft.z, box.topRight.z);
				float maxZ = std::max(box.bottomLeft.z, box.topRight.z);

				if (data.intersectionNormal.x != 0) 
				{
					data.u = (data.intersectionPosition.y - minY) / (maxY - minY);
					data.v = (data.intersectionPosition.z - minZ) / (maxZ - minZ);
				}
				else if (data.intersectionNormal.y != 0)
				{
					data.u = (data.intersectionPosition.z - minZ) / (maxZ - minZ);
					data.v = (data.intersectionPosition.x - minX) / (maxX - minX);
				}
				else if (data.intersectionNormal.z != 0)
				{
					data.u = (data.intersectionPosition.x - minX) / (maxX - minX);
					data.v = (data.intersectionPosition.y - minY) / (maxY - minY);
				}
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

				double a1 = vec3f::dot(data.intersectionNormal, vec3f::cross(triangle.v3 - triangle.v2, data.intersectionPosition - triangle.v2)) / 2.0;
				double a2 = vec3f::dot(data.intersectionNormal, vec3f::cross(triangle.v1 - triangle.v3, data.intersectionPosition - triangle.v3)) / 2.0;
				double a3 = vec3f::dot(data.intersectionNormal, vec3f::cross(triangle.v2 - triangle.v1, data.intersectionPosition - triangle.v1)) / 2.0;
				double at = a1 + a2 + a3;

				double l1 = a1 / at;
				double l2 = a2 / at;
				double l3 = a3 / at;

				data.u = (float)(l1 * triangle.v1TexturePos.x + l2 * triangle.v2TexturePos.x + l3 * triangle.v3TexturePos.x);
				data.v = (float)(l1 * triangle.v1TexturePos.y + l2 * triangle.v2TexturePos.y + l3 * triangle.v3TexturePos.y);
			}
		}
	}

	return data;
}

bool RayTracer::shadowing(vec3f position, vec3f L)
{
	IntersectedObjectData intersection = getIntersection(Ray(position, L), 1); // ^rs

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
	
	if (intersection.material->texture.path.compare("null") != 0)
	{
		Pixel texturePixel = calcTexturePoint(&intersection.material->texture, intersection.u, intersection.v);
		kd = vec3f(texturePixel[0], texturePixel[1], texturePixel[2]);
	}
	
	vec3f v = (ray.o - intersection.intersectionPosition).normalized();	// Vector ^v -> intersection -> eye
	vec3f Ia = scene->ambientColor * kd;	// Ambient Color * diffuse color
	
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
		float sinThetaT = (float)(sinThetaI / intersection.material->refractionCoefficient);
		float cosThetaT = std::sqrt(1 - sinThetaT * sinThetaT);
		vec3f rt = vt.normalized() * sinThetaT - normal * cosThetaT;
		Pixel rColor = trace(Ray(intersection.intersectionPosition, rt), depth + 1);
		color += rColor * (1 - intersection.material->opacity);
	}

	return color;

}

Pixel RayTracer::calcTexturePoint(Texture *texture, float u, float v)
{
	Image *texImage = texture->image;

	int i = abs(((int)(u * (texImage->getW() - 1) + 0.5) % texImage->getW()));
	int j = abs(((int)(v * (texImage->getH() - 1) + 0.5) % texImage->getH()));

	return texImage->getPixel(i, j);
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
		Pixel pixel;

		if (scene->texture->path != "null")
		{
			float u = (float)scene->currentX / (float)camera->imgWidth;
			float v = (float)scene->currentY / (float)camera->imgHeight;

			pixel = calcTexturePoint(scene->texture, u, v);
		}
		else
		{
			pixel[0] = scene->backgroundColor.x;
			pixel[1] = scene->backgroundColor.y;
			pixel[2] = scene->backgroundColor.z;
		}

		return pixel;
	}
}