#version 410

in vec4 vtx;
in vec4 color;
in vec3 vertexNormal;

uniform vec3 eye;
uniform vec3 lightPosition;

uniform mat4 mvp;
uniform mat4 mv;

uniform mat4 normalMatrix; // Inv. transporta da mv

out vec4 colorFr;

struct lightSource
{
  vec4 position;
  vec4 diffuse;
  vec4 specular;
};

lightSource light0 = lightSource(
  vec4(lightPosition, 1.0),
  vec4(1.0,  1.0,  1.0, 1.0),
  vec4(1.0,  1.0,  1.0, 1.0)
);

vec4 scene_ambient = vec4(0.2, 0.2, 0.2, 1.0);

struct material
{
  vec4 diffuse;
  vec4 specular;
};

material mymaterial = material(
  vec4(color),
  vec4(1.0, 1.0, 1.0, 1.0)
);

void main(void)
{
	// gl_Position is a special variable used to store the final position.
	// Multiply the vertex by the matrix to get the final point in normalized screen coordinates.
    gl_Position = mvp * vtx;
	
	vec4 lpos = mv * light0.position;
	vec4 vertexPosition = mv * vtx;
	vec4 normal = vec4(vertexNormal, 1.0);
	normal = normalMatrix * normal;

	// L = vetor unitário que aponta do vértice para a fonte de luz
	vec4 L = normalize(lpos - vertexPosition);

	colorFr = scene_ambient * mymaterial.diffuse;

	vec4 ambientLighting = scene_ambient * mymaterial.diffuse;
	vec4 diffuseLighting = mymaterial.diffuse * light0.diffuse * (normal * L);
	vec4 specularLighting = vec4(0,0,0,0);

	colorFr = vec4(vec3(ambientLighting + diffuseLighting + specularLighting), 1.0);
}