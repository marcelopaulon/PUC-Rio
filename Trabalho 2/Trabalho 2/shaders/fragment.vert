#version 410

in vec4 vtx;
in vec4 color;
in vec3 vertexNormal;

uniform mat4 mvp;

uniform mat3 normalMatrix; // Inv. transporta da mv

out vec4 colorFr;

out vec3 normal;

out vec4 vtxFrag;

void main(void)
{
	// gl_Position is a special variable used to store the final position.
	// Multiply the vertex by the matrix to get the final point in normalized screen coordinates.
    gl_Position = mvp * vtx;
	
	normal = normalize(normalMatrix * vertexNormal);
	vtxFrag = vtx;
	colorFr = color;
}