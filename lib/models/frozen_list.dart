import 'package:tradly/image_constants.dart';

class FrozenList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  FrozenList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<FrozenList> frozenList = [
  FrozenList(image: ImageConstants.frozenIceCreamImage, productName: ' Ice Cream', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: ImageConstants.frozenMangoImage, productName: ' Manggo Ice', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FrozenList(image: ImageConstants.frozenStrawberryImage, productName: ' Strawberry Ice', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: ImageConstants.frozenMatchaImage, productName: ' Matcha', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FrozenList(image: ImageConstants.frozenGrapeImage, productName: ' Grape Ice Cream', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FrozenList(image: ImageConstants.frozenBottleImage, productName: ' Frozen Bottle', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];