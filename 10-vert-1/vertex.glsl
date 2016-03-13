precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //TODO: rotate position by theta radians about the origin

  vec2 Pos = vec2(0, 0);
  Pos.x = position.x*cos(theta) - position.y*sin(theta);
  Pos.y = position.x*sin(theta) + position.y*cos(theta);

  gl_Position = vec4(Pos, 0, 1.0);
}
