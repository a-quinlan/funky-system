void game() {
  background(0);
  myShip.show();
  myShip.act();

  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myGameObjects.remove(i);
    } else {
      i++;
    }
  }
  
  if(myShip.lives <= 0){
   mode = 3; 
  } // else if ( asteroids = 0){
  // mode = 4; 
  //}
}
