class FrozenList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  FrozenList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<FrozenList> frozenList = [
  FrozenList(image: 'assets/images/ice_cream.png', productName: ' Ice Cream', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: 'assets/images/manggo.png', productName: ' Manggo Ice', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FrozenList(image: 'assets/images/straw_ice.png', productName: ' Strawberry Ice', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: 'assets/images/matcha.png', productName: ' Matcha', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FrozenList(image: 'assets/images/grape.png', productName: ' Grape Ice Cream', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: 'assets/images/frozen_bottle.png', productName: ' Frozen Bottle', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];