import 'package:tradly/image_constants.dart';

class VegeList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  VegeList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<VegeList> vegeList = [
  VegeList(image: ImageConstants.vegetablesCarrotImage, productName: ' Carrot', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: ImageConstants.vegetablesCabbageImage, productName: ' Cabbage', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  VegeList(image: ImageConstants.vegetablesTomatoImage, productName: ' Tomato', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: ImageConstants.vegetablesGarlicImage, productName: ' Garlic', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  VegeList(image: ImageConstants.vegetablesTomatoesImage, productName: ' Tomato', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  VegeList(image: ImageConstants.vegetablesCornImage, productName: ' Corn', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];