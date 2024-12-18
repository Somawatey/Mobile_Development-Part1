void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const orders = ['margherita', 'pepperoni'];

  // Your code
  double total = 0;
  for (var pizza in orders) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      // If pizza is not on the menu, print a message and return
      print('$pizza pizza is not on the menu');
    }
  }
  if (total> 0) {
    print(total);
  }
}

//correction
// void main() {
//   // Map of pizza prices
//   const pizzaPrices = {
//     'margherita': 5.5,
//     'pepperoni': 7.5,
//     'vegetarian': 6.5,
//   };

//   // Example of order
//   const List<String> orders = ['margherita', 'pepperoni', 'pineapple'];

//   // The total cost - if order is valid
//   double totalCost = 0;

//   // The missing pizza - - if order is invalid
//   List<String> missingPizzas = [];

//   // Iterate through each pizza in the order
//   for (var pizza in orders) {
//     if (pizzaPrices.containsKey(pizza)) {
//       totalCost += pizzaPrices[pizza]!;
//     } else {
//       missingPizzas.add(pizza);
//     }
//   }

//   // Print the total cost or the list of missing pizzas
//   if (missingPizzas.isEmpty) {
//     print('Total: \$${totalCost.toStringAsFixed(2)}');
//   } else {
//     print('The following pizzas are not on the menu: ');
//     missingPizzas.forEach(print);
//   }
// }