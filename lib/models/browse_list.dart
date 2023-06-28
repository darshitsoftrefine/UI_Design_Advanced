class BrowseList {
  final String image;
  final String productName;
  final String logoText;
  final String price;

  BrowseList({required this.image, required this.productName, required this.logoText, required this.price});


}
List<BrowseList> browseList = [
  BrowseList(image: 'assets/images/apple.png', productName: ' Apple', logoText: 'Tradly', price: '\$25'),
  BrowseList(image: 'assets/images/orange.png', productName: ' Orange', logoText: 'Tradly', price: '\$25'),
  BrowseList(image: 'assets/images/moist.png', productName: ' Moisturizer', logoText: 'Tradly', price: '\$25'),
  BrowseList(image: 'assets/images/broc.png', productName: ' Brocolli', logoText: 'Tradly', price: '\$25',),
  BrowseList(image: 'assets/images/brown.png', productName: ' Brown Egg', logoText: 'Tradly', price: '\$25'),
  BrowseList(image: 'assets/images/fruit_punch.png', productName: ' Fruit Punch', logoText: 'Tradly', price: '\$25'),

];