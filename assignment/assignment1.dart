// Create a Dart program that simulates an online shopping cart system. Your program should implement the following:

// Standard Functions:
// Create a function calculateTotal that accepts a list of item prices and returns the total price.
// Implement optional parameters for tax calculation.
// Anonymous Functions:
// Use an anonymous function to filter out items with a price below a certain threshold (e.g., items under $10).
// Higher-Order Functions:
// Write a function applyDiscount that takes a list of prices and a discount function as parameters. The discount function should reduce the price by a percentage.
// Recursive Functions:
// Create a recursive function calculateFactorialDiscount that calculates a special discount based on the factorial of the number of items in the cart (e.g., if there are 4 items, the discount is 4! percent).
// Instructions:
// The program should use the applyDiscount function to apply a discount to all items in the cart.
// Calculate the final price after applying the discount and tax, using the calculateTotal function.
// Use the recursive function for an additional special discount and apply it to the final price.

void main() {
  // Sample cart items with prices
  List<double> cartItems = [12.5, 5.0, 15.0, 7.5, 20.0];

  // Anonymous function to filter out items below $10
  List<double> filteredItems = cartItems.where((price) => price >= 10).toList();
  print('Items priced at \$10 and above: $filteredItems');

  // Calculate total price of items with an optional tax parameter
  double totalBeforeDiscount = calculateTotal(filteredItems, tax: 0.08);
  print('Total before discount: \$${totalBeforeDiscount.toStringAsFixed(2)}');

  // Applying a discount using a higher-order function
  List<double> discountedPrices = applyDiscount(filteredItems, (price) => price * 0.9);
  print('Prices after 10% discount: $discountedPrices');

  // Calculate the total after the discount
  double totalAfterDiscount = calculateTotal(discountedPrices);
  print('Total after discount: \$${totalAfterDiscount.toStringAsFixed(2)}');

  // Calculate a special factorial discount based on the number of items
  int itemCount = discountedPrices.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount) / 100;
  print('Factorial discount (based on $itemCount!): ${factorialDiscount * 100}%');

  // Apply the factorial discount to the final price
  double finalPrice = totalAfterDiscount * (1 - factorialDiscount);
  print('Final price after factorial discount: \$${finalPrice.toStringAsFixed(2)}');
}

// Function to calculate total price with optional tax
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  double total = prices.reduce((value, element) => value + element);
  return total + (total * tax); // Total including tax
}

// Higher-order function to apply a discount
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

// Recursive function to calculate the factorial discount
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}
