void sideLengths(
  highp float hypotenuse, 
  highp float angleInDegrees, 
  out highp float opposite, 
  out highp float adjacent) {


  //TODO: Calculate side lengths here

  highp float angleInRadian = radians(angleInDegrees);
  opposite = hypotenuse * sin(angleInRadian);
  adjacent = hypotenuse * cos(angleInRadian);
}

//Do not change this line
#pragma glslify: export(sideLengths)