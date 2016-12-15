#version 410

uniform mat4 mvp;
in vec4 vtx;

layout(location = 1) in vec2 vertexUV;
 
// Output data; will be interpolated for each fragment.
out vec2 uv;


void main(void)
{
    gl_Position = mvp * vtx;
	uv = vertexUV;
}

