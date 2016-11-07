#version 410

out vec4 fragmentColor;
in vec4 colorFr;

void main(void)
{
    fragmentColor = colorFr;
}
