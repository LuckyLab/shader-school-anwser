//是不是vertex.glsl文件表示点shader，fragment.glsl表示块shader，
//然后通过attribute, varying, uniform等类型变量传递？

precision highp float;

attribute vec4 position;
attribute vec3 color;

varying vec4 fragPosition;
varying vec3 vColor;

void main() {
  fragPosition = position;
  vColor = color;
  gl_Position = position;
}
