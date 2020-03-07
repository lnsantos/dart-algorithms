import 'dart:io';

main() {
  var x = [];
  var y = [];
  var distance = [];

  x.add(inputKeyboard("X1"));
  x.add(inputKeyboard("X2"));
  y.add(inputKeyboard("Y1"));
  y.add(inputKeyboard("Y2"));

  distance.add(calculetedPoints(x[0], x[1], 2));
  distance.add(calculetedPoints(y[0], y[1], 2));

  squareRoot((distance[0] + distance[1]));

}

int calculetedPoints(var pointOne,var pointTwo,int elev){
    
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

