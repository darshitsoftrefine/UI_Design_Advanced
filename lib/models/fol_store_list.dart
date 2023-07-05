import 'dart:ui';

import 'package:tradly/image_constants.dart';
import 'package:tradly/themes/themes.dart';

class FolStoreList {
  final String image;
  final String logoText;
  final String button;
  final String logo;
  final Color color;

  FolStoreList({required this.image, required this.logoText, required this.button, required this.color, required this.logo});


}
List<FolStoreList> folProductList = [
  FolStoreList(image: ImageConstants.storeFollowTradlyStoreImage, logoText: 'Tradly Store', button: 'Follow', color: CustomColors.primaryColor, logo: 'T'),
  FolStoreList(image: ImageConstants.storeFollowGroceriesStoreImage, logoText: 'Groceries Store', button: 'Follow',color: CustomColors.circColor, logo: 'A'),
  FolStoreList(image: ImageConstants.storeFollowTradlyStoreImage,logoText: 'Tradly Store', button: 'Follow', color: CustomColors.primaryColor, logo: 'T'),
];