precision highp float;

uniform sampler2D texture;
uniform vec2 screenSize;

void main() {
  vec2 coord = gl_FragCoord.xy / screenSize;

  //TODO: Swap red and blue color channels of image

  gl_FragColor = texture2D(texture, coord);

  float tmp = 0.0;

  tmp = gl_FragColor[2];

  gl_FragColor[2] = gl_FragColor.r;  //gl_FragColor.r == gl_FragColor[0]
  gl_FragColor.r = tmp; 
}
