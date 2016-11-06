#version 410

in vec4 vtx;
in vec4 color;
in vec3 vertexNormal;

uniform vec3 eye;
uniform vec3 lightPosition;

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
	
	vec3 n = normalize(vec3(normalMatrix * vertexNormal));
	vec3 s = normalize(vec3(lightPosition) - vec3(mv * vtx)); // mv * vtx
	vec3 v = normalize(vec3(-(mv * vtx))); // mv * vtx
	vec3 r = reflect(-s, n);

	vec3 ambientLighting = vec3(scene_ambient) * vec3(mymaterial.diffuse);
	float sDotN = max(dot(s,n), 0.0);
	
	vec3 diffuseLighting = vec3(light0.diffuse) * vec3(mymaterial.diffuse) * sDotN;
	vec3 specularLighting = vec3(light0.specular) * vec3(mymaterial.diffuse) * pow(max(dot(r,v), 0.0), 5);


	/*vec4 lpos = mv * light0.position;
	vec4 vertexPosition = mv * vtx;
	vec4 normal = vec4(normalMatrix * vertexNormal, 1.0);

	// L = vetor unitário que aponta do vértice para a fonte de luz
	vec4 L = normalize(lpos - vertexPosition);

	vec4 ambientLighting = scene_ambient * mymaterial.diffuse;
	vec4 diffuseLighting = mymaterial.diffuse * light0.diffuse * dot(normal, L);
		
	vec4 specularLighting = vec4(0,0,0,0);
	*/

	colorFr = vec4(ambientLighting + diffuseLighting + specularLighting,1);
	
}