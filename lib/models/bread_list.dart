class BreadList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  BreadList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<BreadList> browseList = [
  BreadList(image: 'assets/images/bread_chocolate.png', productName: ' Bread Chocolate', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: 'assets/images/circle_bakery.png', productName: ' Circle Bakery', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BreadList(image: 'assets/images/cookies.png', productName: ' Cookies', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: 'assets/images/long_bread.png', productName: ' Long Bread', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: 'assets/images/donut.png', productName: ' Donut', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BreadList(image: 'assets/images/bread.png', productName: ' Bread', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
];