class EggList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  EggList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<EggList> eggList = [
  EggList(image: 'assets/images/brown.png', productName: ' Brown Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: 'assets/images/fresh.png', productName: ' Fresh Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  EggList(image: 'assets/images/bundle.png', productName: ' Bundle Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: 'assets/images/blue.png', productName: ' Blue Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  EggList(image: 'assets/images/bird.png', productName: ' Bird Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: 'assets/images/egg.png', productName: ' Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];