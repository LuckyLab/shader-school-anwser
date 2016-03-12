precision mediump float;

#define COLOR_WHITE    vec4(1.0, 1.0, 1.0, 1.0)

bool inTile(vec2 p, float tileSize) {
	vec2 ptile = step(0.5, fract(0.5 * p / tileSize));
	return ptile.x == ptile.y;
}
void main() {

  //TODO: Replace this with a function that draws a checkerboard

  vec2 point = gl_FragCoord.xy;
  vec2 remain = mod(point, 32.0);
  if (remain.y >= 16.0 && remain.x < 16.0) {
    discard;
  } else if (remain.y < 16.0 && remain.x >= 16.0) {
    discard;
  } else {
    gl_FragColor = COLOR_WHITE;
  }  
}