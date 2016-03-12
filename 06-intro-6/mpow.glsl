mat2 matrixPower(highp mat2 m, int n) {
  
  //Raise the matrix m to nth power

  // For example:
  //
  //  matrixPower(m, 2) = m * m
  //

  highp mat2 mt = m;
  int total = n;
  for(int i=2; i<=16; i++) {
  	mt = mt * m;
  }

  return mt;  
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)