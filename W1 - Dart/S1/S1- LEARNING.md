**SELF-LEARNING 1 - Dart Syntax & Concepts**

   Objectives
By completing this handout, you will: 1. Apply type inference for variable declarations. 2. Handle nullable and non-nullable variables. 3. Differentiate between final and const. 4. Manipulate strings, lists, and maps. 5. Use loops and conditions to control flow. 6. Define and call functions with positional and named arguments, understand arrow syntax

### **1. Type Inference**
EXPLAIN : Explain how Dart infers the type of a variable.
Answer: In Dart, It’s easier to use variables compared to C/C++ because we don’t need to declare a specific data type. Dart automatically inferr the type from the value we assign.

CODE : Complete the bellow code to illustrate the concepts:

```dart 
// Declare a int variable and let Dart infer its type 
var age=100; // by using dart,it will inferr that type of age varriable is integer

// Define a variable with an explicit String type
String name="somawatey"; //By define the declear datatype, dart will inferr that type of name variable is string base on we assign

```



### **2. Nullable and Non-Nullable Variables**
EXPLAIN : Explain nullable vs non-nullable variables.
- nullable : It can be empty or null. If we want to allow the variable to be empty, we put "?" after the type and then variable.
- non-nullable : It always need to have a value. We cannot leave it empty or null, it will be error.
EXPLAIN : When is it useful to have nullable variables?
- Can missing data(sometime we don’t have data yet or it’s optional.)
- No error when we don't have data
- when we don't have data "null" can represent that.

CODE : Complete the bellow code to illustrate the concepts:

```dart 
// Declare a nullable integer variable and assign it a null value
int? age=null; //age has a null value

// Declare a non-nullable integer variable and assign it a value
int age=100; //assigned 100 to the variable. Since age is non-nullable, It cannot be assigned a null value

// Assign a new value to the nullable variable 
age=25; //Now age holds the value 25

```

### **3. Final and const**
EXPLAIN : Describe the difference between final and const.
- final : can set only onece so it has specific value, It can't be change and It can have a value that is set either when it is declared or later during runtime.
- const : is a compile-time constant, we need to assign a value when it is declared, and this value cannot change. The value must be known at compile time

CODE : Complete the bellow code to illustrate the concepts:

```dart 
// Declare a final variable and assign it the current date and time
final DOB = DateTime.now();
// Can you declare this variable as const? Why?
No, we can not declear this variable as const because variable const need to assign the value when it is declared.
// Declare a const variable with a integer value
const int number=100;
// Can you reassign the value of this final variable? Why? 
No, we can not reassign the value of this final variable because variable can set only once, its value cannot be changed.

```

### **4. Strings, Lists and Maps**
CODE : Complete the bellow code to illustrate the concepts:

Strings:
```dart
// Declare two strings: firstName and lastName and an integer:age
String firstName="somawatey";
String lastName="Khov";
int age=20;
// Concatenate the 2 strings and the age 
String studen_info = firstName +" "+ lastName+"\n"+ "  age " +age.toString() +" year old"; //using age.toStrring because age is int, it can't using to concate with string so we need to convert it to string
// Print result
print(student_info); //print student_info out
```dart
Lists:

// Create a list of integers
List<int> list=[1,2,3]; create a list that have number 1 2 3

// Add a number to the list
list.add(4); //add on number 4 to the list
// Remove a number from the list

list.remove(3); //remove or delete number 3 from the list 
// Insert a number at a specific index in the list

list.insert(2,20); //insert 20 to index 2

// Iterate over the list and print each number
for (int num in list) {
    print(num); 
  } // By usig for-each loop it will display one by one in the order ,they appear in the list by following the rule of list "FIFO"
```
Maps:
```dart
// Create a map with String keys and integer values
 Map<String, int> map = { //in thhis case i use string is "key" and int is "value"
    'coca': 5,
    'milk': 3,
    'coffee': 4
  };
// Add a new key-value pair to the map
map['water']=6; //adding new key=water and value=6;
// Remove a key-value pair from the map
 map.remove('milk'); // delete milk form the map
// Iterate over the map and print each key-value pair
 map.forEach((key, value) {
    print('$key: $value'); 
  }); // use for each to display one by one pair in the order
```
### **5. Loops and Conditions**
CODE : Complete the bellow code to illustrate the concepts:

```dart 
// Use a for-loop to print numbers from 1 to 5
for(int i=1,i<=5,i++){
   print(i);
}// it will display form 1 to 5

// Use a while-loop to print numbers while a condition is true
int i=1;
while(i<=5){
   print(i);
   i++;
} // it will display form 1 to 5
// Use an if-else statement to check if a number is even or odd 
int i=100;
if(i%2==0){
   print('$i is even');
}else{
   print('$i is odd');  
} 
//so the answwer is 100 is even because 100%2=0
```

### **6. Functions**
EXPLAIN : Compare positional and named function arguments
Ans:
- positional argument : When we use positional arguments, we have to put the information in the same order that the function expects.
- named function argument : When we use named arguments, we can tell the function what each piece of information is by using names. The order doesn’t matter.

EXPLAIN : Explain when and how to use arrow syntax for functions
Ans: Arrow syntax is a shorter and cleaner way to define functions, especially when the function is simple or has a single expression.
You can define a function using the => (fat arrow) syntax.
Example
```dart
   const functionName = (parameters) => {
      // function body
   };
```

CODE : Complete the bellow code to illustrate the concepts:
```dart
Defining and Invoking a Function:
// Define a function that takes two integers and returns their sum
int add(int x, int y) {
  return x + y;
}
// Call the function and print the result
void main() {
  print(add(5, 5)); // the result is 10
}

Positional vs Named Arguments:

// Define a function that uses positional arguments
double sub(int a, int b) {
  return a - b;
}
// Define another function that uses named arguments with the required keyword (ex: getArea with rectangle arguments)
double getRectangleArea({required double width, required double height}) {
  return width * height;
}
// Call both functions with appropriate arguments
void main() {
  print(sub(10, 5)); // Positional arguments
  print(getRectangleArea(width: 5, height: 10)); // Named arguments
}

EXPLAIN : Can positional arguement be ommited? Show an example
Ans: No, Positional arguments in Dart cannot be omitted if they are required. All positional arguments must be provided when calling the function.

Example:
void displayInfo(String name, int age) { // required positional arguments in Dart must always be supplied when calling the function.
  print('Name: $name, Age: $age');
}

void main() {
  displayInfo('watey', 30); // This works because both arguments are provided
  // displayInfo('watey'); // This will cause an error because 'age' is missing
}
EXPLAIN : Can named arguement be ommited? Show an example
Ans: Named arguments can be omitted in Dart if they are optional. You can provide default values for them as well.
Arrow Syntax:
Example: 

void greet({String name = 'Lida', int age = 0}) {
  print('Hello, $name! You are $age years old.');
}

void main() {
  greet(name: 'Bob');  // Age is omitted, defaults to 0
  greet();  // Both name and age are omitted, defaults are used
}
// Define a function using arrow syntax that squares a number
int devide(int num) => num / 2;
// Call the arrow function and print the result
void main() {
  int result = devide(10); // Call the function with 10
  print('The result is : $result'); // Print the result is 5
}
```