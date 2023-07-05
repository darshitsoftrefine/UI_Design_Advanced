import 'package:tradly/image_constants.dart';

class BeverageList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  BeverageList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<BeverageList> beverageList = [
  BeverageList(image: ImageConstants.beveragesStrawBerryImage, productName: ' Strawberry Punch', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: ImageConstants.beveragesLemonadeImage, productName: ' Lemonade', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BeverageList(image: ImageConstants.beveragesChocolateImage, productName: ' Chocolate', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: ImageConstants.beveragesWhiskyImage, productName: ' Whisky', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
  BeverageList(image: ImageConstants.beveragesChocoBakeryImage, productName: ' Chocolate Bakery', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  BeverageList(image: ImageConstants.beveragesFruitPunchImage, productName: ' Fruit Punch', logoText: 'Tradly', price: '\$25', cancelPrice: ''),

];