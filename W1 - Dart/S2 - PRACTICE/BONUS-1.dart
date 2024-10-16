enum Direction { north, east, south, west }
// Function to turn right
Direction turnRight(Direction currentDirection) {
  switch (currentDirection) {
    case Direction.north:
      return Direction.east;
    case Direction.east:
      return Direction.south;
    case Direction.south:
      return Direction.west;
    case Direction.west:
      return Direction.north;
  }
}
// Function to turn left
Direction turnLeft(Direction currentDirection) {
  switch (currentDirection) {
    case Direction.north:
      return Direction.west;
    case Direction.west:
      return Direction.south;
    case Direction.south:
      return Direction.east;
    case Direction.east:
      return Direction.north;
  }
}
// Function to advance the robot's position
List<int> advance(int x, int y, Direction direction) {
  switch (direction) {
    case Direction.north:
      y += 1; // Move up
      break;
    case Direction.east:
      x += 1; // Move right
      break;
    case Direction.south:
      y -= 1; // Move down
      break;
    case Direction.west:
      x -= 1; // Move left
      break;
  }
  return [x, y];
}
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  for (var instruction in instructions.split('')) {
    if (instruction == 'R') {
      // Turn right
      direction = turnRight(direction);
    } else if (instruction == 'L') {
      // Turn left
      direction = turnLeft(direction);
    } else if (instruction == 'A') {
      // Advance
      var newPosition = advance(x, y, direction);
      x = newPosition[0]; // Update x position
      y = newPosition[1]; // Update y position
    } 
  }
  print("Final position: ($x, $y)");
  print("Facing: ${direction.toString().split('.').last}");
  
}

/**Correction
 * An orientation to control the robot. We also provide the methods to turn left or right.
 */
// enum Orientation {
//   UP,
//   RIGHT,
//   DOWN,
//   LEFT;

//   Orientation turnRight() {
//     return switch (this) {
//       Orientation.UP => RIGHT,
//       Orientation.RIGHT => DOWN,
//       Orientation.DOWN => LEFT,
//       Orientation.LEFT => UP,
//     };
//   }

//   Orientation turnLeft() {
//     return switch (this) {
//       Orientation.UP => LEFT,
//       Orientation.RIGHT => UP,
//       Orientation.DOWN => RIGHT,
//       Orientation.LEFT => DOWN,
//     };
//   }
// }

// class Robot {
// /**
//  * Create a Robot, given its start X, Y position and orientation
//  */
//   Robot(this._x, this._y, this._orientation) {}

//   Orientation _orientation;
//   int _x;
//   int _y;

//   @override
//   String toString() {
//     return "position ($_x, $_y)  - orientation : $_orientation";
//   }

//   goForward() {
//     switch (_orientation) {
//       case Orientation.UP:
//         _y++;
//         break;
//       case Orientation.RIGHT:
//         _x++;
//         break;
//       case Orientation.DOWN:
//         _y--;
//         break;
//       case Orientation.LEFT:
//         _x--;
//         break;
//     }
//     ;
//   }

//   turnLeft() {
//     _orientation = _orientation.turnLeft();
//   }

//   turnRight() {
//     _orientation = _orientation.turnRight();
//   }
// }

// main() {

//   Robot myRobot = Robot(7, 2, Orientation.UP);
//   print(myRobot);

//   // Robot actions as a list of character, see instructions for specifications
//   String actions = "AARAARALA";
//   for (String action in actions.split("")) {
//     switch (action) {
//       case "R":
//         myRobot.turnRight();
//         break;
//       case "L":
//         myRobot.turnLeft();
//       case "A":
//         myRobot.goForward();
//       default:
//         throw Exception("unexpected case : $action");
//     }
//   }

//   print(myRobot);
// }