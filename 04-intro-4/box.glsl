bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 p) {

  //Test if the point p is inside the box bounded by [lo, hi]

  bool isIn = false;
  highp float minX = min(hi.x, lo.x);
  highp float maxX = max(hi.x, lo.x);
  highp float minY = min(hi.y, lo.y);
  highp float maxY = max(hi.y, lo.y);

  if(p.x>minX && p.x<maxX && p.y>minY && p.y<maxY){
  	isIn=true;
  }

  return isIn;
}


//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
