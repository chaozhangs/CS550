#version 330 compatibility

uniform float   usOn;
uniform float ufSOn;
uniform float  uTime;		// "Time", from Animate( )
in vec2  	vST;		// texture coords
in vec3 vColor;


void
main( )
{
	vec3 myColor =  vec3(0.0,1.0,1.0);
	if(usOn == 1.0)
	{
		if(ufSOn == 1.0)
		{
			if(vST.s * cos(vST.t) * vST.s * cos(vST.t)  < uTime )
			{
			myColor = vColor;
			}
		}
		else
		{
			myColor = vec3(0.0,1.0,1.0);
		}
	}
	gl_FragColor = vec4(myColor ,1.);
}