class FruitList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  FruitList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<FruitList> vegeList = [
  FruitList(image: 'assets/images/avocado.png', productName: ' Avocado', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: 'assets/images/banana.png', productName: ' Banana', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FruitList(image: 'assets/images/orange.png', productName: ' Orage', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: 'assets/images/papaya.png', productName: ' Papaya', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FruitList(image: 'assets/images/pineapple.png', productName: ' Pineapple', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: 'assets/images/watermelon.png', productName: ' Watermelon', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];