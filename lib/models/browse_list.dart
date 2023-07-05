import 'package:tradly/image_constants.dart';

class BrowseList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  BrowseList({required this.image, required this.productName, required this.logoText, required this.price, required this. cancelPrice});


}
List<BrowseList> browseList = [
  BrowseList(image: ImageConstants.browseAppleImage, productName: ' Apple', logoText: 'Tradly', price: '\$25', cancelPrice: '\$25'),
  BrowseList(image: ImageConstants.browseOrangeImage, productName: ' Orange', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BrowseList(image: ImageConstants.browseMoisturizerImage, productName: ' Moisturizer', logoText: 'Tradly', price: '\$25',  cancelPrice: ''),
  BrowseList(image: ImageConstants.browseBrocolliImage, productName: ' Brocolli', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BrowseList(image: ImageConstants.browseEggImage, productName: ' Brown Egg', logoText: 'Tradly', price: '\$25',  cancelPrice: ''),
  BrowseList(image: ImageConstants.browseFruitImage, productName: ' Fruit Punch', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];