class HomeList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  HomeList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<HomeList> homeList = [
  HomeList(image: 'assets/images/moist.png', productName: ' Moisturizer', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: 'assets/images/vita.png', productName: ' Vitamin Bundle', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  HomeList(image: 'assets/images/shower.png', productName: ' Shower Gel', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: 'assets/images/facial.png', productName: ' Facial Wash', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  HomeList(image: 'assets/images/onne.png', productName: ' Onne', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: 'assets/images/fur.png', productName: ' Fur Moisturizer', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];