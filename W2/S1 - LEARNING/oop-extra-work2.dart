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

class House {
  List<Window> w;
  Roof r;
  Door d;
  Chimney c;

  House(this.w, this.r, this.d, this.c);

  void display() {
    print("Build your house:");
    for (var window in w) {
      window.display();
    }
    r.display();
    d.display();
    c.display();
  }
}

void main() {
  Window w1 = Window("red", "Left", "1st floor");
  Window w2 = Window("green", "Left", "2nd flooe");
  Roof r = Roof("Triangle");
  Door d = Door("Center");
  Chimney c = Chimney("Top");

  List<Window> w = [w1, w2];
  House house = House(w, r, d, c);
  house.display();
}
