#version 410

out vec4 fragmentColor;

in vec2 uv;

uniform sampler2D texture_sampler;

void main(void)
{
    fragmentColor = vec4(texture(texture_sampler, uv), 1.0);
}
