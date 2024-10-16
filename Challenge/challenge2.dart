class Point {
  int _x;
  int _y;

  Point(this._x, this._y);

  set x(int x) => this._x = x;
  int get x => this._x;

  set y(int y) => this._y = y;
  int get y => this._y;

  void translate(int _dx, int _dy) {
    _x += _dx;
    _y += _dy;
  }

  @override
  String toString() {
    return "x= $_x - y= $_y";
  }
}

main() {
  Point p1 = Point(1, 2);
  print(p1);
  p1.translate(2,2);
  print(p1);
}
