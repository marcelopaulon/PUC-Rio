#version 410

uniform mat4 mvp;
in vec4 vtx;
in vec4 color;
out vec4 colorFr;

void main(void)
{
	colorFr = color;
    gl_Position = mvp * vtx;
}

