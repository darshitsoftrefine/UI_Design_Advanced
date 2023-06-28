class VegeList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  VegeList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<VegeList> vegeList = [
  VegeList(image: 'assets/images/carrot.png', productName: ' Carrot', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: 'assets/images/cabbage.png', productName: ' Cabbage', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  VegeList(image: 'assets/images/tomato.png', productName: ' Tomato', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: 'assets/images/garlic.png', productName: ' Garlic', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  VegeList(image: 'assets/images/tomatoes.png', productName: ' Tomato', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: 'assets/images/corn.png', productName: ' Corn', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];