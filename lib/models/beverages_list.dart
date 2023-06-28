class BeverageList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  BeverageList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<BeverageList> browseList = [
  BeverageList(image: 'assets/images/strawberry.png', productName: ' Strawberry Punch', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: 'assets/images/lemonade.png', productName: ' Lemonade', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BeverageList(image: 'assets/images/chocolate.png', productName: ' Chocolate', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: 'assets/images/whisky.png', productName: ' Whisky', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BeverageList(image: 'assets/images/choco_bakery.png', productName: ' Chocolate Bakery', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: 'assets/images/fruit_punch.png', productName: ' Fruit Punch', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];