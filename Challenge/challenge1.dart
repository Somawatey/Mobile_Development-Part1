class Point {
  int x, y;

  // Constructor to initialize point
  Point(this.x, this.y);

  // Method to display the point's position
  void display() {
    print('Point($x, $y)');
  }

  // Method to translate the point by (dx, dy)
  void translate(int dx, int dy) {
    x += dx;
    y += dy;
  }
}

void main() {
  // Create a point at (3, 4)
  Point p1 = Point(3, 4);
  p1.display();

  // Translate the point by (2, -1)
  p1.translate(2, -1);
  p1.display();
}
