varying float vNoise;
varying vec2 vUv;
uniform float time;
uniform sampler2D uImage;



// github end

void main() {


	vec2 newUv = vUv;

	// float noise = cnoise(vec3(vUv * 10., time));
	// newUv = vec2(newUv.x, newUv.y + 0.01 * sin(newUv.x * 10. + time));
	

	vec4 oceanView = texture2D(uImage, newUv);

	// gl_FragColor = vec4(finalColor, 1.);
	// gl_FragColor = vec4(vUv, 0., 1.);
	// gl_FragColor = vec4(vNoise,0.,0.,1.);
	gl_FragColor = oceanView;

	gl_FragColor.rgb += 0.05*vec3(vNoise);


	// gl_FragColor = oceanView + 0.3*vec4(vNoise);

	// gl_FragColor = vec4(noise);
	// gl_FragColor = vec4(vNoise);



}