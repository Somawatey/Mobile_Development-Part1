enum Position{
  right, left, center;
}
enum Colors{
  red,green,blue
}
enum RoofType{
  hip, gambrel
}

class House{
  Door door;
  Window window;
  Roof roof;
  Floor floor;
  House({required this.door, required this.window, required this.roof, required this.floor});

  @override
  String toString() {
    return "Number of Floor : ${floor.number_of_floor}";
  }

}

class Floor{
  int number_of_floor;
  Floor({required this.number_of_floor});
}


class Window{
  Position positionOfWindow;
  Colors colorOfWindow;
  Floor atFloor;
  Window({required this.positionOfWindow, required this.colorOfWindow, required this.atFloor}); 
}

class Door{
  Position positionOfDoor;
  Colors colorOfDoor;
  Door({required this.positionOfDoor, required this.colorOfDoor,});
}

class Roof{
  int numberOfRoof;
  RoofType roofType;
  Colors colorOfTheRoof;
  Roof({required this.roofType, required this.colorOfTheRoof, required this.numberOfRoof});
}


void main(){
  Door d1 = new Door(positionOfDoor: Position.center, colorOfDoor: Colors.blue);
  Window w1 = new Window(positionOfWindow: Position.left, colorOfWindow: Colors.red, atFloor: Floor(number_of_floor: 2));
  Floor f1 = new Floor(number_of_floor: 2);
  Roof r1 = new Roof(roofType: RoofType.hip, colorOfTheRoof: Colors.red, numberOfRoof: 1) ;

  House house1 = House(door: d1, window: w1, roof: r1, floor: f1);

  print(house1);

  
}

