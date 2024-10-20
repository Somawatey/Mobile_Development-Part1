class Window {
  String color;
  String position;
  String floor;
  Window(this.color, this.position, this.floor);
  void display() {
    print("Window $color on $position on $floor");
  }
}

class Roof {
  String shape;
  Roof(this.shape);
  void display() {
    print("Roof shape $shape");
  }
}

class Door {
  String position;
  Door(this.position);
  void display() {
    print("Door in the $position");
  }
}

class Chimney {
  String position;
  Chimney(this.position);
  void display() {
    print("Chimney on the $position");
  }
}

class Floor {
  int totalFloor;
  Floor(this.totalFloor);
  void display() {
    print("Total Floor of this house is $totalFloor");
  }
}

class Address {
  String location;
  String country;
  Address(this.location, this.country);
  void display() {
    print("Location =$location, Country=$country");
  }
}

class House {
  List<Window> w;
  Roof r;
  Door d;
  Chimney c;
  Floor f;
  Address a;

  House(this.w, this.r, this.d, this.c, this.f, this.a);

  void display() {
    print("Build your house:");
    for (var window in w) {
      window.display();
    }
    r.display();
    d.display();
    c.display();
    f.display();
    a.display();
  }
}

void main() {
  Floor f = Floor(2);
  Window w1 = Window("blue", "Left", "1st floor");
  Window w2 = Window("green", "Left", "2nd floor");
  Roof r = Roof("Triangle");
  Door d = Door("Center");
  Chimney c = Chimney("Top");
  Address a = Address("PP", "Cambodia");

  List<Window> w = [w1, w2];
  House house = House(w, r, d, c, f, a);
  house.display();
}
