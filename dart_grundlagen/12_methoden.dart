
void main(){
  print("vor");
  doSomething(4);
  print("danach");
  doSomething(60);
  doSomething(40);
  doSomething(2);
}

void doSomething(int x){
  int y = 1;
  print(x+y);
}
