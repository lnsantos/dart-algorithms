import 'dart:io';

main() {
  var x, y, distance = [];

  x.add(inputKeyboard("X1"));
  x.add(inputKeyboard("X2"));
  y.add(inputKeyboard("Y1"));
  y.add(inputKeyboard("Y2"));

  distance.add(calculetedPoints(x[1], x[2], 2));
  distance.add(calculetedPoints(y[1], y[2], 2));

  squareRoot((distance[1] + distance[2]));

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

