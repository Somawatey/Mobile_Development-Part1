class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  String toString() {
    return 'Point(x: $x, y: $y)';
  }
}

class Shape {
  final Point left_Bottom;
  final int width;    
  final int  height;    
  String? backgroundColor; 

  Shape({
    required this.left_Bottom,
    required this.width,
    required this.height,
    this.backgroundColor,
  });

  Point get right_Top {
    return Point(left_Bottom.x + width, left_Bottom.y + height);
  }

  @override
  String toString() {
    return 'left_Bottom: $left_Bottom,\n width: $width,\n height: $height,\n right_Top: $right_Top,\n backgroundColor: $backgroundColor';
  }
}

void main() {
  
  Shape shape1 = Shape(left_Bottom: Point(2, 1), width: 6, height: 3,
   
  );

  print(shape1); 
}