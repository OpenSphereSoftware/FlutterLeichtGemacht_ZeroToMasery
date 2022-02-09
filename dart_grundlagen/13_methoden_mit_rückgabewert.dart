
void main(){
  print("vor");
  int ergebnis = addieren(x:10,y:11);
  print(ergebnis);
  int ergebnis2 = addieren(x:10,y: ergebnis);
  print(ergebnis2);
  print("danach");
}

int addieren({required int x,required int y}){
  int z = x+y;
  return z;
}
