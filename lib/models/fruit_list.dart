import 'package:tradly/image_constants.dart';

class FruitList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  FruitList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<FruitList> vegeList = [
  FruitList(image: ImageConstants.fruitAvocadoImage, productName: ' Avocado', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: ImageConstants.fruitBananaImage, productName: ' Banana', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FruitList(image: ImageConstants.fruitOrangeImage, productName: ' Orange', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: ImageConstants.fruitPapayaImage, productName: ' Papaya', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  FruitList(image: ImageConstants.fruitPineappleImage, productName: ' Pineapple', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  FruitList(image: ImageConstants.fruitWatermelonImage, productName: ' Watermelon', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];