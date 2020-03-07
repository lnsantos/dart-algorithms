import 'dart:io';

main() {
  var _x1 = 0;
  var _x2 = 0;
  var _y1 = 0;
  var _y2 = 0;

  var xDistance = 0;
  var yDistance = 0;

  _x1 = inputKeyboard("X1");
  _x2 = inputKeyboard("X2");
  _y1 = inputKeyboard("Y1");
  _y2 = inputKeyboard("Y2");

  xDistance = calculetedPoints(_x1, _x2, 2);
  yDistance = calculetedPoints(_y1, _y2, 2);

  squareRoot((xDistance + yDistance));
  
}

calculetedPoints(var pointOne,var pointTwo,int elev){
    
  var value = (pointOne - pointTwo);
  var mValue = 0;
  for(int state = 1;state < elev;state++){
      mValue = value * value;
  }

  return mValue;
}

squareRoot(int who){
  for(var multiplicationTable = 0;multiplicationTable <= who;++multiplicationTable){
     var multiplication = (multiplicationTable * multiplicationTable);

     if(multiplication == who){
       print("Valor total :$who /n distância raiz quadrada :$multiplicationTable");
       return true;
     }     
  }
  print("Valor total :$who /n distância raiz quadrada : Não existe");
  return 0;
}

inputKeyboard(var who){
  showMessage(who);
  return int.parse(stdin.readLineSync());
}

showMessage(var who){
 print("Insira valor para : $who");
}

