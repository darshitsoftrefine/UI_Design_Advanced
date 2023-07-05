import 'package:tradly/image_constants.dart';

class PetList {
  final String image;
  final String productName;
  final String logoText;
  final String price;
  final String cancelPrice;

  PetList({required this.image, required this.productName, required this.logoText, required this.price, required this.cancelPrice});


}
List<PetList> petList = [
  PetList(image: ImageConstants.petSnackImage, productName: ' Pet Snack', logoText: 'Tradly', price: '\$25', cancelPrice: '\$35'),
  PetList(image: ImageConstants.petPotionImage, productName: ' Potion Pet', logoText: 'Tradly', price: '\$25', cancelPrice: ''),
];