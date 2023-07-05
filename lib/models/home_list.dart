import 'package:tradly/image_constants.dart';

class HomeList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  HomeList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<HomeList> homeList = [
  HomeList(image: ImageConstants.homeMoisturizerImage, productName: ' Moisturizer', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: ImageConstants.homeVitaminImage, productName: ' Vitamin Bundle', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  HomeList(image: ImageConstants.homeShowerImage, productName: ' Shower Gel', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: ImageConstants.homeFacialImage, productName: ' Facial Wash', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  HomeList(image: ImageConstants.homeOnneImage, productName: ' Onne', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  HomeList(image: ImageConstants.homeFurImage, productName: ' Fur Moisturizer', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];