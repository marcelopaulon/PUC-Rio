#version 410

in vec4 vtx;
//in vec4 color;
in vec3 vertexNormal;

uniform vec3 eye;
uniform vec3 lightPosition;

uniform uint materialType;

uniform uint drawSecondLight;

uniform mat4 mvp;
uniform mat4 mv;

uniform mat3 normalMatrix; // Inv. transporta da mv

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

lightSource light1 = lightSource(
  vec4(lightPosition.x + 10.0, lightPosition.y, lightPosition.z, 1.0),
  vec4(1.0,  1.0,  1.0, 1.0),
  vec4(1.0,  1.0,  1.0, 1.0)
);

vec4 scene_ambient;

struct material
{
  vec4 diffuse;
  vec4 specular;
  float shininess;
};

material mymaterial;

vec4 calcColor(lightSource light)
{
	vec3 lpos = vec3(light.position);
	vec3 vertexPosition = vec3(mv * vtx);

	vec3 normal = normalize(normalMatrix * vertexNormal);
	
	// L = vetor unitário que aponta do vértice para a fonte de luz
	vec3 L = normalize(lpos - vertexPosition);
	
	vec4 diffuseLighting = light.diffuse * mymaterial.diffuse * max(dot(normal, L), 0.0);
	
	vec3 v = normalize(vertexPosition); // mv * vtx
	vec3 r = reflect(L, normal);

	vec4 specularLighting = light.specular * mymaterial.specular * pow(max(dot(r,v), 0.0), mymaterial.shininess);
	
	return diffuseLighting + specularLighting;
}

void main(void)
{
	if(materialType == 1) // Black plastic
	{
		scene_ambient = vec4(0.0, 0.0, 0.0, 1.0);
		mymaterial = material(
		  vec4(0.0, 0.0, 0.0, 1.0),
		  vec4(0.5, 0.5, 0.5, 1.0),
		  32.0
		);
	}
	else if(materialType == 2) // Black ivory
	{
		scene_ambient = vec4(0.0, 0.0, 0.0, 1.0);
		mymaterial = material(
		  vec4(0.0, 0.0, 0.0, 1.0),
		  vec4(1.0, 1.0, 1.0, 1.0),
		  100.0
		);
	}
	else if(materialType == 3) // Bronze
	{
		scene_ambient = vec4(0.21, 0.13, 0.05, 1.0);
		mymaterial = material(
		  vec4(0.71, 0.43, 0.18, 1.0),
		  vec4(0.39, 0.27, 0.17, 1.0),
		  256
		);
	}

	// gl_Position is a special variable used to store the final position.
	// Multiply the vertex by the matrix to get the final point in normalized screen coordinates.
    gl_Position = mvp * vtx;
	
	vec4 finalColor = vec4(0.0, 0.0, 0.0, 0.0);

	vec4 ambientLighting = scene_ambient * mymaterial.diffuse;
	finalColor += ambientLighting;

	finalColor += calcColor(light0);

	if(drawSecondLight == 1)
	{
		finalColor += calcColor(light1);
	}

	colorFr = finalColor;
}