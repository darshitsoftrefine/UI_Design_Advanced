import 'package:tradly/image_constants.dart';

class EggList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  EggList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<EggList> eggList = [
  EggList(image: ImageConstants.eggBrownImage, productName: ' Brown Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: ImageConstants.eggFreshImage, productName: ' Fresh Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  EggList(image: ImageConstants.eggBundleImage, productName: ' Bundle Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: ImageConstants.eggBlueImage, productName: ' Blue Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  EggList(image: ImageConstants.eggBirdImage, productName: ' Bird Egg', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  EggList(image: ImageConstants.eggImage, productName: ' Egg', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];