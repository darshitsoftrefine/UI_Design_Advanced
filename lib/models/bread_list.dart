import 'package:tradly/image_constants.dart';

class BreadList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  BreadList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<BreadList> browseList = [
  BreadList(image: ImageConstants.breadBreadChocoImage, productName: ' Bread Chocolate', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: ImageConstants.breadCircleBakeryImage, productName: ' Circle Bakery', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BreadList(image: ImageConstants.breadCookiesImage, productName: ' Cookies', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: ImageConstants.breadLongImage, productName: ' Long Bread', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BreadList(image: ImageConstants.breadDonutImage, productName: ' Donut', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BreadList(image: ImageConstants.breadImage, productName: ' Bread', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
];