import 'dart:isolate';

void main(){
  Isolate.spawn<IsolateModel>(heavyTask, IsolateModel(35000, 500));
}

void heavyTask(IsolateModel isolateModel){
  int total = 0; 

  for(int i = 1; i < isolateModel.iteration; i++){
    total += (i + isolateModel.multiplier);
  }
  print(total);
}

class IsolateModel{
  final int iteration; 
  final int multiplier;
  IsolateModel(this.iteration, this.multiplier);
}