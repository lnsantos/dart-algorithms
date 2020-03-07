import 'dart:io';

main() {
  
  var _A, _B, _C, _D, _R, _S; 

  _A = inputKeyboard("A");
  _B = inputKeyboard("B");
  _C = inputKeyboard("C");

  _R = typeCalculetor(_A,_B);
  _S = typeCalculetor(_B,_C);

  _D = calculetorDistance(_R,_S);
  print("Distancia $_D");
}

typeCalculetor(var one,var two){
  var value = one + two;
  return (value * value);
}

calculetorDistance(var one,var two){
  var value = typeCalculetor(one, two);
  return value / 2;  
}

inputKeyboard(var who){
  showMessage(who);
  return double.parse(stdin.readLineSync());
}

showMessage(var who){
 print("Insira valor para : $who");
}