
void main (){

    List<int> liste = [3,4,5,6,7,5];
    List<int> liste2 = [];

    for(int i = 0;   i < liste.length ;    i++){
      if(liste[i]==3){
        liste2.add(liste[i]);
      }
      print(liste[i]);
    }

    print(liste2);
}
