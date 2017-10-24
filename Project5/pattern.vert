#version 330 compatibility

uniform float   usOn;
uniform float   uvSOn;
uniform float	uTime;		// "Time", from Animate( )
out vec2  	vST;		// texture coords
out vec3 vColor;

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{
	vColor = gl_Vertex.xyz;
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	
	if(usOn == 1.0)
	{
	if(uvSOn == 1.0)
	{
	vert.x = vert.x* sin(sin(uTime) * 2 * PI*.6);
	vert.y = vert.y* sin(sin(uTime) * 2 * PI*.6)/2 ; 		//??? something fun of your own design
	vert.z = vert.z * sin(sin(uTime) * 2 * PI*.6)/2;				//??? something fun of your own design
	}
	else if(uvSOn == 0.0)
	{
	vert.x = vert.x;
	vert.y = vert.y;
	vert.z = vert.z;
	}
	else
	
	vert.x = vert.x;
	vert.y = vert.y;
	vert.z = vert.z;
	
	}
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
	
}
