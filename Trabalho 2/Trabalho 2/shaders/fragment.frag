#version 410

out vec4 fragmentColor;
in vec4 colorFr;

uniform vec3 eye;
uniform vec3 lightPosition;

uniform mat4 mv;

in vec3 normal;

in vec4 vtxFrag;

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

vec4 scene_ambient = vec4(0.05, 0.05, 0.05, 1.0);

struct material
{
  vec4 diffuse;
  vec4 specular;
  float shininess;
};

material mymaterial = material(
  vec4(colorFr),
  vec4(1.0, 1.0, 1.0, 1.0),
  128.0
);

void main(void)
{
	vec3 normalizedNormal = normalize(normal);

	vec3 lpos = vec3(mv * light0.position);
	vec3 vertexPosition = vec3(mv * vtxFrag);
	
	// L = vetor unitário que aponta do vértice para a fonte de luz
	vec3 L = normalize(lpos - vertexPosition);
	
	vec4 ambientLighting = scene_ambient * light0.diffuse * mymaterial.diffuse;
	vec4 diffuseLighting = light0.diffuse * mymaterial.diffuse * max(dot(normalizedNormal, L), 0.0);
		
	vec3 v = normalize(vertexPosition); // mv * vtxFrag
	vec3 r = reflect(L, normalizedNormal);

	vec4 specularLighting = light0.specular * mymaterial.diffuse * pow(max(dot(r,v), 0.0), mymaterial.shininess);
	
	fragmentColor = ambientLighting + diffuseLighting + specularLighting;
}
